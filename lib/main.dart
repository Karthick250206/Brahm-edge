import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/intro_screen.dart';
import 'screens/main_wrapper.dart';
import 'services/language_service.dart';
import 'security/providers/security_setup.dart';
import 'security/providers/security_provider.dart';
import 'security/models/security_type.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Language Service
  final languageService = LanguageService();
  await languageService.init();
  
  runApp(
    MultiProvider(
      providers: securityProviders,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BrahmAI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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
    
    if (state == AppLifecycleState.paused) {
      await securityProvider.updateActivity();
    } else if (state == AppLifecycleState.resumed) {
      if (securityProvider.isAuthenticating) return;
      
      if (await securityProvider.shouldLock()) {
        // The provider's state will trigger a rebuild in AuthenticationWrapper
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
      return const Scaffold(backgroundColor: Color(0xFF0B1019));
    }

    return FutureBuilder<List<bool>>(
      future: Future.wait([
        securityProvider.shouldLock(),
        securityProvider.isOnboarded(),
      ]),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Scaffold(backgroundColor: Color(0xFF0B1019));
        }

        final bool shouldLock = snapshot.data![0];
        final bool onboarded = snapshot.data![1];
        
        final bool isLocked = securityProvider.isAppLockEnabled && shouldLock;

        if (isLocked) {
          return LockedScreen(onUnlocked: () {
            // Success in PIN/Biometric already calls updateActivity()
            // which will make shouldLock() false. notifyListeners() in provider
            // will trigger this builder again.
          });
        }

        return onboarded ? const MainWrapper() : const IntroScreen();
      },
    );
  }
}

class LockedScreen extends StatefulWidget {
  final VoidCallback onUnlocked;
  const LockedScreen({super.key, required this.onUnlocked});

  @override
  State<LockedScreen> createState() => _LockedScreenState();
}

class _LockedScreenState extends State<LockedScreen> {
  String _enteredPin = "";
  String _errorMessage = "";

  void _onKeyPress(String value) {
    if (_enteredPin.length < 4) {
      setState(() {
        _enteredPin += value;
        _errorMessage = "";
      });
    }
  }

  void _onDelete() {
    if (_enteredPin.isNotEmpty) {
      setState(() {
        _enteredPin = _enteredPin.substring(0, _enteredPin.length - 1);
      });
    }
  }

  Future<void> _verifyPin() async {
    final securityProvider = context.read<SecurityProvider>();
    final result = await securityProvider.verifyPin(_enteredPin);
    
    if (result.success) {
      widget.onUnlocked();
    } else {
      setState(() {
        _enteredPin = "";
        _errorMessage = result.errorMessage ?? "Incorrect PIN";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final securityProvider = context.watch<SecurityProvider>();
    final type = securityProvider.selectedType;

    if (type != SecurityType.pin && type != SecurityType.password) {
      // Biometric or other non-input view
      const bgColor = Color(0xFF0B1019);
      const accentColor = Color(0xFF00E5FF);

      return Scaffold(
        backgroundColor: bgColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.shield_outlined, size: 64, color: accentColor),
              const SizedBox(height: 24),
              const Text(
                "Vault Security",
                style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                "App is locked",
                style: TextStyle(color: Color(0xFF8B949E), fontSize: 16),
              ),
              const SizedBox(height: 48),
              if (securityProvider.isAuthenticating)
                const CircularProgressIndicator(color: accentColor)
              else
                ElevatedButton(
                  onPressed: () => securityProvider.authenticate().then((result) {
                    if (result.success) widget.onUnlocked();
                  }),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4DB6AC),
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text(
                    "Unlock with Biometrics", 
                    style: TextStyle(color: Color(0xFF0B1019), fontWeight: FontWeight.bold)
                  ),
                ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () {
                  // Fallback logic if any
                },
                child: const Text(
                  "Try another way",
                  style: TextStyle(color: accentColor, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // PIN Unlock UI
    const bgColor = Color(0xFF0B1019);
    const accentColor = Color(0xFF00E5FF);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 100),
                    const Icon(Icons.shield_outlined, color: accentColor, size: 48),
                    const SizedBox(height: 24),
                    const Text(
                      "Enter PIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Please enter your 4-digit code to unlock",
                      style: TextStyle(
                        color: Color(0xFF8B949E),
                        fontSize: 16,
                      ),
                    ),
                    if (_errorMessage.isNotEmpty) ...[
                      const SizedBox(height: 16),
                      Text(
                        _errorMessage,
                        style: const TextStyle(
                          color: Colors.redAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                    const SizedBox(height: 44),
                    // PIN Dots
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(4, (index) {
                        bool filled = index < _enteredPin.length;
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: filled ? accentColor : Colors.transparent,
                            border: Border.all(
                              color: filled ? accentColor : Colors.white.withValues(alpha: 0.2),
                              width: 2,
                            ),
                          ),
                        );
                      }),
                    ),
                    const Spacer(),
                    _buildNumericPad(),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNumericPad() {
    return Column(
      children: [
        _buildRow(["1", "2", "3"]),
        const SizedBox(height: 12),
        _buildRow(["4", "5", "6"]),
        const SizedBox(height: 12),
        _buildRow(["7", "8", "9"]),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(child: _buildKey("delete", isAction: true)),
            const SizedBox(width: 12),
            Expanded(child: _buildKey("0")),
            const SizedBox(width: 12),
            Expanded(child: _buildKey("submit", isAction: true)),
          ],
        ),
      ],
    );
  }

  Widget _buildRow(List<String> keys) {
    return Row(
      children: keys.map((key) => Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: _buildKey(key),
        ),
      )).toList(),
    );
  }

  Widget _buildKey(String key, {bool isAction = false}) {
    const keyColor = Color(0xFF161B22);
    const actionColor = Color(0xFF4DB6AC);

    Widget content;
    if (key == "delete") {
      content = const Icon(Icons.backspace_outlined, color: Color(0xFF0B1019));
    } else if (key == "submit") {
      content = const Icon(Icons.check, color: Color(0xFF0B1019));
    } else {
      content = Text(
        key,
        style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      );
    }

    return GestureDetector(
      onTap: () {
        if (key == "delete") {
          _onDelete();
        } else if (key == "submit") {
          _verifyPin();
        } else {
          _onKeyPress(key);
        }
      },
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: isAction ? actionColor : keyColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: content),
      ),
    );
  }
}
