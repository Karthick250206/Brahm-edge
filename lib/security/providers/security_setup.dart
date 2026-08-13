import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../storage/secure_storage_service.dart';
import '../crypto/crypto_service.dart';
import '../services/biometric_service.dart';
import '../services/pin_service.dart';
import '../services/password_service.dart';
import '../services/session_service.dart';
import '../services/lock_manager.dart';
import '../services/security_service.dart';
import '../repository/security_repository.dart';
import '../repository/security_repository_impl.dart';
import '../../services/storage_management_service.dart';
import '../../providers/theme_provider.dart';
import 'security_provider.dart';

List<SingleChildWidget> securityProviders = [
  ChangeNotifierProvider(create: (_) => ThemeProvider()),
  ChangeNotifierProvider(create: (_) => StorageManagementService()),
  Provider(create: (_) => SecureStorageService()),
  Provider(create: (_) => CryptoService()),
  Provider(create: (_) => BiometricService()),
  ProxyProvider2<SecureStorageService, CryptoService, PinService>(
    update: (_, storage, crypto, _) => PinService(storage, crypto),
  ),
  ProxyProvider2<SecureStorageService, CryptoService, PasswordService>(
    update: (_, storage, crypto, _) => PasswordService(storage, crypto),
  ),
  ProxyProvider<SecureStorageService, SessionService>(
    update: (_, storage, _) => SessionService(storage),
  ),
  ProxyProvider<SecureStorageService, LockManager>(
    update: (_, storage, _) => LockManager(storage),
  ),
  ProxyProvider<SecureStorageService, SecurityRepository>(
    update: (_, storage, _) => SecurityRepositoryImpl(storage),
  ),
  ProxyProvider6<SecurityRepository, BiometricService, PinService, PasswordService, SessionService, LockManager, SecurityService>(
    update: (_, repo, bio, pin, pass, session, lock, _) =>
      SecurityService(repo, bio, pin, pass, session, lock),
  ),
  ChangeNotifierProxyProvider<SecurityService, SecurityProvider>(
    create: (context) => SecurityProvider(context.read<SecurityService>()),
    update: (_, service, provider) => provider ?? SecurityProvider(service),
  ),
];
