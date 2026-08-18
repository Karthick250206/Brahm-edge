import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme/design_system.dart';
import 'screens/welcome_screen.dart';
import 'screens/new_language_selection_screen.dart';
import 'screens/main_wrapper.dart';
import 'services/language_service.dart';
import 'services/llm_inference_service.dart';
import 'providers/theme_provider.dart';
import 'services/storage_management_service.dart';
import 'security/providers/security_setup.dart';
import 'security/providers/security_provider.dart';
import 'security/models/security_type.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Language Service
  final languageService = LanguageService();
  await languageService.init();

  // Initialize LLM Inference Service
  final inferenceService = LlmInferenceService();
  await inferenceService.init();
  
  runApp(
    MultiProvider(
      providers: [
        ...securityProviders,
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => StorageManagementService()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    
    return MaterialApp(
      title: 'ZiqeXAI',
      debugShowCheckedModeBanner: false,
      theme: SystematicIntegrity.lightTheme,
      darkTheme: SystematicIntegrity.darkTheme,
      themeMode: themeProvider.themeMode,
      home: const LifecycleManager(
        child: AuthenticationWrapper(),
      ),
    );
  }
}

class LifecycleManager extends StatefulWidget {
  final Widget child;
  const LifecycleManager({super.key, required this.child});

  @override
  State<LifecycleManager> createState() => _LifecycleManagerState();
}

class _LifecycleManagerState extends State<LifecycleManager> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    final securityProvider = context.read<SecurityProvider>();
    
    if (state == AppLifecycleState.resumed) {
      if (securityProvider.isAuthenticating) return;
      
      // Trigger a check which will cause AuthenticationWrapper to rebuild if needed
      if (await securityProvider.shouldLock()) {
        securityProvider.notifyListeners(); 
      }
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final securityProvider = context.watch<SecurityProvider>();

    if (!securityProvider.isInitialized) {
      return const Scaffold(backgroundColor: Color(0xFFF7FAFF));
    }

    return FutureBuilder<List<bool>>(
      future: Future.wait([
        securityProvider.isFirstLaunch(),
        securityProvider.shouldLock(),
        securityProvider.isOnboarded(),
      ]),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Scaffold(backgroundColor: Color(0xFFF7FAFF));
        }

        final bool isFirstLaunch = snapshot.data![0];
        final bool shouldLock = snapshot.data![1];
        final bool onboarded = snapshot.data![2];
        
        if (isFirstLaunch) {
          return const NewLanguageSelectionScreen();
        }

        final bool isLocked = securityProvider.isAppLockEnabled && shouldLock;

        if (isLocked) {
          return const LockedScreen();
        }

        return onboarded ? const MainWrapper() : const WelcomeScreen();
      },
    );
  }
}

class LockedScreen extends StatefulWidget {
  const LockedScreen({super.key});

  @override
  State<LockedScreen> createState() => _LockedScreenState();
}

class _LockedScreenState extends State<LockedScreen> {
  bool _showPasswordView = false;
  bool _obscurePassword = true;
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = "";

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleResumeSession() async {
    final securityProvider = context.read<SecurityProvider>();
    final result = await securityProvider.authenticate();
    
    if (result.success) {
      // AuthenticationWrapper will rebuild automatically via provider notifyListeners
    } else if (result.errorMessage != null && !result.errorMessage!.contains('cancel')) {
      setState(() {
        _showPasswordView = true;
        _errorMessage = result.errorMessage!;
      });
    }
  }

  Future<void> _unlockWithPassword() async {
    if (_passwordController.text.isEmpty) return;

    final securityProvider = context.read<SecurityProvider>();
    // Note: This validates against existing PIN or Password
    final result = await securityProvider.verifyPin(_passwordController.text);
    
    if (result.success) {
      // Success, AuthenticationWrapper will rebuild
    } else {
      setState(() {
        _errorMessage = result.errorMessage ?? "Incorrect password";
        _passwordController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_showPasswordView) {
      return _buildPasswordView();
    }
    return _buildProtectedView();
  }

  Widget _buildProtectedView() {
    const tealColor = Color(0xFF00444F);
    const lightBgColor = Color(0xFFF7FAFF);

    return Scaffold(
      backgroundColor: lightBgColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF64748B).withOpacity(0.12),
                  blurRadius: 40,
                  offset: const Offset(0, 15),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "ZiqeX",
                  style: GoogleFonts.ibmPlexMono(
                    color: tealColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 12),
                Container(width: 48, height: 3, color: tealColor),
                const SizedBox(height: 40),
                
                // Shield Icon in Square
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE2E8F0).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.shield, color: tealColor, size: 40),
                ),
                const SizedBox(height: 32),
                
                // Session Protected Badge
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE2E8F0).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "SESSION PROTECTED",
                    style: GoogleFonts.ibmPlexMono(
                      color: const Color(0xFF475569),
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                
                Text(
                  "Workspace Locked",
                  style: GoogleFonts.sora(
                    color: const Color(0xFF1E293B),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  "Your session was paused for security. Tap below to securely restore your workspace and pick up where you left off.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: const Color(0xFF64748B),
                    fontSize: 14,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 48),
                
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: _handleResumeSession,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: tealColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      elevation: 0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.fingerprint, size: 24),
                        const SizedBox(width: 12),
                        Text(
                          "Resume Session",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (_errorMessage.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  Text(
                    _errorMessage,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.redAccent, fontSize: 12),
                  ),
                ],
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () => setState(() => _showPasswordView = true),
                  child: Text(
                    "Use Password instead",
                    style: GoogleFonts.inter(
                      color: tealColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordView() {
    const tealColor = Color(0xFF00444F);
    const lightBgColor = Color(0xFFF7FAFF);

    return Scaffold(
      backgroundColor: lightBgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: const Color(0xFFE2E8F0), width: 0.8),
                ),
                child: Text(
                  "ZiqeX",
                  style: GoogleFonts.ibmPlexMono(
                    color: const Color(0xFF475569),
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              
              // Auth Required Badge
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFFE2E8F0).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.lock_outline, size: 14, color: tealColor),
                    const SizedBox(width: 8),
                    Text(
                      "AUTHENTICATION REQUIRED",
                      style: GoogleFonts.ibmPlexMono(
                        color: tealColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 100),
              
              Text(
                "Enter Password",
                style: GoogleFonts.sora(
                  color: const Color(0xFF1E293B),
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "The application was toggled off. Please enter your password to unlock your workspace.",
                style: GoogleFonts.inter(
                  color: const Color(0xFF64748B),
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
              
              const SizedBox(height: 48),
              Text(
                "PASSWORD",
                style: GoogleFonts.ibmPlexMono(
                  color: const Color(0xFF1E293B),
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _passwordController,
                obscureText: _obscurePassword,
                style: GoogleFonts.ibmPlexMono(fontSize: 18, letterSpacing: 2),
                decoration: InputDecoration(
                  hintText: "••••••••••••",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                      color: Colors.grey,
                    ),
                    onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: tealColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(Icons.info_outline, size: 14, color: Color(0xFF64748B)),
                  const SizedBox(width: 8),
                  Text(
                    "Must be at least 8 characters",
                    style: GoogleFonts.inter(
                      color: const Color(0xFF64748B),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              
              if (_errorMessage.isNotEmpty) ...[
                const SizedBox(height: 16),
                Text(
                  _errorMessage,
                  style: const TextStyle(color: Colors.redAccent, fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
              
              const Spacer(),
              
              SizedBox(
                width: double.infinity,
                height: 64,
                child: ElevatedButton(
                  onPressed: _unlockWithPassword,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tealColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Unlock Application",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Icon(Icons.arrow_forward_rounded, size: 22),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
