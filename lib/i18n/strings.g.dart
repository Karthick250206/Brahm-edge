/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 13
/// Strings: 2161 (166 per locale)
///
/// Built on 2026-08-19 at 11:12 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	as(languageCode: 'as', build: _StringsAs.build),
	bn(languageCode: 'bn', build: _StringsBn.build),
	gu(languageCode: 'gu', build: _StringsGu.build),
	hi(languageCode: 'hi', build: _StringsHi.build),
	kn(languageCode: 'kn', build: _StringsKn.build),
	ml(languageCode: 'ml', build: _StringsMl.build),
	mr(languageCode: 'mr', build: _StringsMr.build),
	or(languageCode: 'or', build: _StringsOr.build),
	pa(languageCode: 'pa', build: _StringsPa.build),
	ta(languageCode: 'ta', build: _StringsTa.build),
	te(languageCode: 'te', build: _StringsTe.build),
	ur(languageCode: 'ur', build: _StringsUr.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get hello => 'Hello';
	String get mind_today => 'what\'s on your mind today?';
	String get on_device_only => 'on this device only';
	String get offline => 'offline';
	String get start_something => 'START SOMETHING';
	String get ask_anything => 'Ask anything';
	String get ask_anything_sub => 'health · legal · personal · work';
	String get voice_mode => 'Voice mode';
	String get voice_mode_sub => 'Speak in your language';
	String get ask_image => 'Ask an image';
	String get ask_image_sub => 'Forms, labels, scripts';
	String get panchang => 'Panchang';
	String get panchang_sub => 'today\'s tithi & muhurat';
	String get ephemeral => 'Ephemeral';
	String get ephemeral_sub => 'speak with no trace';
	String get recent => 'RECENT';
	String get home => 'Home';
	String get chat => 'Chat';
	String get library => 'Library';
	String get you => 'You';
	String get settings_pref => 'Profile settings';
	String get preferences => 'PREFERENCES AND SECURITY';
	String get language => 'Language';
	String get security => 'Security';
	String get security_sub => 'App lock · 2FA';
	String get privacy_tiers => 'Privacy mode';
	String get privacy_tiers_sub => '1 active \'ZiqeX listening mode\'';
	String get storage_purge => 'Data and retention';
	String get storage_purge_sub => '184 KB on device';
	String get ephemeral_mode => 'Incognito chat';
	String get about => 'SYSTEM INFO';
	String get reset_prototype => 'Reset prototype';
	String get built_in_india => 'Built in India. For the World.';
	String get library_sub => 'every model · every memory · on this device';
	String get on_this_device => 'ON THIS DEVICE';
	String get active => 'active';
	String get add => '+ add';
	String get storage_used => 'STORAGE USED';
	String get health_question => 'health question';
	String get family => 'family';
	String get work => 'work';
	String get just_thinking => 'just thinking';
	late final _StringsProfileEn profile = _StringsProfileEn._(_root);
	late final _StringsWelcomeEn welcome = _StringsWelcomeEn._(_root);
	late final _StringsInfoEn info = _StringsInfoEn._(_root);
	late final _StringsLanguageSelectionEn languageSelection = _StringsLanguageSelectionEn._(_root);
	late final _StringsPillarsEn pillars = _StringsPillarsEn._(_root);
	late final _StringsModelDownloadEn modelDownload = _StringsModelDownloadEn._(_root);
	late final _StringsLibraryV2En library_v2 = _StringsLibraryV2En._(_root);
	late final _StringsBiometricEn biometric = _StringsBiometricEn._(_root);
	late final _StringsSecurityScreenEn security_screen = _StringsSecurityScreenEn._(_root);
	late final _StringsDataEn data = _StringsDataEn._(_root);
	late final _StringsPinSetupEn pin_setup = _StringsPinSetupEn._(_root);
	late final _StringsPinMgmtEn pin_mgmt = _StringsPinMgmtEn._(_root);
	late final _StringsLangLegacyEn lang_legacy = _StringsLangLegacyEn._(_root);
}

// Path: profile
class _StringsProfileEn {
	_StringsProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get access => 'ACCESS';
	String get privacy => 'PRIVACY';
	String get system => 'SYSTEM';
	String get security_active => 'Security active';
	String get security_inactive => 'Security inactive';
	String get dark_mode => 'Dark Mode';
	String get dark_mode_sub => 'Switch between light and dark workspace themes';
	String get data_mgmt => 'Chat Data management and retention';
	String get data_mgmt_sub => 'Manage your conversation history';
	String get app_lock => 'App lock';
	String get app_lock_sub => 'Protect ZiqeX with your fingerprint, face, or PIN';
	String get incognito_sub => 'Chat without saving to history. Cannot be recovered after exiting the chat';
	String get version => 'V0.1 • SOVEREIGN • ON-DEVICE';
}

// Path: welcome
class _StringsWelcomeEn {
	_StringsWelcomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get meet => 'Meet ZiqeX';
	String get at_edge => 'Intelligence at the edge';
	String get private => 'Private and Edge AI\nby ZenteiQ';
	String get begin => 'BEGIN ONBOARDING';
}

// Path: info
class _StringsInfoEn {
	_StringsInfoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Intelligence designed around you';
	String get subtitle => 'Useful AI with privacy, choice, and control built into the experience.';
	String get privacy_title => 'Privacy first';
	String get privacy_desc => 'ZiqeX is designed to keep intelligence and your information close to your device.';
	String get hand_title => 'Intelligence in your hand';
	String get hand_desc => 'Everyday intelligence, available directly on your device.';
	String get control_title => 'Your data. Your control.';
	String get control_desc => 'Choose what is kept, manage what is stored, and delete what you no longer need.';
	String get place_title => 'Designed for every place';
	String get place_desc => 'Built for different languages, devices, and ways people use technology.';
	String get footer => 'Your intelligence. Your device. Your control.';
	String get setup => 'Set up your ZiqeX';
}

// Path: languageSelection
class _StringsLanguageSelectionEn {
	_StringsLanguageSelectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get appBar => 'Language Selection';
	String get title => 'Choose your language';
	String get subtitle => 'Select the language for your interface.';
	String get back => 'Back';
	String get continueBtn => 'Continue';
}

// Path: pillars
class _StringsPillarsEn {
	_StringsPillarsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get appBar => 'Pillars Selection';
	String get title => 'Select your pillars';
	String get subtitle => 'Choose the core capabilities you want to focus on.';
	String get general => 'General';
	String get operational => 'Operational';
	String get personal => 'Personal Counsel';
	String get workplace => 'Workplace';
	String get culture => 'Culture and Family';
	String get journal => 'Daily Journal';
	String get back => 'Back';
	String get continueBtn => 'Continue';
}

// Path: modelDownload
class _StringsModelDownloadEn {
	_StringsModelDownloadEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title1 => 'Bringing\nBrahmAI ';
	String get title2 => 'home.';
	String get subtitle => 'One-time. After this, we never touch your data again.';
	String get modelName => 'BrahmAI · 2B';
	String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	String get ready => 'Ready';
	String get validating => 'Validating...';
	String get langs => '14 languages';
	String get toks => '~18 tok/s';
	String get ttft => '~140 ms TTFT';
	String error({required Object error}) => 'Error: ${error}';
	String get retry => 'Retry Download';
	String get open => 'Open BrahmAI';
	String get download => 'Download Model';
	String get later => 'Set up later';
	String get continueSub => 'Continue without downloading a model. You can add one when you are ready';
}

// Path: library_v2
class _StringsLibraryV2En {
	_StringsLibraryV2En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get subtitle => 'Manage your AI resources';
	String get language_title => 'Language';
	String get language_desc => 'Choose and manage your preferred languages';
	String get model_title => 'Model';
	String get model_desc => 'Explore and manage available AI models';
	String get saved_title => 'Saved';
	String get saved_desc => 'Your prompt library';
	String get skills_title => 'Skills';
	String get skills_desc => 'AI capabilities';
}

// Path: biometric
class _StringsBiometricEn {
	_StringsBiometricEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get vault => 'Vault Security';
	String get setupTitle => 'Secure Lock Setup';
	String get setupSub => 'Protect your vault with your preferred\nauthentication method.';
	String get deviceTitle => 'Device Biometrics';
	String get deviceSub => 'Use FaceID or Fingerprint';
	String get pinTitle => 'App-Specific PIN';
	String get pinSub => 'Set a unique 4-digit code';
	String get dialogTitle => 'Allow biometric access';
	String get dialogSub => 'Use your fingerprint or device face recognition to unlock ZiqeX';
	String get cancel => 'Cancel';
	String get allow => 'Allow biometrics';
}

// Path: security_screen
class _StringsSecurityScreenEn {
	_StringsSecurityScreenEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get appBar => 'App Security';
	String get global_protection => 'GLOBAL PROTECTION';
	String get app_lock => 'App lock';
	String get app_lock_sub => 'Require authentication to open ZiqeX';
	String get auth_methods => 'AUTHENTICATION METHODS';
	String get biometrics_title => 'Device biometrics';
	String get biometrics_sub => 'Unlock instantly with your fingerprint or face';
	String get pin_title => 'ZiqeX PIN';
	String get pin_active => 'PIN is active';
	String get pin_setup => 'Set a unique 4-digit code to unlock the app';
	String get warning_title => 'Too many incorrect attempts';
	String get warning_sub => 'If an incorrect PIN is entered 10 times, ZiqeX will automatically reset. All data saved on this device will be permanently deleted';
	String get incomplete_title => 'Security Setup Incomplete';
	String get incomplete_content => 'You have enabled App Lock but haven\'t set a PIN or Biometrics. App Lock will be disabled until a method is configured.';
	String get got_it => 'GOT IT';
}

// Path: data
class _StringsDataEn {
	_StringsDataEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get appBar => 'Data Management &\nRetention';
	String get summary => 'STORAGE SUMMARY';
	String get totalUsed => 'Total Used: ';
	String get legendModel => 'Model Weights';
	String get legendFree => 'Free Space';
	String get mgmt => 'MODEL MANAGEMENT';
	String get deleteModels => 'Delete all downloaded models';
	String get deleteModelsSub => 'Completely remove all local model weights and fine-tuned parameters from this device.';
	String get selectDelete => 'SELECT MODELS TO DELETE';
	String get autoDelete => 'Auto-delete chats older than:';
	String get autoDeleteSub => 'This setting applies across all unlinked conversation modes.';
	String get modes => 'MODES';
	String get noData => 'No active chat data';
	String get deleteAll => 'Delete all data';
	String get authReq => 'Requires app lock re-authentication';
	String get viewChats => 'View Chats';
	String get deleteAllPillar => 'Delete all';
	String get space => 'Space:';
	String get activeInstances => 'Active Instances:';
}

// Path: pin_setup
class _StringsPinSetupEn {
	_StringsPinSetupEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title_setup => 'Set 4-Digit PIN';
	String get subtitle_setup => 'Create a secure code to access the app';
	String get title_confirm => 'Confirm PIN';
	String get subtitle_confirm => 'Re-enter your 4-digit code to verify';
	String get title_verify => 'Enter Current PIN';
	String get subtitle_verify => 'Enter your existing code to continue';
	String get error_mismatch => 'PINs do not match. Try again.';
	String get error_incorrect => 'Incorrect PIN. Please try again.';
	String get snack_success => 'PIN set successfully';
}

// Path: pin_mgmt
class _StringsPinMgmtEn {
	_StringsPinMgmtEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get appBar => 'App-Specific PIN';
	String get change_title => 'Change PIN';
	String get change_sub => 'Update your 4-digit ZiqeX security code';
	String get remove_title => 'Remove PIN';
	String get remove_sub => 'Turn off PIN access for ZiqeX';
	String get snack_removed => 'PIN removed successfully';
}

// Path: lang_legacy
class _StringsLangLegacyEn {
	_StringsLangLegacyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title1 => 'Which language\nfeels like ';
	String get title2 => 'home?';
	String get subtitle => 'Voice, text and replies in your mother tongue. Switch anytime.';
	String get first_reply => 'FIRST REPLY WILL SAY';
	String script_info({required Object lang}) => '${lang} - transcribed and spoken in your script';
	String get continueBtn => 'Continue';
}

// Path: <root>
class _StringsAs extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsAs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.as,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <as>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsAs _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'নমস্কাৰ';
	@override String get mind_today => 'আজি আপোনাৰ মনত কি চলি আছে?';
	@override String get on_device_only => 'কেৱল এই ডিভাইচত';
	@override String get offline => 'অফলাইন';
	@override String get start_something => 'কিবা এটা আৰম্ভ কৰক';
	@override String get ask_anything => 'যিকোনো কথা সোধক';
	@override String get ask_anything_sub => 'স্বাস্থ্য · আইনী · ব্যক্তিগত · কাম';
	@override String get voice_mode => 'ভইচ মোড';
	@override String get voice_mode_sub => 'আপোনাৰ ভাষাত কথা কওক';
	@override String get ask_image => 'ছবিৰ জৰিয়তে সোধক';
	@override String get ask_image_sub => 'ফৰ্ম, লেবেল, স্ক্ৰিপ্ট';
	@override String get panchang => 'পঞ্জিকা';
	@override String get panchang_sub => 'আজিৰ তিথি আৰু মুহূৰ্ত';
	@override String get ephemeral => 'অস্থায়ী';
	@override String get ephemeral_sub => 'কোনো চিন নোৰোৱাকৈ কথা পাতক';
	@override String get recent => 'শেহতীয়া';
	@override String get home => 'হোম';
	@override String get chat => 'চাট';
	@override String get library => 'লাইব্ৰেৰী';
	@override String get you => 'আপুনি';
	@override String get settings_pref => 'প্ৰফাইল ছেটিংছ';
	@override String get preferences => 'পচন্দ আৰু সুৰক্ষা';
	@override String get language => 'ভাষা';
	@override String get security => 'সুৰক্ষা';
	@override String get security_sub => 'এপ লক · 2FA';
	@override String get privacy_tiers => 'গোপনীয়তা মোড';
	@override String get privacy_tiers_sub => '১ টা সক্ৰিয় \'ZiqeX শুনাৰ মোড\'';
	@override String get storage_purge => 'তথ্য আৰু ধাৰণ';
	@override String get storage_purge_sub => 'ডিভাইচত ১৮৪ KB';
	@override String get ephemeral_mode => 'গোপন চাট';
	@override String get about => 'ছিষ্টেমৰ তথ্য';
	@override String get reset_prototype => 'প্ৰটোটাইপ ৰিছেট কৰক';
	@override String get built_in_india => 'ভাৰতত নিৰ্মিত। বিশ্বৰ বাবে।';
	@override String get library_sub => 'প্ৰতিটো মডেল · প্ৰতিটো স্মৃতি · এই ডিভাইচত';
	@override String get on_this_device => 'এই ডিভাইচত';
	@override String get active => 'সক্ৰিয়';
	@override String get add => '+ যোগ কৰক';
	@override String get storage_used => 'ব্যৱহৃত ষ্টোৰেজ';
	@override String get health_question => 'স্বাস্থ্য সম্পৰ্কীয় প্ৰশ্ন';
	@override String get family => 'পৰিয়াল';
	@override String get work => 'কাম';
	@override String get just_thinking => 'মাত্ৰ ভাবি আছো';
	@override late final _StringsProfileAs profile = _StringsProfileAs._(_root);
	@override late final _StringsWelcomeAs welcome = _StringsWelcomeAs._(_root);
	@override late final _StringsInfoAs info = _StringsInfoAs._(_root);
	@override late final _StringsLanguageSelectionAs languageSelection = _StringsLanguageSelectionAs._(_root);
	@override late final _StringsPillarsAs pillars = _StringsPillarsAs._(_root);
	@override late final _StringsModelDownloadAs modelDownload = _StringsModelDownloadAs._(_root);
	@override late final _StringsLibraryV2As library_v2 = _StringsLibraryV2As._(_root);
	@override late final _StringsSecurityScreenAs security_screen = _StringsSecurityScreenAs._(_root);
	@override late final _StringsPinSetupAs pin_setup = _StringsPinSetupAs._(_root);
	@override late final _StringsPinMgmtAs pin_mgmt = _StringsPinMgmtAs._(_root);
	@override late final _StringsLangLegacyAs lang_legacy = _StringsLangLegacyAs._(_root);
}

// Path: profile
class _StringsProfileAs extends _StringsProfileEn {
	_StringsProfileAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get access => 'প্রৱেশাধিকাৰ';
	@override String get privacy => 'গোপনীয়তা';
	@override String get system => 'ছিষ্টেম';
	@override String get security_active => 'সুৰক্ষা সক্ৰিয়';
	@override String get security_inactive => 'সুৰক্ষা নিষ্ক্ৰিয়';
	@override String get dark_mode => 'ডাৰ্ক মোড';
	@override String get dark_mode_sub => 'লাইট আৰু ডাৰ্ক থিমৰ মাজত সলনি কৰক';
	@override String get data_mgmt => 'চাট তথ্য ব্যৱস্থাপনা আৰু ধাৰণ';
	@override String get data_mgmt_sub => 'আপোনাৰ বাৰ্তালাপৰ ইতিহাস পৰিচালনা কৰক';
	@override String get app_lock => 'এপ লক';
	@override String get app_lock_sub => 'আপোনাৰ আঙুলিৰ ছাপ, মুখমণ্ডল বা পিনৰ দ্বাৰা ZiqeX সুৰক্ষিত কৰক';
	@override String get incognito_sub => 'ইতিহাসত সংৰক্ষণ নকৰাকৈ চাট কৰক। চাটৰ পৰা ওলাই যোৱাৰ পিছত উদ্ধাৰ কৰিব নোৱাৰি';
	@override String get version => 'V0.1 • সাৰ্বভৌম • অন-ডিভাইচ';
}

// Path: welcome
class _StringsWelcomeAs extends _StringsWelcomeEn {
	_StringsWelcomeAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX ক লগ পাওক';
	@override String get at_edge => 'এজত বুদ্ধিমত্তা (Edge)';
	@override String get private => 'ব্যক্তিগত আৰু এজ এআই\nZenteiQ ৰ দ্বাৰা';
	@override String get begin => 'অনবৰ্ডিং আৰম্ভ কৰক';
}

// Path: info
class _StringsInfoAs extends _StringsInfoEn {
	_StringsInfoAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপোনাৰ চাৰিওফালে ডিজাইন কৰা বুদ্ধিমত্তা';
	@override String get subtitle => 'গোপনীয়তা, পচন্দ আৰু নিয়ন্ত্ৰণৰ সৈতে উপযোগী এআই।';
	@override String get privacy_title => 'গোপনীয়তা প্ৰথম';
	@override String get privacy_desc => 'ZiqeX বুদ্ধিমত্তা আৰু আপোনাৰ তথ্য আপোনাৰ ডিভাইচৰ ওচৰত ৰাখিবলৈ ডিজাইন কৰা হৈছে।';
	@override String get hand_title => 'আপোনাৰ হাতত বুদ্ধিমত্তা';
	@override String get hand_desc => 'দৈনন্দিন বুদ্ধিমত্তা, পোনপটীয়াকৈ আপোনাৰ ডিভাইচত উপলব্ধ।';
	@override String get control_title => 'আপোনাৰ তথ্য। আপোনাৰ নিয়ন্ত্ৰণ।';
	@override String get control_desc => 'কি ৰাখিব লাগে বাছনি কৰক, সংৰক্ষিতখিনি পৰিচালনা কৰক আৰু যাৰ প্ৰয়োজন নাই সেয়া মচি পেলাওক।';
	@override String get place_title => 'প্ৰতিটো ঠাইৰ বাবে ডিজাইন কৰা';
	@override String get place_desc => 'বিভিন্ন ভাষা, ডিভাইচ আৰু মানুহে প্ৰযুক্তি ব্যৱহাৰ কৰাৰ পদ্ধতিৰ বাবে নিৰ্মিত।';
	@override String get footer => 'আপোনাৰ বুদ্ধিমত্তা। আপোনাৰ ডিভাইচ। আপোনাৰ নিয়ন্ত্ৰণ।';
	@override String get setup => 'আপোনাৰ ZiqeX ছেট আপ কৰক';
}

// Path: languageSelection
class _StringsLanguageSelectionAs extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ভাষা বাছনি';
	@override String get title => 'আপোনাৰ ভাষা বাছনি কৰক';
	@override String get subtitle => 'আপোনাৰ ইন্টাৰফেচৰ বাবে ভাষা বাছনি কৰক।';
	@override String get back => 'পিছলৈ';
	@override String get continueBtn => 'আগবাঢ়ক';
}

// Path: pillars
class _StringsPillarsAs extends _StringsPillarsEn {
	_StringsPillarsAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'স্তম্ভ বাছনি';
	@override String get title => 'আপোনাৰ স্তম্ভসমূহ বাছনি কৰক';
	@override String get subtitle => 'আপুনি কোনবোৰ মূল ক্ষমতাত গুৰুত্ব দিব বিচাৰে বাছনি কৰক।';
	@override String get general => 'সাধাৰণ';
	@override String get operational => 'কাৰ্যকৰী';
	@override String get personal => 'ব্যক্তিগত পৰামৰ্শ';
	@override String get workplace => 'কৰ্মক্ষেত্ৰ';
	@override String get culture => 'সংস্কৃতি আৰু পৰিয়াল';
	@override String get journal => 'দৈনিক ডায়েৰী';
	@override String get back => 'পিছলৈ';
	@override String get continueBtn => 'আগবাঢ়ক';
}

// Path: modelDownload
class _StringsModelDownloadAs extends _StringsModelDownloadEn {
	_StringsModelDownloadAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI-ক\nআপোনাৰ ওচৰলৈ ';
	@override String get title2 => 'আনি আছোঁ।';
	@override String get subtitle => 'এককালীন। ইয়াৰ পিছত, আমরা আপোনাৰ তথ্য কেতিয়াও স্পৰ্শ নকৰোঁ।';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'প্ৰস্তুত';
	@override String get validating => 'পৰীক্ষা কৰি থকা হৈছে...';
	@override String get langs => '১৪ টা ভাষা';
	@override String get toks => '~১৮ tok/s';
	@override String get ttft => '~১৪০ ms TTFT';
	@override String error({required Object error}) => 'ত্ৰুটি: ${error}';
	@override String get retry => 'পুনৰ চেষ্টা কৰক';
	@override String get open => 'BrahmAI খোলক';
	@override String get download => 'মডেল ডাউনলোড কৰক';
	@override String get later => 'পাছত ছেটআপ কৰক';
	@override String get continueSub => 'মডেল ডাউনলোড নকৰাকৈ আগবাঢ়ক। আপুনি সাজু হ\'লে এটা যোগ কৰিব পাৰিব';
}

// Path: library_v2
class _StringsLibraryV2As extends _StringsLibraryV2En {
	_StringsLibraryV2As._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'আপোনাৰ AI সম্পদসমূহ পৰিচালনা কৰক';
	@override String get language_title => 'ভাষা';
	@override String get language_desc => 'আপোনাৰ পচন্দের ভাষাসমূহ বাছনি আৰু পৰিচালনা কৰক';
	@override String get model_title => 'মডেল';
	@override String get model_desc => 'উপলব্ধ AI মডেলসমূহ অন্বেষণ আৰু পৰিচালনা কৰক';
	@override String get saved_title => 'সংৰক্ষিত';
	@override String get saved_desc => 'আপোনাৰ প্ৰম্পট লাইব্ৰেৰী';
	@override String get skills_title => 'দক্ষতা';
	@override String get skills_desc => 'AI ক্ষমতা';
}

// Path: security_screen
class _StringsSecurityScreenAs extends _StringsSecurityScreenEn {
	_StringsSecurityScreenAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'এপ সুৰক্ষা';
	@override String get global_protection => 'গোলকীয় সুৰক্ষা';
	@override String get app_lock => 'এপ লক';
	@override String get app_lock_sub => 'ZiqeX খুলিবলৈ প্ৰমাণীকৰণৰ প্ৰয়োজন';
	@override String get auth_methods => 'প্ৰমাণীকৰণ পদ্ধতিসমূহ';
	@override String get biometrics_title => 'ডিভাইচ বায়োমেট্ৰিক্স';
	@override String get biometrics_sub => 'আপোনাৰ ফিংগাৰপ্ৰিন্ট বা মুখৰ সহায়ত তৎক্ষণাত আনলক কৰক';
	@override String get pin_title => 'ZiqeX পিন';
	@override String get pin_active => 'পিন সক্ৰিয় হৈ আছে';
	@override String get pin_setup => 'এপটো আনলক কৰিবলৈ এটা অনন্য ৪-অংকৰ ক\'ড ছেট কৰক';
	@override String get warning_title => 'অত্যধিক ভুল প্ৰচেষ্টা';
	@override String get warning_sub => 'যদি ১০ বাৰ ভুল পিন দিয়া হয়, তেন্তে ZiqeX স্বয়ংক্ৰিয়ভাৱে ৰিছেট হ\'ব। এই ডিভাইচত সংৰক্ষিত সকলো তথ্য স্থায়ীভাৱে মচি পেলোৱা হ\'ব';
	@override String get incomplete_title => 'সুৰক্ষা ছেটআপ অসম্পূৰ্ণ';
	@override String get incomplete_content => 'আপুনি এপ লক সক্ষম কৰিছে কিন্তু পিন বা বায়োমেট্ৰিক্স ছেট কৰা নাই। পদ্ধতি এটা কনফিগৰ নকৰালৈকে এপ লক নিষ্ক্ৰিয় হৈ থাকিব।';
	@override String get got_it => 'বুজিলোঁ';
}

// Path: pin_setup
class _StringsPinSetupAs extends _StringsPinSetupEn {
	_StringsPinSetupAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '৪-অংকৰ পিন ছেট কৰক';
	@override String get subtitle_setup => 'এপটো ব্যৱহাৰ কৰিবলৈ এটা সুৰক্ষিত ক’ড তৈয়াৰ কৰক';
	@override String get title_confirm => 'পিন নিশ্চিত কৰক';
	@override String get subtitle_confirm => 'যাচাই কৰিবলৈ আপোনাৰ ৪-অংকৰ ক’ডটো আকৌ লিখক';
	@override String get title_verify => 'বৰ্তমানৰ পিন লিখক';
	@override String get subtitle_verify => 'আগবাঢ়িবলৈ আপোনাৰ বৰ্তমানৰ ক’ডটো লিখক';
	@override String get error_mismatch => 'পিন দুটা মিল খোৱা নাই। আকৌ চেষ্টা কৰক।';
	@override String get error_incorrect => 'ভুল পিন। অনুগ্ৰহ কৰি আকৌ চেষ্টা কৰক।';
	@override String get snack_success => 'পিন সফলতাৰে ছেট কৰা হ’ল';
}

// Path: pin_mgmt
class _StringsPinMgmtAs extends _StringsPinMgmtEn {
	_StringsPinMgmtAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'এপ-নিৰ্দিষ্ট পিন';
	@override String get change_title => 'পিন সলনি কৰক';
	@override String get change_sub => 'আপোনাৰ ৪-অংকৰ ZiqeX সুৰক্ষা ক’ডটো আপডেট কৰক';
	@override String get remove_title => 'পিন আঁতৰাওক';
	@override String get remove_sub => 'ZiqeX-ৰ বাবে পিন ব্যৱহাৰ বন্ধ কৰক';
	@override String get snack_removed => 'পিন সফলতাৰে আঁতৰোৱা হ’ল';
}

// Path: lang_legacy
class _StringsLangLegacyAs extends _StringsLangLegacyEn {
	_StringsLangLegacyAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'কোনটো ভাষা\n';
	@override String get title2 => 'আপোন যেন লাগে?';
	@override String get subtitle => 'আপোনাৰ মাতৃভাষাত কণ্ঠ, পাঠ আৰু উত্তৰ। যিকোনো সময়তে সলনি কৰক।';
	@override String get first_reply => 'প্ৰথম উত্তৰটো হ’ব';
	@override String script_info({required Object lang}) => '${lang} - আপোনাৰ লিপিত লিখা আৰু কোৱা হ’ব';
	@override String get continueBtn => 'আগবাঢ়ক';
}

// Path: <root>
class _StringsBn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsBn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.bn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <bn>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsBn _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'নমস্কার';
	@override String get mind_today => 'আজ আপনার মনে কি আছে?';
	@override String get on_device_only => 'শুধুমাত্র এই ডিভাইসে';
	@override String get offline => 'অফলাইন';
	@override String get start_something => 'কিছু শুরু করুন';
	@override String get ask_anything => 'যেকোনো কিছু জিজ্ঞাসা করুন';
	@override String get ask_anything_sub => 'স্বাস্থ্য · আইনি · ব্যক্তিগত · কাজ';
	@override String get voice_mode => 'ভয়েস মোড';
	@override String get voice_mode_sub => 'আপনার ভাষায় কথা বলুন';
	@override String get ask_image => 'ছবি জিজ্ঞাসা করুন';
	@override String get ask_image_sub => 'ফর্ম, লেবেল, স্ক্রিপ্ট';
	@override String get panchang => 'পঞ্জিকা';
	@override String get panchang_sub => 'আজকের তিথি ও মুহূর্ত';
	@override String get ephemeral => 'ক্ষণস্থায়ী';
	@override String get ephemeral_sub => 'কোনো চিহ্ন ছাড়াই কথা বলুন';
	@override String get recent => 'সাম্প্রতিক';
	@override String get home => 'হোম';
	@override String get chat => 'চ্যাট';
	@override String get library => 'লাইব্রেরি';
	@override String get you => 'আপনি';
	@override String get settings_pref => 'প্রোফাইল সেটিংস';
	@override String get preferences => 'পছন্দ এবং নিরাপত্তা';
	@override String get language => 'ভাষা';
	@override String get security => 'নিরাপত্তা';
	@override String get security_sub => 'অ্যাপ লক · 2FA';
	@override String get privacy_tiers => 'গোপনীয়তা মোড';
	@override String get privacy_tiers_sub => '১টি সক্রিয় \'ZiqeX শোনার মোড\'';
	@override String get storage_purge => 'ডেটা এবং ধারণ';
	@override String get storage_purge_sub => 'ডিভাইসে ১৮৪ KB';
	@override String get ephemeral_mode => 'ছদ্মবেশী চ্যাট';
	@override String get about => 'সিস্টেম তথ্য';
	@override String get reset_prototype => 'প্রোটোটাইপ রিসেট করুন';
	@override String get built_in_india => 'ভারতে নির্মিত। বিশ্বের জন্য।';
	@override String get library_sub => 'প্রতিটি মডেল · প্রতিটি স্মৃতি · এই ডিভাইসে';
	@override String get on_this_device => 'এই ডিভাইসে';
	@override String get active => 'সক্রিয়';
	@override String get add => '+ যোগ করুন';
	@override String get storage_used => 'ব্যবহৃত স্টোরেজ';
	@override String get health_question => 'স্বাস্থ্যের প্রশ্ন';
	@override String get family => 'পরিবার';
	@override String get work => 'কাজ';
	@override String get just_thinking => 'শুধু ভাবছি';
	@override late final _StringsProfileBn profile = _StringsProfileBn._(_root);
	@override late final _StringsWelcomeBn welcome = _StringsWelcomeBn._(_root);
	@override late final _StringsInfoBn info = _StringsInfoBn._(_root);
	@override late final _StringsLanguageSelectionBn languageSelection = _StringsLanguageSelectionBn._(_root);
	@override late final _StringsPillarsBn pillars = _StringsPillarsBn._(_root);
	@override late final _StringsModelDownloadBn modelDownload = _StringsModelDownloadBn._(_root);
	@override late final _StringsLibraryV2Bn library_v2 = _StringsLibraryV2Bn._(_root);
	@override late final _StringsBiometricBn biometric = _StringsBiometricBn._(_root);
	@override late final _StringsSecurityScreenBn security_screen = _StringsSecurityScreenBn._(_root);
	@override late final _StringsDataBn data = _StringsDataBn._(_root);
	@override late final _StringsPinSetupBn pin_setup = _StringsPinSetupBn._(_root);
	@override late final _StringsPinMgmtBn pin_mgmt = _StringsPinMgmtBn._(_root);
	@override late final _StringsLangLegacyBn lang_legacy = _StringsLangLegacyBn._(_root);
}

// Path: profile
class _StringsProfileBn extends _StringsProfileEn {
	_StringsProfileBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get access => 'অ্যাক্সেস';
	@override String get privacy => 'গোপনীয়তা';
	@override String get system => 'সিস্টেম';
	@override String get security_active => 'নিরাপত্তা সক্রিয়';
	@override String get security_inactive => 'নিরাপত্তা নিষ্ক্রিয়';
	@override String get dark_mode => 'ডার্ক মোড';
	@override String get dark_mode_sub => 'আলো এবং অন্ধকার ওয়ার্কস্পেস থিমের মধ্যে পরিবর্তন করুন';
	@override String get data_mgmt => 'চ্যাট ডেটা ম্যানেজমেন্ট এবং ধারণ';
	@override String get data_mgmt_sub => 'আপনার কথোপকথনের ইতিহাস পরিচালনা করুন';
	@override String get app_lock => 'অ্যাপ লক';
	@override String get app_lock_sub => 'আপনার আঙুলের ছাপ, মুখ বা পিন দিয়ে ZiqeX সুরক্ষিত করুন';
	@override String get incognito_sub => 'ইতিহাসে সংরক্ষণ না করেই চ্যাট করুন। চ্যাট থেকে বের হওয়ার পর পুনরুদ্ধার করা যাবে না';
	@override String get version => 'V0.1 • সার্বভৌম • অন-ডিভাইস';
}

// Path: welcome
class _StringsWelcomeBn extends _StringsWelcomeEn {
	_StringsWelcomeBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX-এর সাথে দেখা করুন';
	@override String get at_edge => 'প্রান্তে বুদ্ধিমত্তা';
	@override String get private => 'ব্যক্তিগত এবং এজ এআই\nZenteiQ দ্বারা';
	@override String get begin => 'অনবোর্ডিং শুরু করুন';
}

// Path: info
class _StringsInfoBn extends _StringsInfoEn {
	_StringsInfoBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার চারপাশে ডিজাইন করা বুদ্ধিমত্তা';
	@override String get subtitle => 'অভিজ্ঞতায় নির্মিত গোপনীয়তা, পছন্দ এবং নিয়ন্ত্রণের সাথে দরকারী এআই।';
	@override String get privacy_title => 'গোপনীয়তা আগে';
	@override String get privacy_desc => 'ZiqeX বুদ্ধিমত্তা এবং আপনার তথ্য আপনার ডিভাইসের কাছে রাখার জন্য ডিজাইন করা হয়েছে।';
	@override String get hand_title => 'আপনার হাতে বুদ্ধিমত্তা';
	@override String get hand_desc => 'প্রতিদিনের বুদ্ধিমত্তা, সরাসরি আপনার ডিভাইসে উপলব্ধ।';
	@override String get control_title => 'আপনার ডেটা। আপনার নিয়ন্ত্রণ।';
	@override String get control_desc => 'কি রাখা হবে তা বেছে নিন, যা সংরক্ষিত আছে তা পরিচালনা করুন এবং যা আপনার আর প্রয়োজন নেই তা মুছে দিন।';
	@override String get place_title => 'প্রতিটি জায়গার জন্য ডিজাইন করা হয়েছে';
	@override String get place_desc => 'বিভিন্ন ভাষা, ডিভাইস এবং লোকেদের প্রযুক্তি ব্যবহারের পদ্ধতির জন্য তৈরি।';
	@override String get footer => 'Your intelligence. Your device. Your control.';
	@override String get setup => 'আপনার ZiqeX সেট আপ করুন';
}

// Path: languageSelection
class _StringsLanguageSelectionBn extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ভাষা নির্বাচন';
	@override String get title => 'আপনার ভাষা চয়ন করুন';
	@override String get subtitle => 'আপনার ইন্টারফেসের জন্য ভাষা নির্বাচন করুন।';
	@override String get back => 'পিছনে';
	@override String get continueBtn => 'চালিয়ে যান';
}

// Path: pillars
class _StringsPillarsBn extends _StringsPillarsEn {
	_StringsPillarsBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'স্তম্ভ নির্বাচন';
	@override String get title => 'আপনার স্তম্ভগুলি নির্বাচন করুন';
	@override String get subtitle => 'আপনি কোন মূল সক্ষমতাগুলিতে ফোকাস করতে চান তা চয়ন করুন।';
	@override String get general => 'সাধারণ';
	@override String get operational => 'কার্যকরী';
	@override String get personal => 'ব্যক্তিগত পরামর্শ';
	@override String get workplace => 'কর্মক্ষেত্র';
	@override String get culture => 'সংস্কৃতি এবং পরিবার';
	@override String get journal => 'দৈনিক ডায়েরি';
	@override String get back => 'পিছনে';
	@override String get continueBtn => 'চালিয়ে যান';
}

// Path: modelDownload
class _StringsModelDownloadBn extends _StringsModelDownloadEn {
	_StringsModelDownloadBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI-কে\nআপনার কাছে ';
	@override String get title2 => 'নিয়ে আসছি।';
	@override String get subtitle => 'এককালীন। এর পরে, আমরা আপনার ডেটা আর কখনও স্পর্শ করব না।';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'প্রস্তুত';
	@override String get validating => 'যাচাই করা হচ্ছে...';
	@override String get langs => '১৪টি ভাষা';
	@override String get toks => '~১৮ tok/s';
	@override String get ttft => '~১৪০ ms TTFT';
	@override String error({required Object error}) => 'ত্রুটি: ${error}';
	@override String get retry => 'আবার চেষ্টা করুন';
	@override String get open => 'BrahmAI খুলুন';
	@override String get download => 'মডেল ডাউনলোড করুন';
	@override String get later => 'পরে সেটআপ করুন';
	@override String get continueSub => 'মডেল ডাউনলোড না করেই এগিয়ে যান। আপনি প্রস্তুত হলে একটি যোগ করতে পারেন';
}

// Path: library_v2
class _StringsLibraryV2Bn extends _StringsLibraryV2En {
	_StringsLibraryV2Bn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'আপনার AI সম্পদগুলি পরিচালনা করুন';
	@override String get language_title => 'ভাষা';
	@override String get language_desc => 'আপনার পছন্দের ভাষাগুলি চয়ন এবং পরিচালনা করুন';
	@override String get model_title => 'মডেল';
	@override String get model_desc => 'উপলব্ধ AI মডেলগুলি অন্বেষণ এবং পরিচালনা করুন';
	@override String get saved_title => 'সংরক্ষিত';
	@override String get saved_desc => 'আপনার প্রম্পট লাইব্রেরি';
	@override String get skills_title => 'দক্ষতা';
	@override String get skills_desc => 'AI ক্ষমতা';
}

// Path: biometric
class _StringsBiometricBn extends _StringsBiometricEn {
	_StringsBiometricBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get vault => 'ভল্ট সুরক্ষা';
	@override String get setupTitle => 'সুরক্ষিত লক সেটআপ';
	@override String get setupSub => 'আপনার পছন্দের প্রমাণীকরণ পদ্ধতির মাধ্যমে আপনার ভল্ট সুরক্ষিত করুন।';
	@override String get deviceTitle => 'ডিভাইস বায়োমেট্রিক্স';
	@override String get deviceSub => 'FaceID বা আঙুলের ছাপ ব্যবহার করুন';
	@override String get pinTitle => 'অ্যাপ-নির্দিষ্ট পিন';
	@override String get pinSub => 'একটি অনন্য ৪-অঙ্কের কোড সেট করুন';
	@override String get dialogTitle => 'বায়োমেট্রিক অ্যাক্সেসের অনুমতি দিন';
	@override String get dialogSub => 'ZiqeX আনলক করতে আপনার আঙুলের ছাপ বা ডিভাইসের মুখ শনাক্তকরণ ব্যবহার করুন';
	@override String get cancel => 'বাতিল করুন';
	@override String get allow => 'বায়োমেট্রিক্সের অনুমতি দিন';
}

// Path: security_screen
class _StringsSecurityScreenBn extends _StringsSecurityScreenEn {
	_StringsSecurityScreenBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'অ্যাপ নিরাপত্তা';
	@override String get global_protection => 'গ্লোবাল সুরক্ষা';
	@override String get app_lock => 'অ্যাপ লক';
	@override String get app_lock_sub => 'ZiqeX খোলার জন্য প্রমাণীকরণ প্রয়োজন';
	@override String get auth_methods => 'প্রমাণীকরণ পদ্ধতি';
	@override String get biometrics_title => 'ডিভাইস বায়োমেট্রিক্স';
	@override String get biometrics_sub => 'আপনার ফিঙ্গারপ্রিন্ট বা মুখ দিয়ে তাৎক্ষণিকভাবে আনলক করুন';
	@override String get pin_title => 'ZiqeX পিন';
	@override String get pin_active => 'পিন সক্রিয় আছে';
	@override String get pin_setup => 'অ্যাপটি আনলক করতে একটি অনন্য ৪-সংখ্যার কোড সেট করুন';
	@override String get warning_title => 'অনেকগুলি ভুল প্রচেষ্টা';
	@override String get warning_sub => 'যদি ১০ বার ভুল পিন দেওয়া হয়, তবে ZiqeX স্বয়ংক্রিয়ভাবে রিসেট হয়ে যাবে। এই ডিভাইসে সংরক্ষিত সমস্ত ডেটা স্থায়ীভাবে মুছে ফেলা হবে';
	@override String get incomplete_title => 'নিরাপত্তা সেটআপ অসম্পূর্ণ';
	@override String get incomplete_content => 'আপনি অ্যাপ লক সক্ষম করেছেন কিন্তু পিন বা বায়োমেট্রিক্স সেট করেননি। কোনো পদ্ধতি কনফিগার না করা পর্যন্ত অ্যাপ লক নিষ্ক্রিয় থাকবে।';
	@override String get got_it => 'বুঝেছি';
}

// Path: data
class _StringsDataBn extends _StringsDataEn {
	_StringsDataBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ডেটা ম্যানেজমেন্ট এবং\nধারণ';
	@override String get summary => 'স্টোরেজ সারাংশ';
	@override String get totalUsed => 'মোট ব্যবহৃত: ';
	@override String get legendModel => 'মডেল ওয়েট';
	@override String get legendFree => 'খালি জায়গা';
	@override String get mgmt => 'মডেল ম্যানেজমেন্ট';
	@override String get deleteModels => 'সব ডাউনলোড করা মডেল মুছে ফেলুন';
	@override String get deleteModelsSub => 'এই ডিভাইস থেকে সমস্ত স্থানীয় মডেল ওয়েট এবং ফাইন-টিউন করা প্যারামিটার সম্পূর্ণরূপে সরিয়ে দিন।';
	@override String get selectDelete => 'মুছে ফেলার জন্য মডেল নির্বাচন করুন';
	@override String get autoDelete => 'এর থেকে পুরানো চ্যাট স্বয়ংক্রিয়ভাবে মুছুন:';
	@override String get autoDeleteSub => 'এই সেটিংটি সমস্ত अनलिঙ্কড কথোপকথন মোডে প্রযোজ্য।';
	@override String get modes => 'মোডসমূহ';
	@override String get noData => 'কোনো সক্রিয় চ্যাট ডেটা নেই';
	@override String get deleteAll => 'সমস্ত ডেটা মুছুন';
	@override String get authReq => 'অ্যাপ লক পুনরায় প্রমাণীকরণ প্রয়োজন';
	@override String get viewChats => 'চ্যাট দেখুন';
	@override String get deleteAllPillar => 'সব মুছুন';
	@override String get space => 'জায়গা:';
	@override String get activeInstances => 'সক্রিয় ইনস্ট্যান্স:';
}

// Path: pin_setup
class _StringsPinSetupBn extends _StringsPinSetupEn {
	_StringsPinSetupBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '৪-সংখ্যার পিন সেট করুন';
	@override String get subtitle_setup => 'অ্যাপটি অ্যাক্সেস করার জন্য একটি সুরক্ষিত কোড তৈরি করুন';
	@override String get title_confirm => 'পিন নিশ্চিত করুন';
	@override String get subtitle_confirm => 'যাচাই করতে আপনার ৪-সংখ্যার কোডটি পুনরায় লিখুন';
	@override String get title_verify => 'বর্তমান পিন লিখুন';
	@override String get subtitle_verify => 'চালিয়ে যেতে আপনার বিদ্যমান কোডটি লিখুন';
	@override String get error_mismatch => 'পিন মেলেনি। আবার চেষ্টা করুন।';
	@override String get error_incorrect => 'ভুল পিন। দয়া করে আবার চেষ্টা করুন।';
	@override String get snack_success => 'পিন সফলভাবে সেট করা হয়েছে';
}

// Path: pin_mgmt
class _StringsPinMgmtBn extends _StringsPinMgmtEn {
	_StringsPinMgmtBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'অ্যাপ-নির্দিষ্ট পিন';
	@override String get change_title => 'পিন পরিবর্তন করুন';
	@override String get change_sub => 'আপনার ৪-সংখ্যার ZiqeX সুরক্ষা কোডটি আপডেট করুন';
	@override String get remove_title => 'পিন সরান';
	@override String get remove_sub => 'ZiqeX-এর জন্য পিন অ্যাক্সেস বন্ধ করুন';
	@override String get snack_removed => 'পিন সফলভাবে সরানো হয়েছে';
}

// Path: lang_legacy
class _StringsLangLegacyBn extends _StringsLangLegacyEn {
	_StringsLangLegacyBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'কোন ভাষাটি\n';
	@override String get title2 => 'নিজের মনে হয়?';
	@override String get subtitle => 'আপনার মাতৃভাষায় ভয়েস, টেক্সট এবং উত্তর। যেকোনো সময় পরিবর্তন করুন।';
	@override String get first_reply => 'প্রথম উত্তরটি হবে';
	@override String script_info({required Object lang}) => '${lang} - আপনার লিপিতে লেখা এবং বলা হবে';
	@override String get continueBtn => 'চালিয়ে যান';
}

// Path: <root>
class _StringsGu extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsGu.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.gu,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <gu>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsGu _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'નમસ્તે';
	@override String get mind_today => 'આજે તમારા મનમાં શું છે?';
	@override String get on_device_only => 'માત્ર આ ઉપકરણ પર';
	@override String get offline => 'ઓફલાઇન';
	@override String get start_something => 'કંઈક શરૂ કરો';
	@override String get ask_anything => 'કંઈપણ પૂછો';
	@override String get ask_anything_sub => 'સ્વાસ્થ્ય · કાનૂની · વ્યક્તિગત · કામ';
	@override String get voice_mode => 'વોઇસ મોડ';
	@override String get voice_mode_sub => 'તમારી ભાષામાં બોલો';
	@override String get ask_image => 'છબી પરથી પૂછો';
	@override String get ask_image_sub => 'ફોર્મ, લેબલ્સ, સ્ક્રિપ્ટો';
	@override String get panchang => 'પંચાંગ';
	@override String get panchang_sub => 'આજની તિથિ અને મુહૂર્ત';
	@override String get ephemeral => 'ક્ષણિક';
	@override String get ephemeral_sub => 'કોઈ નિશાન વગર બોલો';
	@override String get recent => 'તાજેતરનું';
	@override String get home => 'હોમ';
	@override String get chat => 'ચેટ';
	@override String get library => 'લાઇબ્રેરી';
	@override String get you => 'તમે';
	@override String get settings_pref => 'પ્રોફાઇલ સેટિંગ્સ';
	@override String get preferences => 'પસંદગીઓ અને સુરક્ષા';
	@override String get language => 'ભાષા';
	@override String get security => 'સુરક્ષા';
	@override String get security_sub => 'એપ્લિકેશન લોક · 2FA';
	@override String get privacy_tiers => 'ગોપનીયતા મોડ';
	@override String get privacy_tiers_sub => '1 સક્રિય \'ZiqeX લિસનિંગ મોડ\'';
	@override String get storage_purge => 'ડેટા અને રીટેન્શન';
	@override String get storage_purge_sub => 'ઉપકરણ પર 184 KB';
	@override String get ephemeral_mode => 'ઇનકોગ્નિટો ચેટ';
	@override String get about => 'સિસ્ટમ માહિતી';
	@override String get reset_prototype => 'પ્રોટોટાઇપ રીસેટ કરો';
	@override String get built_in_india => 'ભારતમાં નિર્મિત. વિશ્વ માટે.';
	@override String get library_sub => 'દરેક મોડેલ · દરેક મેમરી · આ ઉપકરણ પર';
	@override String get on_this_device => 'આ ઉપકરણ પર';
	@override String get active => 'સક્રિય';
	@override String get add => '+ ઉમેરો';
	@override String get storage_used => 'વપરાયેલ સ્ટોરેજ';
	@override String get health_question => 'સ્વાસ્થ્ય પ્રશ્ન';
	@override String get family => 'પરિવાર';
	@override String get work => 'કામ';
	@override String get just_thinking => 'બસ વિચારી રહ્યો છું';
	@override late final _StringsProfileGu profile = _StringsProfileGu._(_root);
	@override late final _StringsWelcomeGu welcome = _StringsWelcomeGu._(_root);
	@override late final _StringsInfoGu info = _StringsInfoGu._(_root);
	@override late final _StringsLanguageSelectionGu languageSelection = _StringsLanguageSelectionGu._(_root);
	@override late final _StringsPillarsGu pillars = _StringsPillarsGu._(_root);
	@override late final _StringsModelDownloadGu modelDownload = _StringsModelDownloadGu._(_root);
	@override late final _StringsLibraryV2Gu library_v2 = _StringsLibraryV2Gu._(_root);
	@override late final _StringsBiometricGu biometric = _StringsBiometricGu._(_root);
	@override late final _StringsSecurityScreenGu security_screen = _StringsSecurityScreenGu._(_root);
	@override late final _StringsDataGu data = _StringsDataGu._(_root);
	@override late final _StringsPinSetupGu pin_setup = _StringsPinSetupGu._(_root);
	@override late final _StringsPinMgmtGu pin_mgmt = _StringsPinMgmtGu._(_root);
	@override late final _StringsLangLegacyGu lang_legacy = _StringsLangLegacyGu._(_root);
}

// Path: profile
class _StringsProfileGu extends _StringsProfileEn {
	_StringsProfileGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get access => 'ઍક્સેસ';
	@override String get privacy => 'ગોપનીયતા';
	@override String get system => 'સિસ્ટમ';
	@override String get security_active => 'સુરક્ષા સક્રિય';
	@override String get security_inactive => 'સુરક્ષા નિષ્ક્રિય';
	@override String get dark_mode => 'ડાર્ક મોડ';
	@override String get dark_mode_sub => 'લાઇટ અને ડાર્ક વર્કસ્પેસ થીમ વચ્ચે સ્વિચ કરો';
	@override String get data_mgmt => 'ચેટ ડેટા મેનેજમેન્ટ અને રીટેન્શન';
	@override String get data_mgmt_sub => 'તમારા વાર્તાલાપ ઇતિહાસનું સંચાલન કરો';
	@override String get app_lock => 'એપ્લિકેશન લોક';
	@override String get app_lock_sub => 'તમારી ફિંગરપ્રિન્ટ, ચહેરો અથવા પિન વડે ZiqeX ને સુરક્ષિત કરો';
	@override String get incognito_sub => 'ઇતિહાસમાં સાચવ્યા વિના ચેટ કરો. ચેટમાંથી બહાર નીકળ્યા પછી પુનઃપ્રાપ્ત કરી શકાતું નથી';
	@override String get version => 'V0.1 • સાર્વભૌમ • ઓન-ડિવાઇસ';
}

// Path: welcome
class _StringsWelcomeGu extends _StringsWelcomeEn {
	_StringsWelcomeGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX ને મળો';
	@override String get at_edge => 'ધાર પરની બુદ્ધિ (Edge)';
	@override String get private => 'ખાનગી અને એજ એઆઈ\nZenteiQ દ્વારા';
	@override String get begin => 'ઓનબોર્ડિંગ શરૂ કરો';
}

// Path: info
class _StringsInfoGu extends _StringsInfoEn {
	_StringsInfoGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારી આસપાસ રચાયેલ બુદ્ધિ';
	@override String get subtitle => 'અનુભવમાં બિલ્ટ ગોપનીયતા, પસંદગી અને નિયંત્રણ સાથે ઉપયોગી AI.';
	@override String get privacy_title => 'ગોપનીયતા પ્રથમ';
	@override String get privacy_desc => 'ZiqeX ને બુદ્ધિ અને તમારી માહિતી તમારા ઉપકરણની નજીક રાખવા માટે રચાયેલ છે.';
	@override String get hand_title => 'તમારા હાથમાં બુદ્ધિ';
	@override String get hand_desc => 'રોજિંદી બુદ્ધિ, સીધી તમારા ઉપકરણ પર ઉપલબ્ધ.';
	@override String get control_title => 'તમારો ડેટા. તમારું નિયંત્રણ.';
	@override String get control_desc => 'શું રાખવું તે પસંદ કરો, જે સંગ્રહિત છે તેનું સંચાલન કરો અને જેની તમને હવે જરૂર નથી તેને કાઢી નાખો.';
	@override String get place_title => 'દરેક જગ્યા માટે રચાયેલ';
	@override String get place_desc => 'વિવિધ ભાષાઓ, ઉપકરણો અને લોકો ટેકનોલોજીનો ઉપયોગ કરવાની રીતો માટે બનાવવામાં આવેલ.';
	@override String get footer => 'તમારી બુદ્ધિ. તમારું ઉપકરણ. તમારું નિયંત્રણ.';
	@override String get setup => 'તમારનું ZiqeX સેટ અપ કરો';
}

// Path: languageSelection
class _StringsLanguageSelectionGu extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ભાષા પસંદગી';
	@override String get title => 'તમારી ભાષા પસંદ કરો';
	@override String get subtitle => 'તમારા ઇન્ટરફેસ માટે ભાષા પસંદ કરો.';
	@override String get back => 'પાછળ';
	@override String get continueBtn => 'ચાલુ રાખો';
}

// Path: pillars
class _StringsPillarsGu extends _StringsPillarsEn {
	_StringsPillarsGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'પિલર્સ પસંદગી';
	@override String get title => 'તમારા પિલર્સ પસંદ કરો';
	@override String get subtitle => 'તમે જે મુખ્ય ક્ષમતાઓ પર ધ્યાન કેન્દ્રિત કરવા માંગો છો તે પસંદ કરો.';
	@override String get general => 'સામાન્ય';
	@override String get operational => 'ઓપરેશનલ';
	@override String get personal => 'વ્યક્તિગત સલાહ';
	@override String get workplace => 'કાર્યસ્થળ';
	@override String get culture => 'સંસ્કૃતિ અને પરિવાર';
	@override String get journal => 'દૈનિક જર્નલ';
	@override String get back => 'પાછળ';
	@override String get continueBtn => 'ચાલુ રાખો';
}

// Path: modelDownload
class _StringsModelDownloadGu extends _StringsModelDownloadEn {
	_StringsModelDownloadGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI-ને\nતમારી પાસે ';
	@override String get title2 => 'લાવી રહ્યા છીએ.';
	@override String get subtitle => 'એકવાર. આ પછી, અમે તમારા ડેટાને ફરી ક્યારેય સ્પર્શ કરીશું નહીં.';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'તૈયાર';
	@override String get validating => 'ચકાસણી થઈ રહી છે...';
	@override String get langs => '14 ભાષાઓ';
	@override String get toks => '~18 tok/s';
	@override String get ttft => '~140 ms TTFT';
	@override String error({required Object error}) => 'ભૂલ: ${error}';
	@override String get retry => 'ફરી પ્રયાસ કરો';
	@override String get open => 'BrahmAI ખોલો';
	@override String get download => 'મોડલ ડાઉનલોડ કરો';
	@override String get later => 'પછીથી સેટઅપ કરો';
	@override String get continueSub => 'મોડલ ડાઉનલોડ કર્યા વગર આગળ વધો. જ્યારે તમે તૈયાર હોવ ત્યારે તમે એક ઉમેરી શકો છો';
}

// Path: library_v2
class _StringsLibraryV2Gu extends _StringsLibraryV2En {
	_StringsLibraryV2Gu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'તમારા AI સંસાધનોનું સંચાલન કરો';
	@override String get language_title => 'ભાષા';
	@override String get language_desc => 'તમારી પસંદગીની ભાષાઓ પસંદ કરો અને સંચાલિત કરો';
	@override String get model_title => 'મોડલ';
	@override String get model_desc => 'ઉપલબ્ધ AI મોડલ્સ શોધો અને સંચાલિત કરો';
	@override String get saved_title => 'સાચવેલું';
	@override String get saved_desc => 'તમારી પ્રોમ્પ્ટ લાઇબ્રેરી';
	@override String get skills_title => 'કૌશલ્યો';
	@override String get skills_desc => 'AI ક્ષમતાઓ';
}

// Path: biometric
class _StringsBiometricGu extends _StringsBiometricEn {
	_StringsBiometricGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get vault => 'વોલ્ટ સુરક્ષા';
	@override String get setupTitle => 'સુરક્ષિત લોક સેટઅપ';
	@override String get setupSub => 'તમારી પસંદગીની પ્રમાણીકરણ પદ્ધતિ વડે તમારા વોલ્ટને સુરક્ષિત કરો.';
	@override String get deviceTitle => 'ઉપકરણ બાયોમેટ્રિક્સ';
	@override String get deviceSub => 'FaceID અથવા ફિંગરપ્રિન્ટનો ઉપયોગ કરો';
	@override String get pinTitle => 'એપ્લિકેશન-વિશિષ્ટ પિન';
	@override String get pinSub => 'એક અનન્ય 4-અંકનો કોડ સેટ કરો';
	@override String get dialogTitle => 'બાયોમેટ્રિક ઍક્સેસની મંજૂરી આપો';
	@override String get dialogSub => 'ZiqeX ને અનલોક કરવા માટે તમારી ફિંગરપ્રિન્ટ અથવા ઉપકરણ ચહેરાની ઓળખનો ઉપયોગ કરો';
	@override String get cancel => 'રદ કરો';
	@override String get allow => 'બાયોમેટ્રિક્સને મંજૂરી આપો';
}

// Path: security_screen
class _StringsSecurityScreenGu extends _StringsSecurityScreenEn {
	_StringsSecurityScreenGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'એપ સુરક્ષા';
	@override String get global_protection => 'વૈશ્વિક સુરક્ષા';
	@override String get app_lock => 'એપ લોક';
	@override String get app_lock_sub => 'ZiqeX ખોલવા માટે પ્રમાણીકરણ જરૂરી છે';
	@override String get auth_methods => 'પ્રમાણીકરણ પદ્ધતિઓ';
	@override String get biometrics_title => 'ડિવાઇસ બાયોમેટ્રિક્સ';
	@override String get biometrics_sub => 'તમારી ફિંગરપ્રિન્ટ અથવા ચહેરા વડે તરત જ અનલોક કરો';
	@override String get pin_title => 'ZiqeX પિન';
	@override String get pin_active => 'પિન સક્રિય છે';
	@override String get pin_setup => 'એપને અનલોક કરવા માટે એક અનન્ય 4-અંકનો કોડ સેટ કરો';
	@override String get warning_title => 'ખૂબ વધારે ખોટા પ્રયાસો';
	@override String get warning_sub => 'જો ખોટો પિન 10 વાર દાખલ કરવામાં આવે તો, ZiqeX આપમેળે રીસેટ થઈ જશે. આ ડિવાઇસ પર સાચવેલ તમામ ડેટા કાયમી ધોરણે ભૂંસી નાખવામાં આવશે';
	@override String get incomplete_title => 'સુરક્ષા સેટઅપ અપૂર્ણ';
	@override String get incomplete_content => 'તમે એપ લોક સક્ષમ કર્યું છે પરંતુ પિન અથવા બાયોમેટ્રિક્સ સેટ નથી કર્યું. જ્યાં સુધી પદ્ધતિ ગોઠવવામાં ન આવે ત્યાં સુધી એપ લોક અક્ષમ રહેશે.';
	@override String get got_it => 'સમજાઈ ગયું';
}

// Path: data
class _StringsDataGu extends _StringsDataEn {
	_StringsDataGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ડેટા મેનેજમેન્ટ અને\nરીટેન્શન';
	@override String get summary => 'સ્ટોરેજ સારાંશ';
	@override String get totalUsed => 'કુલ વપરાયેલ: ';
	@override String get legendModel => 'મોડેલ વેઇટ્સ';
	@override String get legendFree => 'ખાલી જગ્યા';
	@override String get mgmt => 'મોડેલ મેનેજમેન્ટ';
	@override String get deleteModels => 'ડાઉનલોડ કરેલા બધા મોડેલ કાઢી નાખો';
	@override String get deleteModelsSub => 'આ ઉપકરણમાંથી બધા સ્થાનિક મોડેલ વેઇટ્સ અને પેરામીટર્સ સંપૂર્ણપણે દૂર કરો.';
	@override String get selectDelete => 'કાઢી નાખવા માટે મોડેલ પસંદ કરો';
	@override String get autoDelete => 'આનાથી જૂની ચેટ્સ આપમેળે કાઢી નાખો:';
	@override String get autoDeleteSub => 'આ સેટિંગ તમામ અનલિંક કરેલ વાતચીત મોડ્સ પર લાગુ થાય છે.';
	@override String get modes => 'મોડ્સ';
	@override String get noData => 'કોઈ સક્રિય ચેટ ડેટા નથી';
	@override String get deleteAll => 'બધો ડેટા કાઢી નાખો';
	@override String get authReq => 'એપ્લિકેશન લોક પુનઃ-પ્રમાણીકરણ જરૂરી છે';
	@override String get viewChats => 'ચેટ જુઓ';
	@override String get deleteAllPillar => 'બધું કાઢી નાખો';
	@override String get space => 'જગ્યા:';
	@override String get activeInstances => 'સક્રિય ઇન્સ્ટન્સ:';
}

// Path: pin_setup
class _StringsPinSetupGu extends _StringsPinSetupEn {
	_StringsPinSetupGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '4-અંકનો પિન સેટ કરો';
	@override String get subtitle_setup => 'એપ્લિકેશન એક્સેસ કરવા માટે સુરક્ષિત કોડ બનાવો';
	@override String get title_confirm => 'પિનની પુષ્ટિ કરો';
	@override String get subtitle_confirm => 'ચકાસવા માટે તમારો 4-અંકનો કોડ ફરીથી દાખલ કરો';
	@override String get title_verify => 'વર્તમાન પિન દાખલ કરો';
	@override String get subtitle_verify => 'ચાલુ રાખવા માટે તમારો હાલનો કોડ દાખલ કરો';
	@override String get error_mismatch => 'પિન મેચ થતા નથી. ફરી પ્રયાસ કરો.';
	@override String get error_incorrect => 'ખોટો પિન. મહેરબાની કરીને ફરી પ્રયાસ કરો.';
	@override String get snack_success => 'પિન સફળતાપૂર્વક સેટ થયો';
}

// Path: pin_mgmt
class _StringsPinMgmtGu extends _StringsPinMgmtEn {
	_StringsPinMgmtGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'એપ્લિકેશન-વિશિષ્ટ પિન';
	@override String get change_title => 'પિન બદલો';
	@override String get change_sub => 'તમારો 4-અંકનો ZiqeX સુરક્ષા કોડ અપડેટ કરો';
	@override String get remove_title => 'પિન દૂર કરો';
	@override String get remove_sub => 'ZiqeX માટે પિન એક્સેસ બંધ કરો';
	@override String get snack_removed => 'પિન સફળતાપૂર્વક દૂર કરવામાં આવ્યો';
}

// Path: lang_legacy
class _StringsLangLegacyGu extends _StringsLangLegacyEn {
	_StringsLangLegacyGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'કઈ ભાષા\n';
	@override String get title2 => 'ઘર જેવી લાગે છે?';
	@override String get subtitle => 'તમારી માતૃભાષામાં અવાજ, લખાણ અને જવાબો. ગમે ત્યારે બદલો.';
	@override String get first_reply => 'પહેલો જવાબ આ હશે';
	@override String script_info({required Object lang}) => '${lang} - તમારી લિપિમાં લખાયેલ અને બોલાયેલ';
	@override String get continueBtn => 'ચાલુ રાખો';
}

// Path: <root>
class _StringsHi extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsHi.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.hi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsHi _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'नमस्ते';
	@override String get mind_today => 'आज आपके मन में क्या है?';
	@override String get on_device_only => 'केवल इसी डिवाइस पर';
	@override String get offline => 'ऑफलाइन';
	@override String get start_something => 'कुछ शुरू करें';
	@override String get ask_anything => 'कुछ भी पूछें';
	@override String get ask_anything_sub => 'स्वास्थ्य · कानूनी · व्यक्तिगत · कार्य';
	@override String get voice_mode => 'वॉइस मोड';
	@override String get voice_mode_sub => 'अपनी भाषा में बोलें';
	@override String get ask_image => 'इमेज से पूछें';
	@override String get ask_image_sub => 'फॉर्म, लेबल, स्क्रिप्ट';
	@override String get panchang => 'पंचांग';
	@override String get panchang_sub => 'आज की तिथि और मुहूर्त';
	@override String get ephemeral => 'अल्पकालिक';
	@override String get ephemeral_sub => 'बिना किसी निशान के बोलें';
	@override String get recent => 'हाल ही में';
	@override String get home => 'होम';
	@override String get chat => 'चैट';
	@override String get library => 'लाइब्रेरी';
	@override String get you => 'आप';
	@override String get settings_pref => 'प्रोफ़ाइल सेटिंग्स';
	@override String get preferences => 'प्राथमिकताएं और सुरक्षा';
	@override String get language => 'भाषा';
	@override String get security => 'सुरक्षा';
	@override String get security_sub => 'ऐप लॉक · 2FA';
	@override String get privacy_tiers => 'गोपनीयता मोड';
	@override String get privacy_tiers_sub => '1 सक्रिय \'ZiqeX सुनने का मोड\'';
	@override String get storage_purge => 'डेटा और प्रतिधारण';
	@override String get storage_purge_sub => 'डिवाइस पर 184 KB';
	@override String get ephemeral_mode => 'गुप्त चैट';
	@override String get about => 'सिस्टम जानकारी';
	@override String get reset_prototype => 'प्रोटोटाइप रीसेट करें';
	@override String get built_in_india => 'भारत में निर्मित। दुनिया के लिए।';
	@override String get library_sub => 'हर मॉडल · हर मेमोरी · इस डिवाइस पर';
	@override String get on_this_device => 'इस डिवाइस पर';
	@override String get active => 'सक्रिय';
	@override String get add => '+ जोड़ें';
	@override String get storage_used => 'प्रयुक्त स्टोरेज';
	@override String get health_question => 'स्वास्थ्य प्रश्न';
	@override String get family => 'परिवार';
	@override String get work => 'कार्य';
	@override String get just_thinking => 'बस सोच रहा हूँ';
	@override late final _StringsProfileHi profile = _StringsProfileHi._(_root);
	@override late final _StringsWelcomeHi welcome = _StringsWelcomeHi._(_root);
	@override late final _StringsInfoHi info = _StringsInfoHi._(_root);
	@override late final _StringsLanguageSelectionHi languageSelection = _StringsLanguageSelectionHi._(_root);
	@override late final _StringsPillarsHi pillars = _StringsPillarsHi._(_root);
	@override late final _StringsModelDownloadHi modelDownload = _StringsModelDownloadHi._(_root);
	@override late final _StringsLibraryV2Hi library_v2 = _StringsLibraryV2Hi._(_root);
	@override late final _StringsBiometricHi biometric = _StringsBiometricHi._(_root);
	@override late final _StringsSecurityScreenHi security_screen = _StringsSecurityScreenHi._(_root);
	@override late final _StringsDataHi data = _StringsDataHi._(_root);
	@override late final _StringsPinSetupHi pin_setup = _StringsPinSetupHi._(_root);
	@override late final _StringsPinMgmtHi pin_mgmt = _StringsPinMgmtHi._(_root);
	@override late final _StringsLangLegacyHi lang_legacy = _StringsLangLegacyHi._(_root);
}

// Path: profile
class _StringsProfileHi extends _StringsProfileEn {
	_StringsProfileHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get access => 'पहुंच';
	@override String get privacy => 'गोपनीयता';
	@override String get system => 'सिस्टम';
	@override String get security_active => 'सुरक्षा सक्रिय';
	@override String get security_inactive => 'सुरक्षा निष्क्रिय';
	@override String get dark_mode => 'डार्क मोड';
	@override String get dark_mode_sub => 'लाइट और डार्क वर्कस्पेस थीम के बीच स्विच करें';
	@override String get data_mgmt => 'चैट डेटा प्रबंधन और प्रतिधारण';
	@override String get data_mgmt_sub => 'अपने बातचीत इतिहास को प्रबंधित करें';
	@override String get app_lock => 'ऐप लॉक';
	@override String get app_lock_sub => 'अपने फिंगरप्रिंट, चेहरे या पिन से ZiqeX को सुरक्षित रखें';
	@override String get incognito_sub => 'इतिहास में सहेजे बिना चैट करें। चैट से बाहर निकलने के बाद पुनर्प्राप्त नहीं किया जा सकता';
	@override String get version => 'V0.1 • संप्रभु • ऑन-डिवाइस';
}

// Path: welcome
class _StringsWelcomeHi extends _StringsWelcomeEn {
	_StringsWelcomeHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX से मिलें';
	@override String get at_edge => 'एज पर इंटेलिजेंस';
	@override String get private => 'प्राइवेट और एज एआई\nZenteiQ द्वारा';
	@override String get begin => 'ऑनबोर्डिंग शुरू करें';
}

// Path: info
class _StringsInfoHi extends _StringsInfoEn {
	_StringsInfoHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपके इर्द-गिर्द डिज़ाइन किया गया इंटेलिजेंस';
	@override String get subtitle => 'अनुभव में निर्मित गोपनीयता, विकल्प और नियंत्रण के साथ उपयोगी एआई।';
	@override String get privacy_title => 'गोपनीयता पहले';
	@override String get privacy_desc => 'ZiqeX को इंटेलिजेंस और आपकी जानकारी को आपके डिवाइस के करीब रखने के लिए डिज़ाइन किया गया है।';
	@override String get hand_title => 'आपके हाथ में इंटेलिजेंस';
	@override String get hand_desc => 'रोजमर्रा की इंटेलिजेंस, सीधे आपके डिवाइस पर उपलब्ध।';
	@override String get control_title => 'आपका डेटा। आपका नियंत्रण।';
	@override String get control_desc => 'चुनें कि क्या रखा जाए, जो संग्रहीत है उसे प्रबंधित करें, और जिसे आपको अब आवश्यकता नहीं है उसे हटा दें।';
	@override String get place_title => 'हर जगह के लिए डिज़ाइन किया गया';
	@override String get place_desc => 'विभिन्न भाषाओं, उपकरणों और लोगों द्वारा तकनीक का उपयोग करने के तरीकों के लिए बनाया गया।';
	@override String get footer => 'आपका इंटेलिजेंस। आपका डिवाइस। आपका नियंत्रण।';
	@override String get setup => 'अपना ZiqeX सेटअप करें';
}

// Path: languageSelection
class _StringsLanguageSelectionHi extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'भाषा चयन';
	@override String get title => 'अपनी भाषा चुनें';
	@override String get subtitle => 'अपने इंटरफ़ेस के लिए भाषा चुनें।';
	@override String get back => 'पीछे';
	@override String get continueBtn => 'जारी रखें';
}

// Path: pillars
class _StringsPillarsHi extends _StringsPillarsEn {
	_StringsPillarsHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'पिलर चयन';
	@override String get title => 'अपने पिलर चुनें';
	@override String get subtitle => 'उन मुख्य क्षमताओं को चुनें जिन पर आप ध्यान केंद्रित करना चाहते हैं।';
	@override String get general => 'सामान्य';
	@override String get operational => 'परिचालन';
	@override String get personal => 'व्यक्तिगत परामर्श';
	@override String get workplace => 'कार्यस्थल';
	@override String get culture => 'संस्कृति और परिवार';
	@override String get journal => 'दैनिक डायरी';
	@override String get back => 'पीछे';
	@override String get continueBtn => 'जारी रखें';
}

// Path: modelDownload
class _StringsModelDownloadHi extends _StringsModelDownloadEn {
	_StringsModelDownloadHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'ला रहे हैं\nBrahmAI ';
	@override String get title2 => 'घर।';
	@override String get subtitle => 'एक बार का सेटअप। इसके बाद, हम आपका डेटा फिर कभी नहीं छुएंगे।';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'तैयार';
	@override String get validating => 'पुष्टि हो रही है...';
	@override String get langs => '14 भाषाएं';
	@override String get toks => '~18 tok/s';
	@override String get ttft => '~140 ms TTFT';
	@override String error({required Object error}) => 'त्रुटि: ${error}';
	@override String get retry => 'फिर से प्रयास करें';
	@override String get open => 'BrahmAI खोलें';
	@override String get download => 'मॉडल डाउनलोड करें';
	@override String get later => 'बाद में सेटअप करें';
	@override String get continueSub => 'बिना मॉडल डाउनलोड किए जारी रखें। आप तैयार होने पर इसे जोड़ सकते हैं';
}

// Path: library_v2
class _StringsLibraryV2Hi extends _StringsLibraryV2En {
	_StringsLibraryV2Hi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'अपने एआई संसाधनों को प्रबंधित करें';
	@override String get language_title => 'भाषा';
	@override String get language_desc => 'अपनी पसंदीदा भाषाएं चुनें और प्रबंधित करें';
	@override String get model_title => 'मॉडल';
	@override String get model_desc => 'उपलब्ध एआई मॉडल खोजें और प्रबंधित करें';
	@override String get saved_title => 'सहेजा गया';
	@override String get saved_desc => 'आपकी प्रॉम्प्ट लाइब्रेरी';
	@override String get skills_title => 'कौशल';
	@override String get skills_desc => 'एआई क्षमताएं';
}

// Path: biometric
class _StringsBiometricHi extends _StringsBiometricEn {
	_StringsBiometricHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get vault => 'वॉल्ट सुरक्षा';
	@override String get setupTitle => 'सुरक्षित लॉक सेटअप';
	@override String get setupSub => 'अपनी पसंदीदा प्रमाणीकरण विधि के साथ अपने वॉल्ट को सुरक्षित रखें।';
	@override String get deviceTitle => 'डिवाइस बायोमेट्रिक्स';
	@override String get deviceSub => 'FaceID या फिंगरप्रिंट का उपयोग करें';
	@override String get pinTitle => 'ऐप-विशिष्ट पिन';
	@override String get pinSub => 'एक अनूठा 4-अंकीय कोड सेट करें';
	@override String get dialogTitle => 'बायोमेट्रिक एक्सेस की अनुमति दें';
	@override String get dialogSub => 'ZiqeX को अनलॉक करने के लिए अपने फिंगरप्रिंट या डिवाइस फेस रिकग्निशन का उपयोग करें';
	@override String get cancel => 'रद्द करें';
	@override String get allow => 'बायोमेट्रिक्स की अनुमति दें';
}

// Path: security_screen
class _StringsSecurityScreenHi extends _StringsSecurityScreenEn {
	_StringsSecurityScreenHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ऐप सुरक्षा';
	@override String get global_protection => 'वैश्विक सुरक्षा';
	@override String get app_lock => 'ऐप लॉक';
	@override String get app_lock_sub => 'ZiqeX खोलने के लिए प्रमाणीकरण की आवश्यकता है';
	@override String get auth_methods => 'प्रमाणीकरण विधियाँ';
	@override String get biometrics_title => 'डिवाइस बायोमेट्रिक्स';
	@override String get biometrics_sub => 'अपने फिंगरप्रिंट या चेहरे से तुरंत अनलॉक करें';
	@override String get pin_title => 'ZiqeX पिन';
	@override String get pin_active => 'पिन सक्रिय है';
	@override String get pin_setup => 'ऐप को अनलॉक करने के लिए एक अद्वितीय 4-अंकीय कोड सेट करें';
	@override String get warning_title => 'बहुत अधिक गलत प्रयास';
	@override String get warning_sub => 'यदि 10 बार गलत पिन दर्ज किया जाता है, तो ZiqeX स्वचालित रूप से रीसेट हो जाएगा। इस डिवाइस पर सहेजा गया सभी डेटा स्थायी रूप से हटा दिया जाएगा';
	@override String get incomplete_title => 'सुरक्षा सेटअप अधूरा';
	@override String get incomplete_content => 'आपने ऐप लॉक सक्षम कर दिया है लेकिन पिन या बायोमेट्रिक्स सेट नहीं किया है। ऐप लॉक तब तक अक्षम रहेगा जब तक कि कोई विधि कॉन्फ़िगर नहीं की जाती है।';
	@override String get got_it => 'ठीक है';
}

// Path: data
class _StringsDataHi extends _StringsDataEn {
	_StringsDataHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'डेटा प्रबंधन और\nप्रतिधारण';
	@override String get summary => 'स्टोरेज सारांश';
	@override String get totalUsed => 'कुल उपयोग किया गया: ';
	@override String get legendModel => 'मॉडल वेट';
	@override String get legendFree => 'खाली जगह';
	@override String get mgmt => 'मॉडल प्रबंधन';
	@override String get deleteModels => 'सभी डाउनलोड किए गए मॉडल हटाएं';
	@override String get deleteModelsSub => 'इस डिवाइस से सभी स्थानीय मॉडल वेट और फाइन-ट्यून्ड पैरामीटर पूरी तरह से हटा दें।';
	@override String get selectDelete => 'हटाने के लिए मॉडल चुनें';
	@override String get autoDelete => 'इससे पुराने चैट स्वतः हटाएं:';
	@override String get autoDeleteSub => 'यह सेटिंग सभी अनलिंक्ड बातचीत मोड पर लागू होती है।';
	@override String get modes => 'मोड';
	@override String get noData => 'कोई सक्रिय चैट डेटा नहीं';
	@override String get deleteAll => 'सारा डेटा हटाएं';
	@override String get authReq => 'ऐप लॉक पुन: प्रमाणीकरण की आवश्यकता है';
	@override String get viewChats => 'चैट देखें';
	@override String get deleteAllPillar => 'सभी हटाएं';
	@override String get space => 'जगह:';
	@override String get activeInstances => 'सक्रिय इंस्टेंस:';
}

// Path: pin_setup
class _StringsPinSetupHi extends _StringsPinSetupEn {
	_StringsPinSetupHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '4-अंकों का पिन सेट करें';
	@override String get subtitle_setup => 'ऐप एक्सेस करने के लिए एक सुरक्षित कोड बनाएं';
	@override String get title_confirm => 'पिन की पुष्टि करें';
	@override String get subtitle_confirm => 'सत्यापित करने के लिए अपना 4-अंकों का कोड फिर से दर्ज करें';
	@override String get title_verify => 'वर्तमान पिन दर्ज करें';
	@override String get subtitle_verify => 'जारी रखने के لیے अपना मौजूदा कोड दर्ज करें';
	@override String get error_mismatch => 'पिन मेल नहीं खाते। फिर से कोशिश करें।';
	@override String get error_incorrect => 'गलत पिन। कृपया फिर से कोशिश करें।';
	@override String get snack_success => 'पिन सफलतापूर्वक सेट हो गया';
}

// Path: pin_mgmt
class _StringsPinMgmtHi extends _StringsPinMgmtEn {
	_StringsPinMgmtHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ऐप-विशिष्ट पिन';
	@override String get change_title => 'पिन बदलें';
	@override String get change_sub => 'अपना 4-अंकों का ZiqeX सुरक्षा कोड अपडेट करें';
	@override String get remove_title => 'पिन हटाएं';
	@override String get remove_sub => 'ZiqeX के लिए पिन एक्सेस बंद करें';
	@override String get snack_removed => 'पिन सफलतापूर्वक हटा दिया गया';
}

// Path: lang_legacy
class _StringsLangLegacyHi extends _StringsLangLegacyEn {
	_StringsLangLegacyHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'कौन सी भाषा\n';
	@override String get title2 => 'घर जैसी लगती है?';
	@override String get subtitle => 'अपनी मातृभाषा में वॉयस, टेक्स्ट और जवाब। कभी भी बदलें।';
	@override String get first_reply => 'पहला जवाब यह होगा';
	@override String script_info({required Object lang}) => '${lang} - आपकी लिपि में लिखा और बोला गया';
	@override String get continueBtn => 'जारी रखें';
}

// Path: <root>
class _StringsKn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsKn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.kn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <kn>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsKn _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'ನಮಸ್ಕಾರ';
	@override String get mind_today => 'ಇಂದು ನಿಮ್ಮ ಮನಸ್ಸಿನಲ್ಲಿ ಏನಿದೆ?';
	@override String get on_device_only => 'ಈ ಸಾಧನದಲ್ಲಿ ಮಾತ್ರ';
	@override String get offline => 'ಆಫ್‌ಲೈನ್';
	@override String get start_something => 'ನವೀನತೆಯನ್ನು ಪ್ರಾರಂಭಿಸಿ';
	@override String get ask_anything => 'ಏನನ್ನಾದರೂ ಕೇಳಿ';
	@override String get ask_anything_sub => 'ಆರೋಗ್ಯ · ಕಾನೂನು · ವೈಯಕ್ತಿಕ · ಕೆಲಸ';
	@override String get voice_mode => 'ಧ್ವನಿ ಮೋಡ್';
	@override String get voice_mode_sub => 'ನಿಮ್ಮ ಭಾಷೆಯಲ್ಲಿ ಮಾತನಾಡಿ';
	@override String get ask_image => 'ಚಿತ್ರದ ಮೂಲಕ ಕೇಳಿ';
	@override String get ask_image_sub => 'ಫಾರ್ಮ್‌ಗಳು, ಲೇಬಲ್‌ಗಳು, ಸ್ಕ್ರಿಪ್ಟ್‌ಗಳು';
	@override String get panchang => 'ಪಂಚಾಂಗ';
	@override String get panchang_sub => 'ಇಂದಿನ ತಿಥಿ ಮತ್ತು ಮುಹೂರ್ತ';
	@override String get ephemeral => 'ಕ್ಷಣಿಕ';
	@override String get ephemeral_sub => 'ಯಾವುದೇ ಕುರುಹು ಇಲ್ಲದೆ ಮಾತನಾಡಿ';
	@override String get recent => 'ಇತ್ತೀಚಿನದು';
	@override String get home => 'ಹೋಮ್';
	@override String get chat => 'ಚಾಟ್';
	@override String get library => 'ಲೈಬ್ರರಿ';
	@override String get you => 'ನೀವು';
	@override String get settings_pref => 'ಪ್ರೊಫೈಲ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';
	@override String get preferences => 'ಆದ್ಯತೆಗಳು ಮತ್ತು ಭದ್ರತೆ';
	@override String get language => 'ಭಾಷೆ';
	@override String get security => 'ಭದ್ರತೆ';
	@override String get security_sub => 'ಅಪ್ಲಿಕೇಶನ್ ಲಾಕ್ · 2FA';
	@override String get privacy_tiers => 'ಗೌಪ್ಯತೆ ಮೋಡ್';
	@override String get privacy_tiers_sub => '1 ಸಕ್ರಿಯ \'ZiqeX ಆಲಿಸುವ ಮೋಡ್\'';
	@override String get storage_purge => 'ಡೇಟಾ ಮತ್ತು ಸಂಗ್ರಹಣೆ';
	@override String get storage_purge_sub => 'ಸಾಧನದಲ್ಲಿ 184 KB';
	@override String get ephemeral_mode => 'ಅನಾಮಧೇಯ ಚಾಟ್';
	@override String get about => 'ಸಿಸ್ಟಮ್ ಮಾಹಿತಿ';
	@override String get reset_prototype => 'ಪ್ರೊಟೊಟೈಪ್ ಮರುಹೊಂದಿಸಿ';
	@override String get built_in_india => 'ಭಾರತದಲ್ಲಿ ನಿರ್ಮಿಸಲಾಗಿದೆ. ಜಗತ್ತಿಗಾಗಿ.';
	@override String get library_sub => 'ಪ್ರತಿ ಮಾಡೆಲ್ · ಪ್ರತಿ ನೆನಪು · ಈ ಸಾಧನದಲ್ಲಿ';
	@override String get on_this_device => 'ಈ ಸಾಧನದಲ್ಲಿ';
	@override String get active => 'ಸಕ್ರಿಯ';
	@override String get add => '+ ಸೇರಿಸಿ';
	@override String get storage_used => 'ಬಳಸಿದ ಸಂಗ್ರಹಣೆ';
	@override String get health_question => 'ಆರೋಗ್ಯ ಪ್ರಶ್ನೆ';
	@override String get family => 'ಕುಟುಂಬ';
	@override String get work => 'ಕೆಲಸ';
	@override String get just_thinking => 'ಕೇವಲ ಆಲೋಚನೆ';
	@override late final _StringsProfileKn profile = _StringsProfileKn._(_root);
	@override late final _StringsWelcomeKn welcome = _StringsWelcomeKn._(_root);
	@override late final _StringsInfoKn info = _StringsInfoKn._(_root);
	@override late final _StringsLanguageSelectionKn languageSelection = _StringsLanguageSelectionKn._(_root);
	@override late final _StringsPillarsKn pillars = _StringsPillarsKn._(_root);
	@override late final _StringsModelDownloadKn modelDownload = _StringsModelDownloadKn._(_root);
	@override late final _StringsLibraryV2Kn library_v2 = _StringsLibraryV2Kn._(_root);
	@override late final _StringsBiometricKn biometric = _StringsBiometricKn._(_root);
	@override late final _StringsSecurityScreenKn security_screen = _StringsSecurityScreenKn._(_root);
	@override late final _StringsDataKn data = _StringsDataKn._(_root);
	@override late final _StringsPinSetupKn pin_setup = _StringsPinSetupKn._(_root);
	@override late final _StringsPinMgmtKn pin_mgmt = _StringsPinMgmtKn._(_root);
	@override late final _StringsLangLegacyKn lang_legacy = _StringsLangLegacyKn._(_root);
}

// Path: profile
class _StringsProfileKn extends _StringsProfileEn {
	_StringsProfileKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get access => 'ಪ್ರವೇಶ';
	@override String get privacy => 'ಗೌಪ್ಯತೆ';
	@override String get system => 'ಸಿಸ್ಟಮ್';
	@override String get security_active => 'ಭದ್ರತೆ ಸಕ್ರಿಯವಾಗಿದೆ';
	@override String get security_inactive => 'ಭದ್ರತೆ ನಿಷ್ಕ್ರಿಯವಾಗಿದೆ';
	@override String get dark_mode => 'ಡಾರ್ಕ್ ಮೋಡ್';
	@override String get dark_mode_sub => 'ಲೈಟ್ ಮತ್ತು ಡಾರ್ಕ್ ವರ್ಕ್‌ಸ್ಪೇಸ್ ಥೀಮ್‌ಗಳ ನಡುವೆ ಬದಲಿಸಿ';
	@override String get data_mgmt => 'ಚಾಟ್ ಡೇಟಾ ನಿರ್ವಹಣೆ ಮತ್ತು ಸಂಗ್ರಹಣೆ';
	@override String get data_mgmt_sub => 'ನಿಮ್ಮ ಸಂಭಾಷಣೆ ಇತಿಹಾಸವನ್ನು ನಿರ್ವಹಿಸಿ';
	@override String get app_lock => 'ಅಪ್ಲಿಕೇಶನ್ ಲಾಕ್';
	@override String get app_lock_sub => 'ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್, ಮುಖ ಅಥವಾ ಪಿನ್ ಮೂಲಕ ZiqeX ಅನ್ನು ಸುರಕ್ಷಿತಗೊಳಿಸಿ';
	@override String get incognito_sub => 'ಇತಿಹಾಸದಲ್ಲಿ ಉಳಿಸದೆ ಚಾಟ್ ಮಾಡಿ. ಚಾಟ್‌ನಿಂದ ನಿರ್ಗಮಿಸಿದ ನಂತರ ಮರುಪಡೆಯಲು ಸಾಧ್ಯವಿಲ್ಲ';
	@override String get version => 'V0.1 • ಸಾರ್ವಭೌಮ • ಆನ್-ಡಿವೈಸ್';
}

// Path: welcome
class _StringsWelcomeKn extends _StringsWelcomeEn {
	_StringsWelcomeKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX ಅನ್ನು ಭೇಟಿ ಮಾಡಿ';
	@override String get at_edge => 'ಎಡ್ಜ್‌ನಲ್ಲಿ ಬುದ್ಧಿವಂತಿಕೆ';
	@override String get private => 'ಖಾಸಗಿ ಮತ್ತು ಎಡ್ಜ್ AI\nZenteiQ ಇಂದ';
	@override String get begin => 'ಆನ್‌ಬೋರ್ಡಿಂಗ್ ಪ್ರಾರಂಭಿಸಿ';
}

// Path: info
class _StringsInfoKn extends _StringsInfoEn {
	_StringsInfoKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನಿಮಗಾಗಿ ಬುದ್ಧಿವಂತಿಕೆ';
	@override String get subtitle => 'ಗೌಪ್ಯತೆ ಮತ್ತು ಪೂರ್ಣ ನಿಯಂತ್ರಣದೊಂದಿಗೆ AI ಅನುಭವ.';
	@override String get privacy_title => 'ಗೌಪ್ಯತೆ ಮೊದಲು';
	@override String get privacy_desc => 'ನಿಮ್ಮ ಮಾಹಿತಿ ನಿಮ್ಮ ಸಾಧನದಲ್ಲೇ ಸುರಕ್ಷಿತವಾಗಿರುತ್ತದೆ.';
	@override String get hand_title => 'ಕೈಯಲ್ಲಿ ಬುದ್ಧಿವಂತಿಕೆ';
	@override String get hand_desc => 'ದೈನಂದಿನ ಅಗತ್ಯಗಳಿಗಾಗಿ ಬುದ್ಧಿವಂತಿಕೆ ನಿಮ್ಮ ಸಾಧನದಲ್ಲೇ ಲಭ್ಯ.';
	@override String get control_title => 'ಪೂರ್ಣ ನಿಯಂತ್ರಣ';
	@override String get control_desc => 'ಅಗತ್ಯವಿರುವುದನ್ನು ಇಟ್ಟುಕೊಳ್ಳಿ, ಬೇಡದ್ದನ್ನು ಅಳಿಸಿ.';
	@override String get place_title => 'ಎಲ್ಲರಿಗೂ ವಿನ್ಯಾಸ';
	@override String get place_desc => 'ವಿವಿಧ ಭಾಷೆ ಮತ್ತು ಸಾಧನಗಳಿಗಾಗಿ ನಿರ್ಮಿಸಲಾಗಿದೆ.';
	@override String get footer => 'ನಿಮ್ಮ ಬುದ್ಧಿವಂತಿಕೆ. ನಿಮ್ಮ ಸಾಧನ. ನಿಮ್ಮ ನಿಯಂತ್ರಣ.';
	@override String get setup => 'ಸ್ಥಾಪನೆ';
}

// Path: languageSelection
class _StringsLanguageSelectionKn extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಭಾಷೆಯ ಆಯ್ಕೆ';
	@override String get title => 'ನಿಮ್ಮ ಭಾಷೆಯನ್ನು ಆರಿಸಿ';
	@override String get subtitle => 'ನಿಮ್ಮ ಇಂಟರ್ಫೇಸ್‌ಗಾಗಿ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ.';
	@override String get back => 'ಹಿಂದಕ್ಕೆ';
	@override String get continueBtn => 'ಮುಂದುವರಿಸಿ';
}

// Path: pillars
class _StringsPillarsKn extends _StringsPillarsEn {
	_StringsPillarsKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಪಿಲ್ಲರ್‌ಗಳ ಆಯ್ಕೆ';
	@override String get title => 'ನಿಮ್ಮ ಪಿಲ್ಲರ್‌ಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';
	@override String get subtitle => 'ನೀವು ಗಮನಹರಿಸಲು ಬಯಸುವ ಪ್ರಮುಖ ಸಾಮರ್ಥ್ಯಗಳನ್ನು ಆರಿಸಿ.';
	@override String get general => 'ಸಾಮಾನ್ಯ';
	@override String get operational => 'ಕಾರ್ಯಾಚರಣೆ';
	@override String get personal => 'ವೈಯಕ್ತಿಕ ಸಲಹೆ';
	@override String get workplace => 'ಕೆಲಸದ ಸ್ಥಳ';
	@override String get culture => 'ಸಂಸ್ಕೃತಿ ಮತ್ತು ಕುಟುಂಬ';
	@override String get journal => 'ದೈನಂದಿನ ಜರ್ನಲ್';
	@override String get back => 'ಹಿಂದಕ್ಕೆ';
	@override String get continueBtn => 'ಮುಂದುವರಿಸಿ';
}

// Path: modelDownload
class _StringsModelDownloadKn extends _StringsModelDownloadEn {
	_StringsModelDownloadKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI-ಅನ್ನು\nನಿಮ್ಮ ಹತ್ತಿರಕ್ಕೆ ';
	@override String get title2 => 'ತರುತ್ತಿದ್ದೇವೆ.';
	@override String get subtitle => 'ಒಂದು ಬಾರಿ ಮಾತ್ರ. ಇದರ ನಂತರ, ನಾವು ನಿಮ್ಮ ಡೇಟಾವನ್ನು ಎಂದಿಗೂ ಮುಟ್ಟುವುದಿಲ್ಲ.';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'ಸಿದ್ಧವಾಗಿದೆ';
	@override String get validating => 'ಪರಿಶೀಲಿಸಲಾಗುತ್ತಿದೆ...';
	@override String get langs => '14 ಭಾಷೆಗಳು';
	@override String get toks => '~18 tok/s';
	@override String get ttft => '~140 ms TTFT';
	@override String error({required Object error}) => 'ದೋಷ: ${error}';
	@override String get retry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';
	@override String get open => 'BrahmAI ತೆರೆಯಿರಿ';
	@override String get download => 'ಮಾದರಿಯನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ';
	@override String get later => 'ನಂತರ ಹೊಂದಿಸಿ';
	@override String get continueSub => 'ಮಾದರಿಯನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡದೆಯೇ ಮುಂದುವರಿಯಿರಿ. ನೀವು ಸಿದ್ಧವಾದಾಗ ಒಂದನ್ನು ಸೇರಿಸಬಹುದು';
}

// Path: library_v2
class _StringsLibraryV2Kn extends _StringsLibraryV2En {
	_StringsLibraryV2Kn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'ನಿಮ್ಮ AI ಸಂಪನ್ಮೂಲಗಳನ್ನು ನಿರ್ವಹಿಸಿ';
	@override String get language_title => 'ಭಾಷೆ';
	@override String get language_desc => 'ನಿಮ್ಮ ಆದ್ಯತೆಯ ಭಾಷೆಗಳನ್ನು ಆರಿಸಿ ಮತ್ತು ನಿರ್ವಹಿಸಿ';
	@override String get model_title => 'ಮಾದರಿ (Model)';
	@override String get model_desc => 'ಲಭ್ಯವಿರುವ AI ಮಾದರಿಗಳನ್ನು ಅನ್ವೇಷಿಸಿ ಮತ್ತು ನಿರ್ವಹಿಸಿ';
	@override String get saved_title => 'ಉಳಿಸಲಾಗಿದೆ';
	@override String get saved_desc => 'ನಿಮ್ಮ ಪ್ರಾಂಪ್ಟ್ ಲೈಬ್ರರಿ';
	@override String get skills_title => 'ಕೌಶಲಗಳು';
	@override String get skills_desc => 'AI ಸಾಮರ್ಥ್ಯಗಳು';
}

// Path: biometric
class _StringsBiometricKn extends _StringsBiometricEn {
	_StringsBiometricKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get vault => 'ವೋಲ್ಟ್ ಭದ್ರತೆ';
	@override String get setupTitle => 'ಸುರಕ್ಷಿತ ಲಾಕ್ ಸೆಟಪ್';
	@override String get setupSub => 'ನಿಮ್ಮ ಆದ್ಯತೆಯ ಪ್ರಮಾಣೀಕರಣ ವಿಧಾನದೊಂದಿಗೆ ನಿಮ್ಮ ವೋಲ್ಟ್ ಅನ್ನು ರಕ್ಷಿಸಿ.';
	@override String get deviceTitle => 'ಸಾಧನ ಬಯೋಮೆಟ್ರಿಕ್ಸ್';
	@override String get deviceSub => 'FaceID ಅಥವಾ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಬಳಸಿ';
	@override String get pinTitle => 'ಅಪ್ಲಿಕೇಶನ್-ನಿಶ್ಚಿತ ಪಿನ್';
	@override String get pinSub => 'ವಿಶಿಷ್ಟವಾದ 4-ಅಂಕಿಯ ಕೋಡ್ ಸೆಟ್ ಮಾಡಿ';
	@override String get dialogTitle => 'ಬಯೋಮೆಟ್ರಿಕ್ ಪ್ರವೇಶವನ್ನು ಅನುಮತಿಸಿ';
	@override String get dialogSub => 'ZiqeX ಅನ್‌ಲಾಕ್ ಮಾಡಲು ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಅಥವಾ ಸಾಧನದ ಫೇಸ್ ರೆಕಗ್ನಿಷನ್ ಬಳಸಿ';
	@override String get cancel => 'ರದ್ದುಗೊಳಿಸಿ';
	@override String get allow => 'ಬಯೋಮೆಟ್ರಿಕ್ಸ್ ಅನುಮತಿಸಿ';
}

// Path: security_screen
class _StringsSecurityScreenKn extends _StringsSecurityScreenEn {
	_StringsSecurityScreenKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಆ್ಯಪ್ ಭದ್ರತೆ';
	@override String get global_protection => 'ಜಾಗತಿಕ ರಕ್ಷಣೆ';
	@override String get app_lock => 'ಆ್ಯಪ್ ಲಾಕ್';
	@override String get app_lock_sub => 'ZiqeX ತೆರೆಯಲು ದೃಢೀಕರಣದ ಅಗತ್ಯವಿದೆ';
	@override String get auth_methods => 'ದೃಢೀಕರಣ ವಿಧಾನಗಳು';
	@override String get biometrics_title => 'ಸಾಧನ ಬಯೋಮೆಟ್ರಿಕ್ಸ್';
	@override String get biometrics_sub => 'ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಅಥವಾ ಮುಖದೊಂದಿಗೆ ತಕ್ಷಣವೇ ಅನ್‌ಲಾಕ್ ಮಾಡಿ';
	@override String get pin_title => 'ZiqeX ಪಿನ್';
	@override String get pin_active => 'ಪಿನ್ ಸಕ್ರಿಯವಾಗಿದೆ';
	@override String get pin_setup => 'ಆ್ಯಪ್ ಅನ್‌ಲಾಕ್ ಮಾಡಲು ಅನನ್ಯ 4-ಅಂಕಿಯ ಕೋಡ್ ಸೆಟ್ ಮಾಡಿ';
	@override String get warning_title => 'ಬಹಳಷ್ಟು ತಪ್ಪು ಪ್ರಯತ್ನಗಳು';
	@override String get warning_sub => 'ತಪ್ಪು ಪಿನ್ ಅನ್ನು 10 ಬಾರಿ ನಮೂದಿಸಿದರೆ, ZiqeX ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಮರುಹೊಂದಿಸಲ್ಪಡುತ್ತದೆ. ಈ ಸಾಧನದಲ್ಲಿ ಉಳಿಸಲಾದ ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಶಾಶ್ವತವಾಗಿ ಅಳಿಸಲಾಗುತ್ತದೆ';
	@override String get incomplete_title => 'ಭದ್ರತಾ ಸೆಟಪ್ ಅಪೂರ್ಣವಾಗಿದೆ';
	@override String get incomplete_content => 'ನೀವು ಆ್ಯಪ್ ಲಾಕ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿದ್ದೀರಿ ಆದರೆ ಪಿನ್ ಅಥವಾ ಬಯೋಮೆಟ್ರಿಕ್ಸ್ ಅನ್ನು ಸೆಟ್ ಮಾಡಿಲ್ಲ. ಒಂದು ವಿಧಾನವನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡುವವರೆಗೆ ಆ್ಯಪ್ ಲಾಕ್ ಅನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಲಾಗುತ್ತದೆ.';
	@override String get got_it => 'ಸರಿ';
}

// Path: data
class _StringsDataKn extends _StringsDataEn {
	_StringsDataKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಡೇಟಾ ನಿರ್ವಹಣೆ ಮತ್ತು\nಸಂಗ್ರಹಣೆ';
	@override String get summary => 'ಸಂಗ್ರಹಣೆ ಸಾರಾಂಶ';
	@override String get totalUsed => 'ಒಟ್ಟು ಬಳಸಲಾಗಿದೆ: ';
	@override String get legendModel => 'ಮಾದರಿ ತೂಕಗಳು';
	@override String get legendFree => 'ಖಾಲಿ ಸ್ಥಳ';
	@override String get mgmt => 'ಮಾದರಿ ನಿರ್ವಹಣೆ';
	@override String get deleteModels => 'ದೌನ್‌ಲೋಡ್ ಮಾಡಿದ ಎಲ್ಲಾ ಮಾದರಿಗಳನ್ನು ಅಳಿಸಿ';
	@override String get deleteModelsSub => 'ಈ ಸಾಧನದಿಂದ ಎಲ್ಲಾ ಸ್ಥಳೀಯ ಮಾದರಿ ತೂಕಗಳನ್ನು ಮತ್ತು ನಿಯತಾಂಕಗಳನ್ನು ಸಂಪೂರ್ಣವಾಗಿ ತೆಗೆದುಹಾಕಿ.';
	@override String get selectDelete => 'ಅಳಿಸಲು ಮಾದರಿಗಳನ್ನು ಆಯ್કેಮಾಡಿ';
	@override String get autoDelete => 'ಇದಕ್ಕಿಂತ ಹಳೆಯದಾದ ಚಾಟ್‌ಗಳನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಅಳಿಸಿ:';
	@override String get autoDeleteSub => 'ಈ ಸೆಟ್ಟಿಂಗ್ ಎಲ್ಲಾ ಅನ್‌ಲಿಂಕ್ಡ್ ಸಂಭಾಷಣೆ ಮೋಡ್‌ಗಳಿಗೆ ಅನ್ವಯಿಸುತ್ತದೆ.';
	@override String get modes => 'ಮೋಡ್‌ಗಳು';
	@override String get noData => 'ಯಾವುದೇ ಸಕ್ರಿಯ ಚಾಟ್ ಡೇಟಾ ಇಲ್ಲ';
	@override String get deleteAll => 'ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಅಳಿಸಿ';
	@override String get authReq => 'ಅಪ್ಲಿಕೇಶನ್ ಲಾಕ್ ಮರು-ಪ್ರಮಾಣೀಕರಣ ಅಗತ್ಯವಿದೆ';
	@override String get viewChats => 'ಚಾಟ್‌ಗಳನ್ನು ನೋಡಿ';
	@override String get deleteAllPillar => 'ಎಲ್ಲವನ್ನೂ ಅಳಿಸಿ';
	@override String get space => 'ಸ್ಥಳ:';
	@override String get activeInstances => 'ಸಕ್ರಿಯ ಇನ್‌ಸ್ಟೆನ್ಸ್‌ಗಳು:';
}

// Path: pin_setup
class _StringsPinSetupKn extends _StringsPinSetupEn {
	_StringsPinSetupKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '4-ಅಂಕಿಯ ಪಿನ್ ಹೊಂದಿಸಿ';
	@override String get subtitle_setup => 'ಅಪ್ಲಿಕೇಶನ್ ಪ್ರವೇಶಿಸಲು ಸುರಕ್ಷಿತ ಕೋಡ್ ರಚಿಸಿ';
	@override String get title_confirm => 'ಪಿನ್ ಖಚಿತಪಡಿಸಿ';
	@override String get subtitle_confirm => 'ಪರಿಶೀಲಿಸಲು ನಿಮ್ಮ 4-ಅಂಕಿಯ ಕೋಡ್ ಅನ್ನು ಮರು-ನಮೂದಿಸಿ';
	@override String get title_verify => 'ಪ್ರಸ್ತುತ ಪಿನ್ ನಮೂದಿಸಿ';
	@override String get subtitle_verify => 'ಮುಂದುವರಿಯಲು ನಿಮ್ಮ ಅಸ್ತಿತ್ವದಲ್ಲಿರುವ ಕೋಡ್ ಅನ್ನು ನಮೂದಿಸಿ';
	@override String get error_mismatch => 'ಪಿನ್‌ಗಳು ಹೊಂದಿಕೆಯಾಗುತ್ತಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
	@override String get error_incorrect => 'ತಪ್ಪು ಪಿನ್. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
	@override String get snack_success => 'ಪಿನ್ ಯಶಸ್ವಿಯಾಗಿ ಹೊಂದಿಸಲಾಗಿದೆ';
}

// Path: pin_mgmt
class _StringsPinMgmtKn extends _StringsPinMgmtEn {
	_StringsPinMgmtKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಅಪ್ಲಿಕೇಶನ್-ನಿರ್ದಿಷ್ಟ ಪಿನ್';
	@override String get change_title => 'ಪಿನ್ ಬದಲಾಯಿಸಿ';
	@override String get change_sub => 'ನಿಮ್ಮ 4-ಅಂಕಿಯ ZiqeX ಭದ್ರತಾ ಕೋಡ್ ಅನ್ನು ನವೀಕರಿಸಿ';
	@override String get remove_title => 'ಪಿನ್ ತೆಗೆದುಹಾಕಿ';
	@override String get remove_sub => 'ZiqeX ಗಾಗಿ ಪಿನ್ ಪ್ರವೇಶವನ್ನು ಆಫ್ ಮಾಡಿ';
	@override String get snack_removed => 'ಪಿನ್ ಯಶಸ್ವಿಯಾಗಿ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';
}

// Path: lang_legacy
class _StringsLangLegacyKn extends _StringsLangLegacyEn {
	_StringsLangLegacyKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'ಯಾವ ಭಾಷೆ\n';
	@override String get title2 => 'ತವರು ಎನಿಸುತ್ತದೆ?';
	@override String get subtitle => 'ನಿಮ್ಮ ಮಾತೃಭಾಷೆಯಲ್ಲಿ ಧ್ವನಿ, ಪಠ್ಯ ಮತ್ತು ಉತ್ತರಗಳು. ಯಾವಾಗ ಬೇಕಾದರೂ ಬದಲಾಯಿಸಿ.';
	@override String get first_reply => 'ಮೊದಲ ಉತ್ತರ ಹೀಗಿರುತ್ತದೆ';
	@override String script_info({required Object lang}) => '${lang} - ನಿಮ್ಮ ಲಿಪಿಯಲ್ಲಿ ಲಿಪ್ಯಂತರ ಮತ್ತು ಮಾತನಾಡಲಾಗುತ್ತದೆ';
	@override String get continueBtn => 'ಮುಂದುವರಿಸಿ';
}

// Path: <root>
class _StringsMl extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsMl.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ml,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ml>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsMl _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'നമസ്കാരം';
	@override String get mind_today => 'ഇന്ന് നിങ്ങളുടെ മനസ്സിൽ എന്താണ്?';
	@override String get on_device_only => 'ഈ ഉപകരണത്തിൽ മാത്രം';
	@override String get offline => 'ഓഫ്‌ലൈൻ';
	@override String get start_something => 'പുതിയത് ആരംഭിക്കൂ';
	@override String get ask_anything => 'എന്തും ചോദിക്കാം';
	@override String get ask_anything_sub => 'ആരോഗ്യം · നിയമം · വ്യക്തിഗതം · ജോലി';
	@override String get voice_mode => 'വോയിസ് മോഡ്';
	@override String get voice_mode_sub => 'നിങ്ങളുടെ ഭാഷയിൽ സംസാരിക്കൂ';
	@override String get ask_image => 'ചിത്രത്തെക്കുറിച്ച് ചോദിക്കൂ';
	@override String get ask_image_sub => 'ഫോമുകൾ, ലേബലുകൾ, സ്ക്രിപ്റ്റുകൾ';
	@override String get panchang => 'പഞ്ചാംഗം';
	@override String get panchang_sub => 'ഇന്നത്തെ തിഥിയും മുഹൂർത്തവും';
	@override String get ephemeral => 'എഫെമെറൽ';
	@override String get ephemeral_sub => 'അടയാളങ്ങൾ അവശേഷിപ്പിക്കാതെ സംസാരിക്കൂ';
	@override String get recent => 'സമീപകാലത്തുള്ളവ';
	@override String get home => 'ഹോം';
	@override String get chat => 'ചാറ്റ്';
	@override String get library => 'ലൈബ്രറി';
	@override String get you => 'നിങ്ങൾ';
	@override String get settings_pref => 'പ്രൊഫൈൽ ക്രമീകരണങ്ങൾ';
	@override String get preferences => 'മുൻഗണനകളും സുരക്ഷയും';
	@override String get language => 'ഭാഷ';
	@override String get security => 'സുരക്ഷ';
	@override String get security_sub => 'ആപ്പ് ലോക്ക് · 2FA';
	@override String get privacy_tiers => 'സ്വകാര്യത മോഡ്';
	@override String get privacy_tiers_sub => '1 സജീവമായ \'ZiqeX ലിസണിംഗ് മോഡ്\'';
	@override String get storage_purge => 'ഡാറ്റയും ശേഖരണവും';
	@override String get storage_purge_sub => 'ഉപകരണത്തിൽ 184 KB';
	@override String get ephemeral_mode => 'ഇൻകോഗ്നിറ്റോ ചാറ്റ്';
	@override String get about => 'സിസ്റ്റം വിവരങ്ങൾ';
	@override String get reset_prototype => 'പ്രോട്ടോടൈപ്പ് റീസെറ്റ് ചെയ്യുക';
	@override String get built_in_india => 'ഭാരതത്തിൽ നിർമ്മിച്ചത്. ലോകത്തിനായി.';
	@override String get library_sub => 'എല്ലാ മോഡലും · എല്ലാ ഓർമ്മയും · ഈ ഉപകരണത്തിൽ';
	@override String get on_this_device => 'ഈ ഉപകരണത്തിൽ';
	@override String get active => 'സജീവം';
	@override String get add => '+ ചേർക്കുക';
	@override String get storage_used => 'ഉപയോഗിച്ച സ്റ്റോറേജ്';
	@override String get health_question => 'ആരോഗ്യ സംബന്ധമായ ചോദ്യം';
	@override String get family => 'കുടുംബം';
	@override String get work => 'ജോലി';
	@override String get just_thinking => 'ആലോചിക്കുന്നു';
	@override late final _StringsProfileMl profile = _StringsProfileMl._(_root);
	@override late final _StringsWelcomeMl welcome = _StringsWelcomeMl._(_root);
	@override late final _StringsInfoMl info = _StringsInfoMl._(_root);
	@override late final _StringsLanguageSelectionMl languageSelection = _StringsLanguageSelectionMl._(_root);
	@override late final _StringsPillarsMl pillars = _StringsPillarsMl._(_root);
	@override late final _StringsModelDownloadMl modelDownload = _StringsModelDownloadMl._(_root);
	@override late final _StringsLibraryV2Ml library_v2 = _StringsLibraryV2Ml._(_root);
	@override late final _StringsBiometricMl biometric = _StringsBiometricMl._(_root);
	@override late final _StringsSecurityScreenMl security_screen = _StringsSecurityScreenMl._(_root);
	@override late final _StringsDataMl data = _StringsDataMl._(_root);
	@override late final _StringsPinSetupMl pin_setup = _StringsPinSetupMl._(_root);
	@override late final _StringsPinMgmtMl pin_mgmt = _StringsPinMgmtMl._(_root);
	@override late final _StringsLangLegacyMl lang_legacy = _StringsLangLegacyMl._(_root);
}

// Path: profile
class _StringsProfileMl extends _StringsProfileEn {
	_StringsProfileMl._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get access => 'പ്രവേശനം';
	@override String get privacy => 'സ്വകാര്യത';
	@override String get system => 'സിസ്റ്റം';
	@override String get security_active => 'സുരക്ഷ സജീവമാണ്';
	@override String get security_inactive => 'സുരക്ഷ നിർജ്ജീവമാണ്';
	@override String get dark_mode => 'ഡാർക്ക് മോഡ്';
	@override String get dark_mode_sub => 'ലൈറ്റ്, ഡാർക്ക് തീമുകൾക്കിടയിൽ മാറാം';
	@override String get data_mgmt => 'ചാറ്റ് ഡാറ്റാ മാനേജ്‌മെന്റും ശേഖരണവും';
	@override String get data_mgmt_sub => 'നിങ്ങളുടെ സംഭാഷണ ചരിത്രം നിയന്ത്രിക്കാം';
	@override String get app_lock => 'ആപ്പ് ലോക്ക്';
	@override String get app_lock_sub => 'വിരലടയാളം, മുഖം അല്ലെങ്കിൽ പിൻ ഉപയോഗിച്ച് ZiqeX സുരക്ഷിതമാക്കാം';
	@override String get incognito_sub => 'ചരിത്രത്തിൽ സേവ് ചെയ്യാതെ ചാറ്റ് ചെയ്യാം. ചാറ്റിൽ നിന്ന് പുറത്തുകടന്നാൽ വീണ്ടെടുക്കാനാവില്ല';
	@override String get version => 'V0.1 • പരമാധികാരം • ഉപകരണത്തിൽ';
}

// Path: welcome
class _StringsWelcomeMl extends _StringsWelcomeEn {
	_StringsWelcomeMl._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX-നെ അറിയൂ';
	@override String get at_edge => 'എഡ്ജിലെ ബുദ്ധിശക്തി';
	@override String get private => 'സ്വകാര്യ എഡ്ജ് AI\nZenteiQ നൽകുന്നത്';
	@override String get begin => 'തുടങ്ങാം';
}

// Path: info
class _StringsInfoMl extends _StringsInfoEn {
	_StringsInfoMl._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get title => 'നിങ്ങൾക്കായുള്ള ബുദ്ധിശക്തി';
	@override String get subtitle => 'സ്വകാര്യതയും പൂർണ്ണ നിയന്ത്രണവുമുള്ള AI അനുഭവം.';
	@override String get privacy_title => 'സ്വകാര്യത ആദ്യം';
	@override String get privacy_desc => 'വിവരങ്ങൾ നിങ്ങളുടെ ഉപകരണത്തിൽ തന്നെ സുരക്ഷിതമായിരിക്കും.';
	@override String get hand_title => 'കൈക്കുള്ളിൽ ബുദ്ധിശക്തി';
	@override String get hand_desc => 'ദൈനംദിന കാര്യങ്ങൾക്കുള്ള ബുദ്ധിശക്തി നിങ്ങളുടെ ഉപകരണത്തിൽ ലഭ്യം.';
	@override String get control_title => 'പൂർണ്ണ നിയന്ത്രണം';
	@override String get control_desc => 'ആവശ്യമുള്ളവ മാത്രം സൂക്ഷിക്കാം, മറ്റുള്ളവ നീക്കം ചെയ്യാം.';
	@override String get place_title => 'എല്ലാവർക്കും അനുയോജ്യം';
	@override String get place_desc => 'വിവിധ ഭാഷകൾക്കും ഉപകരണങ്ങൾക്കുമായി തയ്യാറാക്കിയത്.';
	@override String get footer => 'നിങ്ങളുടെ ബുദ്ധിശക്തി. നിങ്ങളുടെ ഉപകരണം. നിങ്ങളുടെ നിയന്ത്രണം.';
	@override String get setup => 'സജ്ജമാക്കാം';
}

// Path: languageSelection
class _StringsLanguageSelectionMl extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionMl._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ഭാഷാ തിരഞ്ഞെടുപ്പ്';
	@override String get title => 'നിങ്ങളുടെ ഭാഷ തിരഞ്ഞെടുക്കുക';
	@override String get subtitle => 'നിങ്ങളുടെ ഇന്റർഫേസിനായി ഭാഷ തിരഞ്ഞെടുക്കുക.';
	@override String get back => 'പിന്നിലേക്ക്';
	@override String get continueBtn => 'തുടരുക';
}

// Path: pillars
class _StringsPillarsMl extends _StringsPillarsEn {
	_StringsPillarsMl._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'പില്ലർ തിരഞ്ഞെടുപ്പ്';
	@override String get title => 'നിങ്ങളുടെ പില്ലറുകൾ തിരഞ്ഞെടുക്കുക';
	@override String get subtitle => 'നിങ്ങൾ ശ്രദ്ധ കേന്ദ്രീകരിക്കാൻ ആഗ്രഹിക്കുന്ന പ്രധാന കാര്യങ്ങൾ തിരഞ്ഞെടുക്കുക.';
	@override String get general => 'പൊതുവായത്';
	@override String get operational => 'പ്രവർത്തനക്ഷമം';
	@override String get personal => 'ব্যക്തിഗത ഉപദേശം';
	@override String get workplace => 'തൊഴിലിടം';
	@override String get culture => 'സംസ്കാരവും കുടുംബവും';
	@override String get journal => 'ദിനചര്യ കുറിപ്പുകൾ';
	@override String get back => 'പിന്നിലേക്ക്';
	@override String get continueBtn => 'തുടരുക';
}

// Path: modelDownload
class _StringsModelDownloadMl extends _StringsModelDownloadEn {
	_StringsModelDownloadMl._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI-യെ\nനിങ്ങളുടെ അടുത്തേക്ക് ';
	@override String get title2 => 'കൊണ്ടുവരുന്നു.';
	@override String get subtitle => 'ഒറ്റത്തവണ മാത്രം. ഇതിനുശേഷം, ഞങ്ങൾ നിങ്ങളുടെ ഡാറ്റ ഒരിക്കലും സ്പർശിക്കില്ല.';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'തയ്യാറാണ്';
	@override String get validating => 'പരിശോധിക്കുന്നു...';
	@override String get langs => '14 ഭാഷകൾ';
	@override String get toks => '~18 tok/s';
	@override String get ttft => '~140 ms TTFT';
	@override String error({required Object error}) => 'പിശക്: ${error}';
	@override String get retry => 'വീണ്ടും ശ്രമിക്കുക';
	@override String get open => 'തുറക്കാം';
	@override String get download => 'ഡൗൺലോഡ്';
	@override String get later => 'പിന്നീട് സജ്ജമാക്കുക';
	@override String get continueSub => 'മോഡൽ ഡൗൺലോഡ് ചെയ്യാതെ തുടരുക. നിങ്ങൾ തയ്യാറാകുമ്പോൾ ഒരെണ്ണം ചേർക്കാം';
}

// Path: library_v2
class _StringsLibraryV2Ml extends _StringsLibraryV2En {
	_StringsLibraryV2Ml._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'നിങ്ങളുടെ AI വിഭവങ്ങൾ മാനേജ് ചെയ്യുക';
	@override String get language_title => 'ഭാഷ';
	@override String get language_desc => 'നിങ്ങളുടെ ഭാഷകൾ നിയന്ത്രിക്കുക';
	@override String get model_title => 'മോഡൽ';
	@override String get model_desc => 'AI മോഡലുകൾ മാനേജ് ചെയ്യുക';
	@override String get saved_title => 'സേവ് ചെയ്തവ';
	@override String get saved_desc => 'നിങ്ങളുടെ പ്രോംപ്റ്റ് ലൈബ്രറി';
	@override String get skills_title => 'നൈപുണ്യങ്ങൾ';
	@override String get skills_desc => 'AI കഴിവുകൾ';
}

// Path: biometric
class _StringsBiometricMl extends _StringsBiometricEn {
	_StringsBiometricMl._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get vault => 'വോൾട്ട് സുരക്ഷ';
	@override String get setupTitle => 'സുരക്ഷിത ലോക്ക് സജ്ജീകരണം';
	@override String get setupSub => 'നിങ്ങളുടെ പ്രിയപ്പെട്ട രീതി ഉപയോഗിച്ച് നിങ്ങളുടെ വോൾട്ട് സുരക്ഷിതമാക്കുക.';
	@override String get deviceTitle => 'ബയോമെട്രിക്സ്';
	@override String get deviceSub => 'വിരലടയാളം ഉപയോഗിക്കുക';
	@override String get pinTitle => 'പിൻ കോഡ്';
	@override String get pinSub => '4 അക്ക പിൻ സജ്ജമാക്കുക';
	@override String get dialogTitle => 'അനുമതി നൽകുക';
	@override String get dialogSub => 'ZiqeX തുറക്കാൻ വിരലടയാളം ഉപയോഗിക്കുക';
	@override String get cancel => 'റദ്ദാക്കുക';
	@override String get allow => 'അനുവദിക്കുക';
}

// Path: security_screen
class _StringsSecurityScreenMl extends _StringsSecurityScreenEn {
	_StringsSecurityScreenMl._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ആപ്പ് സെക്യൂരിറ്റി';
	@override String get global_protection => 'ഗ്ലോബൽ പ്രൊട്ടക്ഷൻ';
	@override String get app_lock => 'ആപ്പ് ലോക്ക്';
	@override String get app_lock_sub => 'ZiqeX തുറക്കാൻ ഓതന്റിക്കേഷൻ ആവശ്യമാണ്';
	@override String get auth_methods => 'ഓതന്റിക്കേഷൻ രീതികൾ';
	@override String get biometrics_title => 'ഡിവൈസ് ബയോമെട്രിക്സ്';
	@override String get biometrics_sub => 'നിങ്ങളുടെ ഫിംഗർപ്രിന്റ് അല്ലെങ്കിൽ മുഖം ഉപയോഗിച്ച് തൽക്ഷണം അൺലോക്ക് ചെയ്യുക';
	@override String get pin_title => 'ZiqeX പിൻ';
	@override String get pin_active => 'പിൻ സജീവമാണ്';
	@override String get pin_setup => 'ആപ്പ് അൺലോക്ക് ചെയ്യാൻ 4 അക്കങ്ങളുള്ള ഒരു തനതായ കോഡ് സജ്ജമാക്കുക';
	@override String get warning_title => 'തെറ്റായ ശ്രമങ്ങൾ പരിധി കവിഞ്ഞു';
	@override String get warning_sub => 'തെറ്റായ പിൻ 10 തവണ നൽകിയാൽ, ZiqeX സ്വയമേവ റീസെറ്റ് ചെയ്യപ്പെടും. ഈ ഉപകരണത്തിൽ സംരക്ഷിച്ചിട്ടുള്ള എല്ലാ ഡാറ്റയും ശാശ്വതമായി ഇല്ലാതാക്കപ്പെടും';
	@override String get incomplete_title => 'സെക്യൂരിറ്റി സെറ്റപ്പ് അപൂർണ്ണമാണ്';
	@override String get incomplete_content => 'നിങ്ങൾ ആപ്പ് ലോക്ക് പ്രവർത്തനക്ഷമമാക്കി, പക്ഷേ പിൻ അല്ലെങ്കിൽ ബയോമെട്രിക്സ് സജ്ജീകരിച്ചിട്ടില്ല. ഒരു രീതി കോൺഫിഗർ ചെയ്യുന്നത് വരെ ആപ്പ് ലോക്ക് പ്രവർത്തനരഹിതമായിരിക്കും.';
	@override String get got_it => 'മനസ്സിലായി';
}

// Path: data
class _StringsDataMl extends _StringsDataEn {
	_StringsDataMl._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ഡാറ്റ മാനേജ്‌മെന്റ്';
	@override String get summary => 'ശേഖരണ വിവരങ്ങൾ';
	@override String get totalUsed => 'ഉപയോഗിച്ചത്: ';
	@override String get legendModel => 'മോഡലുകൾ';
	@override String get legendFree => 'ശൂന്യമായ ഇടം';
	@override String get mgmt => 'മോഡൽ മാനേജ്‌മെന്റ്';
	@override String get deleteModels => 'മോഡലുകൾ നീക്കം ചെയ്യുക';
	@override String get deleteModelsSub => 'ഉപകരണത്തിലെ മോഡൽ വിവരങ്ങൾ പൂർണ്ണമായും ഒഴിവാക്കുക.';
	@override String get selectDelete => 'നീക്കം ചെയ്യേണ്ടവ തിരഞ്ഞെടുക്കാം';
	@override String get autoDelete => 'പഴയവ ഓട്ടോ-ഡിലീറ്റ് ചെയ്യുക:';
	@override String get autoDeleteSub => 'എല്ലാ ചാറ്റ് മോഡുകൾക്കും ഇത് ബാധകമാണ്.';
	@override String get modes => 'മോഡുകൾ';
	@override String get noData => 'ചാറ്റുകൾ ലഭ്യമല്ല';
	@override String get deleteAll => 'എല്ലാ ഡാറ്റയും ഡിലീറ്റ് ചെയ്യുക';
	@override String get authReq => 'വീണ്ടും ലോഗിൻ ചെയ്യേണ്ടതുണ്ട്';
	@override String get viewChats => 'കാണുക';
	@override String get deleteAllPillar => 'ഡിലീറ്റ്';
	@override String get space => 'ഇടം:';
	@override String get activeInstances => 'സജീവമായവ:';
}

// Path: pin_setup
class _StringsPinSetupMl extends _StringsPinSetupEn {
	_StringsPinSetupMl._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '4-അക്ക പിൻ സജ്ജമാക്കുക';
	@override String get subtitle_setup => 'ആപ്പ് ആക്സസ് ചെയ്യുന്നതിന് ഒരു സുരക്ഷിത കോഡ് സൃഷ്ടിക്കുക';
	@override String get title_confirm => 'പിൻ സ്ഥിരീകരിക്കുക';
	@override String get subtitle_confirm => 'സ്ഥിരീകരിക്കുന്നതിന് നിങ്ങളുടെ 4-അക്ക കോഡ് വീണ്ടും നൽകുക';
	@override String get title_verify => 'നിലവിലെ പിൻ നൽകുക';
	@override String get subtitle_verify => 'തുടരുന്നതിന് നിങ്ങളുടെ നിലവിലുള്ള കോഡ് നൽകുക';
	@override String get error_mismatch => 'പിന്നുകൾ പൊരുത്തപ്പെടുന്നില്ല. വീണ്ടും ശ്രമിക്കുക.';
	@override String get error_incorrect => 'തെറ്റായ പിൻ. ദയവായി വീണ്ടും ശ്രമിക്കുക.';
	@override String get snack_success => 'പിൻ വിജയകരമായി സജ്ਜമാക്കി';
}

// Path: pin_mgmt
class _StringsPinMgmtMl extends _StringsPinMgmtEn {
	_StringsPinMgmtMl._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ആപ്പ്-നിർദ്ദിഷ്ട പിൻ';
	@override String get change_title => 'പിൻ മാറ്റുക';
	@override String get change_sub => 'നിങ്ങളുടെ 4-അക്ക ZiqeX സുരക്ഷാ കോഡ് പുതുക്കുക';
	@override String get remove_title => 'പിൻ ഒഴിവാക്കുക';
	@override String get remove_sub => 'ZiqeX-നായുള്ള പിൻ ആക്‌സസ് ഓഫാക്കുക';
	@override String get snack_removed => 'പിൻ വിജയകരമായി ഒഴിവാക്കി';
}

// Path: lang_legacy
class _StringsLangLegacyMl extends _StringsLangLegacyEn {
	_StringsLangLegacyMl._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'ഏത് ഭാഷയാണ്\n';
	@override String get title2 => 'സ്വന്തമായി തോന്നുന്നത്?';
	@override String get subtitle => 'നിങ്ങളുടെ മാതൃഭാഷയിൽ ശബ്‌ദവും ടെക്‌സ്‌റ്റും മറുപടികളും. എപ്പോൾ വേണമെങ്കിലും മാറ്റാം.';
	@override String get first_reply => 'ആദ്യ മറുപടി ഇങ്ങനെയായിരിക്കും';
	@override String script_info({required Object lang}) => '${lang} - നിങ്ങളുടെ ലിപിയിൽ എഴുതുകയും സംസാരിക്കുകയും ചെയ്യുന്നു';
	@override String get continueBtn => 'തുടരുക';
}

// Path: <root>
class _StringsMr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsMr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.mr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <mr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsMr _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'नमस्कार';
	@override String get mind_today => 'आज तुमच्या मनात काय आहे?';
	@override String get on_device_only => 'केवळ या डिव्हाइसवर';
	@override String get offline => 'ऑफलाइन';
	@override String get start_something => 'काहीतरी सुरू करा';
	@override String get ask_anything => 'काहीही विचारा';
	@override String get ask_anything_sub => 'आरोग्य · कायदेशीर · वैयक्तिक · काम';
	@override String get voice_mode => 'व्हॉइस मोड';
	@override String get voice_mode_sub => 'तुमच्या भाषेत बोला';
	@override String get ask_image => 'प्रतिमेवरून विचारा';
	@override String get ask_image_sub => 'फॉर्म, लेबले, स्क्रिप्ट';
	@override String get panchang => 'पंचांग';
	@override String get panchang_sub => 'आजची तिथी आणि मुहूर्त';
	@override String get ephemeral => 'अल्पायुषी';
	@override String get ephemeral_sub => 'कोणत्याही खुणांशिवाय बोला';
	@override String get recent => 'अलीकडील';
	@override String get home => 'होम';
	@override String get chat => 'चॅट';
	@override String get library => 'लायब्ररी';
	@override String get you => 'तुम्ही';
	@override String get settings_pref => 'प्रोफाइल सेटिंग्ज';
	@override String get preferences => 'पसंती आणि सुरक्षा';
	@override String get language => 'भाषा';
	@override String get security => 'सुरक्षा';
	@override String get security_sub => 'अॅप लॉक · 2FA';
	@override String get privacy_tiers => 'गोपनीयता मोड';
	@override String get privacy_tiers_sub => '१ सक्रिय \'ZiqeX ऐकण्याचा मोड\'';
	@override String get storage_purge => 'डेटा आणि धारणा';
	@override String get storage_purge_sub => 'डिव्हाइसवर १८४ KB';
	@override String get ephemeral_mode => 'गुप्त चॅट';
	@override String get about => 'सिस्टम माहिती';
	@override String get reset_prototype => 'प्रोटोटाइप रीसेट करा';
	@override String get built_in_india => 'भारतात निर्मित। जगासाठी.';
	@override String get library_sub => 'प्रत्येक मॉडेल · प्रत्येक मेमरी · या डिव्हाइसवर';
	@override String get on_this_device => 'या डिव्हाइसवर';
	@override String get active => 'सक्रिय';
	@override String get add => '+ जोडा';
	@override String get storage_used => 'वापरलेले स्टोरेज';
	@override String get health_question => 'आरोग्य विषयक प्रश्न';
	@override String get family => 'कुटुंब';
	@override String get work => 'काम';
	@override String get just_thinking => 'फक्त विचार करत आहे';
	@override late final _StringsProfileMr profile = _StringsProfileMr._(_root);
	@override late final _StringsWelcomeMr welcome = _StringsWelcomeMr._(_root);
	@override late final _StringsInfoMr info = _StringsInfoMr._(_root);
	@override late final _StringsLanguageSelectionMr languageSelection = _StringsLanguageSelectionMr._(_root);
	@override late final _StringsPillarsMr pillars = _StringsPillarsMr._(_root);
	@override late final _StringsModelDownloadMr modelDownload = _StringsModelDownloadMr._(_root);
	@override late final _StringsLibraryV2Mr library_v2 = _StringsLibraryV2Mr._(_root);
	@override late final _StringsBiometricMr biometric = _StringsBiometricMr._(_root);
	@override late final _StringsSecurityScreenMr security_screen = _StringsSecurityScreenMr._(_root);
	@override late final _StringsDataMr data = _StringsDataMr._(_root);
	@override late final _StringsPinSetupMr pin_setup = _StringsPinSetupMr._(_root);
	@override late final _StringsPinMgmtMr pin_mgmt = _StringsPinMgmtMr._(_root);
	@override late final _StringsLangLegacyMr lang_legacy = _StringsLangLegacyMr._(_root);
}

// Path: profile
class _StringsProfileMr extends _StringsProfileEn {
	_StringsProfileMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get access => 'प्रवेश';
	@override String get privacy => 'गोपनीयता';
	@override String get system => 'सिस्टम';
	@override String get security_active => 'सुरक्षा सक्रिय';
	@override String get security_inactive => 'सुरक्षा निष्क्रिय';
	@override String get dark_mode => 'डार्क मोड';
	@override String get dark_mode_sub => 'प्रकाश आणि गडद कार्यक्षेत्र थीम दरम्यान स्विच करा';
	@override String get data_mgmt => 'चॅट डेटा व्यवस्थापन आणि धारणा';
	@override String get data_mgmt_sub => 'तुमचा संवाद इतिहास व्यवस्थापित करा';
	@override String get app_lock => 'अॅप लॉक';
	@override String get app_lock_sub => 'तुमचा फिंगरप्रिंट, चेहरा किंवा पिनसह ZiqeX सुरक्षित करा';
	@override String get incognito_sub => 'इतिहासात जतन न करता चॅट करा. चॅटमधून बाहेर पडल्यानंतर परत मिळवता येणार नाही';
	@override String get version => 'V0.1 • सार्वभौम • ऑन-डिव्हाइस';
}

// Path: welcome
class _StringsWelcomeMr extends _StringsWelcomeEn {
	_StringsWelcomeMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX ला भेटा';
	@override String get at_edge => 'टोकावर बुद्धिमत्ता (Edge)';
	@override String get private => 'खाजगी and एज एआय\nZenteiQ द्वारे';
	@override String get begin => 'ऑनबोर्डिंग सुरू करा';
}

// Path: info
class _StringsInfoMr extends _StringsInfoEn {
	_StringsInfoMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'तुमच्या भोवती डिझाइन केलेली बुद्धिमत्ता';
	@override String get subtitle => 'अनुभवात तयार केलेली गोपनीयता, निवड आणि नियंत्रणासह उपयुक्त AI.';
	@override String get privacy_title => 'गोपनीयता प्रथम';
	@override String get privacy_desc => 'ZiqeX बुद्धिमत्ता आणि तुमची माहिती तुमच्या डिव्हाइसच्या जवळ ठेवण्यासाठी डिझाइन केले आहे.';
	@override String get hand_title => 'तुमच्या हातात बुद्धिमत्ता';
	@override String get hand_desc => 'दैनंदिन बुद्धिमत्ता, थेट तुमच्या डिव्हाइसवर उपलब्ध.';
	@override String get control_title => 'तुमचा डेटा. तुमचे नियंत्रण.';
	@override String get control_desc => 'काय ठेवायचे ते निवडा, जे साठवले आहे ते व्यवस्थापित करा आणि ज्याची तुम्हाला आता गरज नाही ते हटवा.';
	@override String get place_title => 'प्रत्येक ठिकाणासाठी डिझाइन केलेले';
	@override String get place_desc => 'विविध भाषा, उपकरणे आणि लोक तंत्रज्ञान वापरण्याच्या पद्धतींसाठी तयार केलेले.';
	@override String get footer => 'तुमची बुद्धिमत्ता. तुमचे डिव्हाइस. तुमचे नियंत्रण.';
	@override String get setup => 'तुमचे ZiqeX सेट अप करा';
}

// Path: languageSelection
class _StringsLanguageSelectionMr extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'भाषा निवड';
	@override String get title => 'तुमची भाषा निवडा';
	@override String get subtitle => 'तुमच्या इंटरफेससाठी भाषा निवडा.';
	@override String get back => 'मागे';
	@override String get continueBtn => 'सुरू ठेवा';
}

// Path: pillars
class _StringsPillarsMr extends _StringsPillarsEn {
	_StringsPillarsMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'स्तंभ निवड';
	@override String get title => 'तुमचे स्तंभ निवडा';
	@override String get subtitle => 'तुम्ही ज्या मुख्य क्षमतांवर लक्ष केंद्रित करू इच्छिता त्या निवडा.';
	@override String get general => 'सामान्य';
	@override String get operational => 'कार्यरत';
	@override String get personal => 'वैयक्तिक सल्ला';
	@override String get workplace => 'कामाची जागा';
	@override String get culture => 'संस्कृती आणि कुटुंब';
	@override String get journal => 'दैनंदिन रोजनिशी';
	@override String get back => 'मागे';
	@override String get continueBtn => 'सुरू ठेवा';
}

// Path: modelDownload
class _StringsModelDownloadMr extends _StringsModelDownloadEn {
	_StringsModelDownloadMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI-ला\nतुमच्याकडे ';
	@override String get title2 => 'घेऊन येत आहोत.';
	@override String get subtitle => 'एकदाच. यानंतर, आम्ही तुमच्या डेटाला कधीही स्पर्श करणार नाही.';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'तयार';
	@override String get validating => 'तपासणी होत आहे...';
	@override String get langs => '14 भाषा';
	@override String get toks => '~18 tok/s';
	@override String get ttft => '~140 ms TTFT';
	@override String error({required Object error}) => 'त्रुटी: ${error}';
	@override String get retry => 'पुन्हा प्रयत्न करा';
	@override String get open => 'BrahmAI उघडा';
	@override String get download => 'मॉडेल डाउनलोड करा';
	@override String get later => 'नंतर सेटअप करा';
	@override String get continueSub => 'मॉडेल डाउनलोड न करता पुढे जा. तुम्ही तयार असाल तेव्हा एक जोडू शकता';
}

// Path: library_v2
class _StringsLibraryV2Mr extends _StringsLibraryV2En {
	_StringsLibraryV2Mr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'तुमची AI संसाधने व्यवस्थापित करा';
	@override String get language_title => 'भाषा';
	@override String get language_desc => 'तुमच्या पसंतीच्या भाषा निवडा आणि व्यवस्थापित करा';
	@override String get model_title => 'मॉडेल';
	@override String get model_desc => 'उपलब्ध AI मॉडेल्स शोधा आणि व्यवस्थापित करा';
	@override String get saved_title => 'जतन केलेले';
	@override String get saved_desc => 'तुमची प्रॉम्प्ट लायब्ररी';
	@override String get skills_title => 'कौशल्ये';
	@override String get skills_desc => 'AI क्षमता';
}

// Path: biometric
class _StringsBiometricMr extends _StringsBiometricEn {
	_StringsBiometricMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get vault => 'तिजोरी सुरक्षा';
	@override String get setupTitle => 'सुरक्षित लॉक सेटअप';
	@override String get setupSub => 'तुमच्या पसंतीच्या प्रमाणीकरण पद्धतीसह तुमची तिजोरी सुरक्षित करा.';
	@override String get deviceTitle => 'डिव्हाइस बायोमेट्रिक्स';
	@override String get deviceSub => 'FaceID किंवा फिंगरप्रिंट वापरा';
	@override String get pinTitle => 'अॅप-विशिष्ट पिन';
	@override String get pinSub => 'एक अनन्य ४-अंकी कोड सेट करा';
	@override String get dialogTitle => 'बायोमेट्रिक प्रवेशाची परवानगी द्या';
	@override String get dialogSub => 'ZiqeX अनलॉक करण्यासाठी तुमचा फिंगरप्रिंट किंवा डिव्हाइस फेस रिकग्निशन वापरा';
	@override String get cancel => 'रद्द करा';
	@override String get allow => 'बायोमेट्रिक्सला अनुमती द्या';
}

// Path: security_screen
class _StringsSecurityScreenMr extends _StringsSecurityScreenEn {
	_StringsSecurityScreenMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ॲप सुरक्षा';
	@override String get global_protection => 'जागतिक संरक्षण';
	@override String get app_lock => 'ॲप लॉक';
	@override String get app_lock_sub => 'ZiqeX उघडण्यासाठी प्रमाणीकरण आवश्यक आहे';
	@override String get auth_methods => 'प्रमाणीकरण पद्धती';
	@override String get biometrics_title => 'डिव्हाइस बायोमेट्रिक्स';
	@override String get biometrics_sub => 'तुमच्या फिंगरप्रिंट किंवा चेहऱ्याने त्वरित अनलॉक करा';
	@override String get pin_title => 'ZiqeX पिन';
	@override String get pin_active => 'पिन सक्रिय आहे';
	@override String get pin_setup => 'ॲप अनलॉक करण्यासाठी एक अद्वितीय ४-अंकी कोड सेट करा';
	@override String get warning_title => 'खूप जास्त चुकीचे प्रयत्न';
	@override String get warning_sub => 'चुकीचा पिन १० वेळा टाकल्यास, ZiqeX आपोआप रीसेट होईल. या डिव्हाइसवर जतन केलेला सर्व डेटा कायमचा हटवला जाईल';
	@override String get incomplete_title => 'सुरक्षा सेटअप अपूर्ण';
	@override String get incomplete_content => 'तुम्ही ॲप लॉक सक्षम केले आहे पण पिन किंवा बायोमेट्रिक्स सेट केलेले नाही. जोपर्यंत एखादी पद्धत कॉन्फिगर केली जात नाही तोपर्यंत ॲप लॉक अक्षम केले जाईल.';
	@override String get got_it => 'समजले';
}

// Path: data
class _StringsDataMr extends _StringsDataEn {
	_StringsDataMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'डेटा व्यवस्थापन आणि\nधारणा';
	@override String get summary => 'स्टोरेज सारांश';
	@override String get totalUsed => 'एकूण वापरलेले: ';
	@override String get legendModel => 'मॉडेल वेट';
	@override String get legendFree => 'मोकळी जागा';
	@override String get mgmt => 'मॉडेल व्यवस्थापन';
	@override String get deleteModels => 'सर्व डाउनलोड केलेले मॉडेल हटवा';
	@override String get deleteModelsSub => 'या डिव्हाइसवरून सर्व स्थानिक मॉडेल वेट आणि फाइन-ट्यून्ड पॅरामीटर्स पूर्णपणे काढून टाका.';
	@override String get selectDelete => 'हटवण्यासाठी मॉडेल निवडा';
	@override String get autoDelete => 'यापेक्षा जुने चॅट आपोआप हटवा:';
	@override String get autoDeleteSub => 'हा बदल सर्व अनलिंक केलेल्या संवाद मोड्सवर लागू होतो.';
	@override String get modes => 'मोड्स';
	@override String get noData => 'कोणताही सक्रिय चॅट डेटा नाही';
	@override String get deleteAll => 'सर्व डेटा हटवा';
	@override String get authReq => 'अॅप लॉक पुन: प्रमाणीकरण आवश्यक आहे';
	@override String get viewChats => 'चॅट पहा';
	@override String get deleteAllPillar => 'सर्व हटवा';
	@override String get space => 'जागा:';
	@override String get activeInstances => 'सक्रिय इंस्टन्स:';
}

// Path: pin_setup
class _StringsPinSetupMr extends _StringsPinSetupEn {
	_StringsPinSetupMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '४-अंकी पिन सेट करा';
	@override String get subtitle_setup => 'अ‍ॅप अ‍ॅक्सेस करण्यासाठी सुरक्षित कोड तयार करा';
	@override String get title_confirm => 'पिनची पुष्टी करा';
	@override String get subtitle_confirm => 'सत्यापित करण्यासाठी तुमचा ४-अंकी कोड पुन्हा प्रविष्ट करा';
	@override String get title_verify => 'सध्याचा पिन प्रविष्ट करा';
	@override String get subtitle_verify => 'पुढे चालू ठेवण्यासाठी तुमचा अस्तित्वातील कोड प्रविष्ट करा';
	@override String get error_mismatch => 'पिन जुळत नाहीत. पुन्हा प्रयत्न करा.';
	@override String get error_incorrect => 'चुकीचा पिन. कृपया पुन्हा प्रयत्न करा.';
	@override String get snack_success => 'पिन यशस्वीरित्या सेट झाला';
}

// Path: pin_mgmt
class _StringsPinMgmtMr extends _StringsPinMgmtEn {
	_StringsPinMgmtMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'अ‍ॅप-विशिष्ट पिन';
	@override String get change_title => 'पिन बदला';
	@override String get change_sub => 'तुमचा ४-अंकी ZiqeX सुरक्षा कोड अपडेट करा';
	@override String get remove_title => 'पिन काढून टाका';
	@override String get remove_sub => 'ZiqeX साठी पिन अ‍ॅक्सेस बंद करा';
	@override String get snack_removed => 'पिन यशस्वीरित्या काढून टाकला';
}

// Path: lang_legacy
class _StringsLangLegacyMr extends _StringsLangLegacyEn {
	_StringsLangLegacyMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'कोणती भाषा\n';
	@override String get title2 => 'घरच्यासारखी वाटते?';
	@override String get subtitle => 'तुमच्या मातृभाषेत व्हॉइस, टेक्स्ट आणि उत्तरे. कधीही बदला.';
	@override String get first_reply => 'पहिले उत्तर असे असेल';
	@override String script_info({required Object lang}) => '${lang} - तुमच्या लिपीमध्ये लिहिलेले आणि बोललेले';
	@override String get continueBtn => 'चालू ठेवा';
}

// Path: <root>
class _StringsOr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsOr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.or,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <or>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsOr _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'ନମସ୍କାର';
	@override String get mind_today => 'ଆଜି ଆପଣଙ୍କ ମନରେ କ’ଣ ଅଛି?';
	@override String get on_device_only => 'କେବଳ ଏହି ଡିଭାଇସରେ';
	@override String get offline => 'ଅଫଲାଇନ୍';
	@override String get start_something => 'କିଛି ନୂଆ ଆରମ୍ଭ କରନ୍ତୁ';
	@override String get ask_anything => 'ଯାହା କିଛି ପଚାରନ୍ତୁ';
	@override String get ask_anything_sub => 'ସ୍ୱାସ୍ଥ୍ୟ · ଆଇନଗତ · ବ୍ୟକ୍ତିଗତ · କାର୍ଯ୍ୟ';
	@override String get voice_mode => 'ଭଏସ୍ ମୋଡ୍';
	@override String get voice_mode_sub => 'ଆପଣଙ୍କ ଭାଷାରେ କଥା ହୁଅନ୍ତୁ';
	@override String get ask_image => 'ଛବିରୁ ପଚାରନ୍ତୁ';
	@override String get ask_image_sub => 'ଫର୍ମ, ଲେବଲ୍, ସ୍କ୍ରିପ୍ଟ';
	@override String get panchang => 'ପଞ୍ଜିକା';
	@override String get panchang_sub => 'ଆଜିର ତିଥି ଓ ମୁହୂର୍ତ୍ତ';
	@override String get ephemeral => 'କ୍ଷଣସ୍ଥାୟୀ';
	@override String get ephemeral_sub => 'କୌଣସି ଚିହ୍ନ ନରଖି କଥା ହୁଅନ୍ତୁ';
	@override String get recent => 'ସାମ୍ପ୍ରତିକ';
	@override String get home => 'ହୋମ୍';
	@override String get chat => 'ଚାଟ୍';
	@override String get library => 'ଲାଇବ୍ରେରୀ';
	@override String get you => 'ଆପଣ';
	@override String get settings_pref => 'ପ୍ରୋଫାଇଲ୍ ସେଟିଂସମୂହ';
	@override String get preferences => 'ପସନ୍ଦ ଏବଂ ସୁରକ୍ଷା';
	@override String get language => 'ଭାଷା';
	@override String get security => 'ସୁରକ୍ଷା';
	@override String get security_sub => 'ଆପ୍ ଲକ୍ · 2FA';
	@override String get privacy_tiers => 'ଗୋପନୀୟତା ମୋଡ୍';
	@override String get privacy_tiers_sub => '୧ଟି ସକ୍ରିୟ \'ZiqeX ଶୁଣିବା ମୋଡ୍\'';
	@override String get storage_purge => 'ଡାଟା ଏବଂ ସଂରକ୍ଷଣ';
	@override String get storage_purge_sub => 'ଡିଭାଇସରେ ୧୮୪ KB';
	@override String get ephemeral_mode => 'ଗୋପନୀୟ ଚାଟ୍';
	@override String get about => 'ସିଷ୍ਟମ୍ ସୂଚନା';
	@override String get reset_prototype => 'ପ୍ରୋଟୋଟାଇପ୍ ରିସେଟ୍ କରନ୍ତୁ';
	@override String get built_in_india => 'ଭାରତରେ ନିର୍ମିତ। ବିଶ୍ୱ ପାଇଁ।';
	@override String get library_sub => 'ପ୍ରତ୍ୟେକ ମଡେଲ୍ · ପ୍ରତ୍ୟେକ ସ୍ମୃତି · ଏହି ଡିଭାଇସରେ';
	@override String get on_this_device => 'ଏହି ଡିଭାଇସରେ';
	@override String get active => 'ସକ୍ରିୟ';
	@override String get add => '+ ଯୋଡନ୍ତୁ';
	@override String get storage_used => 'ବ୍ୟବହୃତ ଷ୍ଟୋରେଜ୍';
	@override String get health_question => 'ସ୍ୱାସ୍ଥ୍ୟ ପ୍ରଶ୍ନ';
	@override String get family => 'ପରିବାର';
	@override String get work => 'କାର୍ଯ୍ୟ';
	@override String get just_thinking => 'କେବଳ ଭାବୁଛି';
	@override late final _StringsProfileOr profile = _StringsProfileOr._(_root);
	@override late final _StringsWelcomeOr welcome = _StringsWelcomeOr._(_root);
	@override late final _StringsInfoOr info = _StringsInfoOr._(_root);
	@override late final _StringsLanguageSelectionOr languageSelection = _StringsLanguageSelectionOr._(_root);
	@override late final _StringsPillarsOr pillars = _StringsPillarsOr._(_root);
	@override late final _StringsModelDownloadOr modelDownload = _StringsModelDownloadOr._(_root);
	@override late final _StringsLibraryV2Or library_v2 = _StringsLibraryV2Or._(_root);
	@override late final _StringsBiometricOr biometric = _StringsBiometricOr._(_root);
	@override late final _StringsSecurityScreenOr security_screen = _StringsSecurityScreenOr._(_root);
	@override late final _StringsDataOr data = _StringsDataOr._(_root);
	@override late final _StringsPinSetupOr pin_setup = _StringsPinSetupOr._(_root);
	@override late final _StringsPinMgmtOr pin_mgmt = _StringsPinMgmtOr._(_root);
	@override late final _StringsLangLegacyOr lang_legacy = _StringsLangLegacyOr._(_root);
}

// Path: profile
class _StringsProfileOr extends _StringsProfileEn {
	_StringsProfileOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get access => 'ପ୍ରବେଶ';
	@override String get privacy => 'ଗୋପନୀୟତା';
	@override String get system => 'ସିଷ୍ଟମ୍';
	@override String get security_active => 'ସୁରକ୍ଷା ସକ୍ରିୟ';
	@override String get security_inactive => 'ସୁରକ୍ଷା ନିଷ୍କ୍ରିୟ';
	@override String get dark_mode => 'ଡାର୍କ ମୋଡ୍';
	@override String get dark_mode_sub => 'ଆଲୋକ ଏବଂ ଅନ୍ଧକାର କାର୍ଯ୍ୟକ୍ଷେତ୍ର ଥିମ୍ ମଧ୍ୟରେ ପରିବର୍ତ୍ତନ କରନ୍ତୁ';
	@override String get data_mgmt => 'ଚାଟ୍ ଡାଟା ପରିଚାଳନା ଏବଂ ସଂରକ୍ଷଣ';
	@override String get data_mgmt_sub => 'ଆପଣଙ୍କର ବାର୍ତ୍ତାଳାପ ଇତିହାସ ପରିଚାଳନା କରନ୍ତୁ';
	@override String get app_lock => 'ଆପ୍ ଲକ୍';
	@override String get app_lock_sub => 'ଆପଣଙ୍କର ଆଙ୍ଗୁଠି ଚିହ୍ନ, ମୁହଁ କିମ୍ବା ପିନ୍ ସହିତ ZiqeX କୁ ସୁରକ୍ଷିત କରନ୍ତୁ';
	@override String get incognito_sub => 'ଇତିହାସରେ ସଞ୍ચୟ ନକରି ଚାଟ୍ କରନ୍ତୁ। ଚାଟ୍ ରୁ ବାହାରିବା ପରେ ପୁନରୁଦ୍ଧାର କରାଯାଇପାରିବ ନାହିଁ';
	@override String get version => 'V0.1 • ସାର୍ବଭୌମ • ଅନ୍-ଡିଭାଇସ୍';
}

// Path: welcome
class _StringsWelcomeOr extends _StringsWelcomeEn {
	_StringsWelcomeOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX ସହିତ ପରିଚିତ ହୁଅନ୍ତୁ';
	@override String get at_edge => 'ଏଜ୍ ରେ ବୁଦ୍ଧିମତା';
	@override String get private => 'ବ୍ୟକ୍ତିଗତ ଏବଂ ଏଜ୍ AI\nZenteiQ ଦ୍ୱାରା';
	@override String get begin => 'ଅନବୋର୍ଡିଂ ଆରମ୍ଭ କରନ୍ତୁ';
}

// Path: info
class _StringsInfoOr extends _StringsInfoEn {
	_StringsInfoOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ଆପଣଙ୍କ ଚାରିପାଖରେ ଡିଜାଇନ୍ କରାଯାଇଥିବା ବୁଦ୍ଧିମତା';
	@override String get subtitle => 'ଅନୁଭୂତିରେ ନିର୍ମିତ ଗୋପନୀୟତା, ପସନ୍ଦ ଏବଂ ନିୟନ୍ତ୍ରଣ ସହିତ ଉପଯୋଗୀ AI।';
	@override String get privacy_title => 'ପ୍ରଥମେ ଗୋପନୀୟତା';
	@override String get privacy_desc => 'ZiqeX ବୁଦ୍ଧିମତା ଏବଂ ଆପଣଙ୍କ ସୂଚନାକୁ ଆପଣଙ୍କ ଡିଭାଇସ୍ ନିକଟରେ ରଖିବା ପାଇଁ ଡିଜାଇନ୍ କରାଯାଇଛି।';
	@override String get hand_title => 'ଆପଣଙ୍କ ହାତରେ ବୁଦ୍ଧିମତା';
	@override String get hand_desc => 'ଦୈନନ୍ଦିନ ବୁଦ୍ଧିମତା, ସିଧାସଳଖ ଆପଣଙ୍କ ଡିଭାଇସରେ ଉପଲବ୍ધ।';
	@override String get control_title => 'ଆପଣଙ୍କର ଡାଟା। ଆପଣଙ୍କର ନିୟନ୍ତ୍ରଣ।';
	@override String get control_desc => 'କ’ଣ ରଖାଯିବ ତାହା ବାଛନ୍ତୁ, ସଂରକ୍ଷିତ ହୋଇଥିବା ଜିନିଷକୁ ପରିଚାଳନା କରନ୍ତୁ ଏବଂ ଯାହା ଆପଣଙ୍କର ଆବଶ୍ୟକ ନାହିଁ ତାହାକୁ ଡିଲିଟ୍ କରନ୍ତୁ।';
	@override String get place_title => 'ପ୍ରତ୍ୟେକ ସ୍ଥାନ ପାଇଁ ଡିଜାଇନ୍ କରାଯାଇଛି';
	@override String get place_desc => 'ବିଭିନ୍ନ ଭାଷା, ଡିଭାଇସ୍ ଏବଂ ଲୋକମାନଙ୍କର ପ୍ରଯୁକ୍ତିବିଦ୍ୟା ବ୍ୟବହାର କରିବାର ଶୈଳୀ ପାଇଁ ନିର୍ମିତ।';
	@override String get footer => 'ଆପଣଙ୍କର ବୁଦ୍ଧିମତା। ଆପଣଙ୍କର ଡିଭାଇସ୍। ଆପଣଙ୍କର ନିୟନ୍ତ୍ରଣ।';
	@override String get setup => 'ଆପଣଙ୍କର ZiqeX ସେଟ୍ ଅପ୍ କରନ୍ତୁ';
}

// Path: languageSelection
class _StringsLanguageSelectionOr extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ଭାଷା ଚୟନ';
	@override String get title => 'ଆପଣଙ୍କର ଭାଷା ବାଛନ୍ତୁ';
	@override String get subtitle => 'ଆପଣଙ୍କର ଇଣ୍ଟରଫେସ୍ ପାଇଁ ଭାଷା ଚୟନ କରନ୍ତୁ।';
	@override String get back => 'ପଛକୁ';
	@override String get continueBtn => 'ଜାରି ରଖନ୍ତୁ';
}

// Path: pillars
class _StringsPillarsOr extends _StringsPillarsEn {
	_StringsPillarsOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ସ୍ତମ୍ଭ ଚୟନ';
	@override String get title => 'ଆପଣଙ୍କର ସ୍ତମ୍ଭଗୁଡିକ ଚୟନ କରନ୍ତୁ';
	@override String get subtitle => 'ଆପଣ କେଉଁ ମୂଳ କ୍ଷମତା ଉପରେ ଧ୍ୟାନ ଦେବାକୁ ଚାହୁଁଛନ୍ତି ତାହା ବାଛନ୍ତୁ।';
	@override String get general => 'ସାଧାରଣ';
	@override String get operational => 'କାର୍ଯ୍ୟକ୍ଷମ';
	@override String get personal => 'ବ୍ୟକ୍ତିଗତ ପରାମର୍ଶ';
	@override String get workplace => 'କର୍ମକ୍ଷେତ୍ର';
	@override String get culture => 'ସଂସ୍କୃତି ଏବଂ ପରିବାର';
	@override String get journal => 'ଦୈନନ୍ଦିନ ଡାଏରୀ';
	@override String get back => 'ପଛକୁ';
	@override String get continueBtn => 'ଜାରି ରଖନ୍ତୁ';
}

// Path: modelDownload
class _StringsModelDownloadOr extends _StringsModelDownloadEn {
	_StringsModelDownloadOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI-କୁ\nଆପଣଙ୍କ ନିକଟକୁ ';
	@override String get title2 => 'ଆଣୁଛୁ।';
	@override String get subtitle => 'ଏକକାଳୀନ। ଏହା ପରେ, ଆମେ ଆପଣଙ୍କ ତଥ୍ୟକୁ କଦାପି ସ୍ପର୍ଶ କରିବୁ ନାହିଁ।';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'ପ୍ରସ୍ତୁତ';
	@override String get validating => 'ଯାଞ୍ଚ କରାଯାଉଛି...';
	@override String get langs => '୧୪ଟି ଭାଷା';
	@override String get toks => '~୧୮ tok/s';
	@override String get ttft => '~୧୪୦ ms TTFT';
	@override String error({required Object error}) => 'ତ୍ରୁଟି: ${error}';
	@override String get retry => 'ପୁନର୍ବାର ଚେଷ୍ਟା କରନ୍ତୁ';
	@override String get open => 'BrahmAI ଖୋଲନ୍ତୁ';
	@override String get download => 'ମଡେଲ୍ ଡାଉନଲୋଡ୍ କରନ୍ତୁ';
	@override String get later => 'ପରେ ସେଟଅପ୍ କରନ୍ତୁ';
	@override String get continueSub => 'ମଡେଲ୍ ଡାଉନଲୋଡ୍ ନକରି ଆଗକୁ ବଢନ୍ତୁ। ଆପଣ ପ୍ରସ୍ତୁତ ହେଲେ ଗୋଟିଏ ଯୋଡିପାରିବେ';
}

// Path: library_v2
class _StringsLibraryV2Or extends _StringsLibraryV2En {
	_StringsLibraryV2Or._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'ଆପଣଙ୍କର AI ସମ୍ବଳ ପରିଚାଳନା କରନ୍ତୁ';
	@override String get language_title => 'ଭାଷା';
	@override String get language_desc => 'ଆପଣଙ୍କର ପସନ୍ଦର ଭାଷା ବାଛନ୍ତୁ ଏବଂ ପରିଚାଳନା କରନ୍ତୁ';
	@override String get model_title => 'ମଡେଲ୍';
	@override String get model_desc => 'ଉପଲବ୍ଧ AI ମଡେଲଗୁଡିକୁ ଅନୁସନ୍ଧାନ ଏବଂ ପରିଚାଳନା କରନ୍ତୁ';
	@override String get saved_title => 'ସଂରକ୍ଷିତ';
	@override String get saved_desc => 'ଆପଣଙ୍କର ପ୍ରମ୍ପ୍ଟ ଲାଇବ୍ରେରୀ';
	@override String get skills_title => 'ଦକ୍ଷତା';
	@override String get skills_desc => 'AI କ୍ଷମତା';
}

// Path: biometric
class _StringsBiometricOr extends _StringsBiometricEn {
	_StringsBiometricOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get vault => 'ଭଲ୍ଟ ସୁରକ୍ଷା';
	@override String get setupTitle => 'ସୁରକ୍ଷିତ ଲକ୍ ସେଟଅପ୍';
	@override String get setupSub => 'ଆପଣଙ୍କର ପସନ୍ଦର ପ୍ରାମାଣିକିକରଣ ପଦ୍ଧତି ସହିତ ଆପଣଙ୍କର ଭଲ୍ଟକୁ ସୁରକ୍ଷିତ କରନ୍ତୁ |';
	@override String get deviceTitle => 'ଡିଭାଇସ୍ ବାୟୋମେଟ୍ରିକ୍ସ';
	@override String get deviceSub => 'FaceID କିମ୍ବା ଫିଙ୍ଗରପ୍ରିଣ୍ଟ ବ୍ୟବહાર କରନ୍ତୁ';
	@override String get pinTitle => 'ଆପ୍-ନିର୍ଦ୍ଦିଷ୍ଟ ପିନ୍';
	@override String get pinSub => 'ଏକ ଅନନ୍ୟ 4-ଅଙ୍କ ବିଶିષ્ટ କୋଡ୍ ସେଟ୍ କରନ୍ତୁ';
	@override String get dialogTitle => 'ବାୟୋମେଟ୍ରିକ୍ ଆକ୍ସେସ୍ ଅନୁମତି ଦିଅନ୍ତୁ';
	@override String get dialogSub => 'ZiqeX କୁ ଅନଲକ୍ କରିବାକୁ ଆପଣଙ୍କର ଫିଙ୍ગରପ୍ରିଣ୍ଟ କିମ୍ବା ଡିଭାଇସ୍ ଫେସ୍ ଚିହ୍ନଟ ବ୍ୟବହାର କରନ୍ତୁ';
	@override String get cancel => 'ବାତିଲ୍ କରନ୍ତୁ';
	@override String get allow => 'ବାୟୋମେଟ୍ରିକ୍ସ ଅନୁମତି ଦିଅନ୍ତୁ';
}

// Path: security_screen
class _StringsSecurityScreenOr extends _StringsSecurityScreenEn {
	_StringsSecurityScreenOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ଆପ୍ ସୁରକ୍ଷା';
	@override String get global_protection => 'ଗ୍ଲୋବାଲ୍ ସୁରକ୍ଷା';
	@override String get app_lock => 'ଆପ୍ ଲକ୍';
	@override String get app_lock_sub => 'ZiqeX ଖୋଲିବା ପାଇଁ ପ୍ରମାଣୀକରଣ ଆବଶ୍ୟକ';
	@override String get auth_methods => 'ପ୍ରମାଣୀକରଣ ପଦ୍ଧତି';
	@override String get biometrics_title => 'ଡିଭାଇସ୍ ବାୟୋମେଟ୍ରିକ୍ସ';
	@override String get biometrics_sub => 'ଆପଣଙ୍କର ଫିଙ୍ଗرପ୍ରିଣ୍ଟ କିମ୍ବା ମୁହଁ ସହିତ ତୁରନ୍ତ ଅନଲକ୍ କରନ୍ତୁ';
	@override String get pin_title => 'ZiqeX ପିନ୍';
	@override String get pin_active => 'ପିନ୍ ସକ୍ରିୟ ଅଛି';
	@override String get pin_setup => 'ଆପ୍ ଅନଲକ୍ କରିବା ପାଇଁ ଏକ ସ୍ୱତନ୍ତ୍ର 4-ଅଙ୍କ ବିଶିଷ୍ਟ କୋଡ୍ ସେଟ୍ କରନ୍ତୁ';
	@override String get warning_title => 'ଅତ୍ୟଧିକ ଭୁଲ୍ ପ୍ରୟାସ';
	@override String get warning_sub => 'ଯଦି ଭୁଲ୍ ପିନ୍ 10 ଥର ଏଣ୍ଟର୍ କରାଯାଏ, ତେବେ ZiqeX ସ୍ୱୟଂଚାଳିତ ଭାବରେ ରିସେଟ୍ ହୋଇଯିବ | ଏହି ଡିଭାଇସରେ ସଂରକ୍ଷିତ ସମସ୍ତ ତଥ୍ୟ ସ୍ଥାୟୀ ଭାବରେ ବିଲୁପ୍ତ ହୋଇଯିବ';
	@override String get incomplete_title => 'ସୁରକ୍ଷା ସେଟଅପ୍ ଅସମ୍ପୂର୍ଣ୍ଣ';
	@override String get incomplete_content => 'ଆପଣ ଆପ୍ ଲକ୍ ସକ୍ଷମ କରିଛନ୍ତି କିନ୍ତୁ ପିନ୍ କିମ୍ବା ବାୟୋମେଟ୍ରିକ୍ସ ସେଟ୍ କରିନାହାଁନ୍ତି | କୌଣସି ପଦ୍ଧତି ବିନ୍ୟାସ ନହେବା ପର୍ଯ୍ୟନ୍ତ ଆପ୍ ଲକ୍ ଅକ୍ଷମ ରହିବ |';
	@override String get got_it => 'ବୁଝିଲି';
}

// Path: data
class _StringsDataOr extends _StringsDataEn {
	_StringsDataOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ଡାଟା ପରିଚାଳନା ଏବଂ\nସଂରକ୍ଷଣ';
	@override String get summary => 'ଷ୍ଟୋରେଜ୍ ସାରାଂଶ';
	@override String get totalUsed => 'ମୋଟ ବ୍ୟବହୃତ: ';
	@override String get legendModel => 'ମଡେଲ୍ ଓଜନ';
	@override String get legendFree => 'ଖାଲି ସ୍ଥାନ';
	@override String get mgmt => 'ମଡେଲ୍ ପରିଚାଳନା';
	@override String get deleteModels => 'ସମସ୍ତ ଡାଉନଲୋଡ୍ ହୋଇଥିବା ମଡେଲଗୁଡିକ ଡିଲିଟ୍ କରନ୍ତୁ';
	@override String get deleteModelsSub => 'ଏହି ଡିଭਾਈସରୁ ସମସ୍ତ ସ୍ଥାନୀୟ ମଡେଲ୍ ଓଜନ ଏବଂ ପାରାମିଟରଗୁଡିକ ସମ୍ପୂର୍ଣ୍ଣ ରୂପେ ବାହାର କରନ୍ତୁ |';
	@override String get selectDelete => 'ଡିଲିଟ୍ କରିବାକୁ ମଡେଲଗୁଡିକ ଚୟନ କରନ୍ତୁ';
	@override String get autoDelete => 'ଏହାଠାରୁ ପୁରୁଣା ଚାଟ୍ ଗୁଡିକୁ ଅଟୋ-ଡିଲିଟ୍ କରନ୍ତୁ:';
	@override String get autoDeleteSub => 'ଏହି ସେଟିଂ ସମସ୍ତ ଅଲିଙ୍କ୍ ହୋଇଥିବା ବାର୍ତ୍ତାଳାପ ମୋଡ୍ ପାଇଁ ପ୍ରଯୁଜ୍ୟ |';
	@override String get modes => 'ମୋଡ୍ ଗୁଡିକ';
	@override String get noData => 'କୌଣସି ସକ୍ରିୟ ଚାଟ୍ ଡାଟା ନାହିଁ';
	@override String get deleteAll => 'ସମସ୍ତ ଡାଟା ଡିଲିଟ୍ କରନ୍ତୁ';
	@override String get authReq => 'ଆପ୍ ଲକ୍ ପୁନ-ପ୍ରାମାଣିକିକରଣ ଆବଶ୍ୟକ କରେ';
	@override String get viewChats => 'ଚାଟ୍ ଦେଖନ୍ତୁ';
	@override String get deleteAllPillar => 'ସବୁ ଡିଲିଟ୍ କରନ୍ତୁ';
	@override String get space => 'ସ୍ଥାନ:';
	@override String get activeInstances => 'ସକ୍ରିୟ ଇନଷ୍ଟାନ୍ସ:';
}

// Path: pin_setup
class _StringsPinSetupOr extends _StringsPinSetupEn {
	_StringsPinSetupOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '୪-ଅଙ୍କ ବିଶିଷ୍ଟ ପିନ୍ ସେଟ୍ କରନ୍ତୁ';
	@override String get subtitle_setup => 'ଆପ୍ ଆକ୍ସେସ୍ କରିବା ପାଇଁ ଏକ ସୁରକ୍ଷିତ କୋଡ୍ ସୃଷ୍ଟି କରନ୍ତୁ';
	@override String get title_confirm => 'ପିନ୍ ନିଶ୍ଚିତ କରନ୍ତୁ';
	@override String get subtitle_confirm => 'ଯାଞ୍ଚ କରିବା ପାଇଁ ଆପଣଙ୍କର ୪-ଅଙ୍କ ବିଶିଷ୍ଟ କୋଡ୍ ପୁନର୍ବାର ପ୍ରବେଶ କରନ୍ତୁ';
	@override String get title_verify => 'ବର୍ତ୍ତମାନର ପିନ୍ ପ୍ରବେଶ କରନ୍ତୁ';
	@override String get subtitle_verify => 'ଜାରି ରଖିବା ପାଇଁ ଆପଣଙ୍କର ବିଦ୍ୟମାନ କୋଡ୍ ପ୍ରବେଶ କରନ୍ତୁ';
	@override String get error_mismatch => 'ପିନ୍ ମେଳ ହେଉନାହିଁ | ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ |';
	@override String get error_incorrect => 'ଭୁଲ୍ ପିନ୍ | ଦୟାକରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ |';
	@override String get snack_success => 'ପିନ୍ ସଫଳତାର ସହିତ ସେଟ୍ ହୋଇଛି';
}

// Path: pin_mgmt
class _StringsPinMgmtOr extends _StringsPinMgmtEn {
	_StringsPinMgmtOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ଆପ୍-ନିର୍ଦ୍ଦିଷ୍ଟ ପିନ୍';
	@override String get change_title => 'ପିନ୍ ପରିବର୍ତ୍ତନ କରନ୍ତୁ';
	@override String get change_sub => 'ଆପଣଙ୍କର ୪-ଅଙ୍କ ବିଶିଷ୍ଟ ZiqeX ସୁରକ୍ଷା କୋଡ୍ ଅପଡେਟ୍ କରନ୍ତୁ';
	@override String get remove_title => 'ପିନ୍ ହଟାନ୍ତୁ';
	@override String get remove_sub => 'ZiqeX ପାଇଁ ପିନ୍ ଆକ୍ସେସ୍ ବନ୍ଦ କରନ୍ତୁ';
	@override String get snack_removed => 'ପିନ୍ ସଫଳତାର ସହିତ ହଟାଗଲା';
}

// Path: lang_legacy
class _StringsLangLegacyOr extends _StringsLangLegacyEn {
	_StringsLangLegacyOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'କେଉଁ ଭାଷା\n';
	@override String get title2 => 'ନିଜର ପରି ଲାଗେ?';
	@override String get subtitle => 'ଆପଣଙ୍କ ମାତୃଭାଷାରେ ସ୍ୱର, ପାଠ୍ୟ ଏବଂ ଉତ୍ତର | ଯେକୌଣସି ସମୟରେ ପରିବର୍ତ୍ତନ କରନ୍ତୁ |';
	@override String get first_reply => 'ପ୍ରଥਮ ଉତ୍ତର ଏହିପରି ହେବ';
	@override String script_info({required Object lang}) => '${lang} - ଆପଣଙ୍କ ଲିପିରେ ଲିଖିତ ଏବଂ କଥିତ';
	@override String get continueBtn => 'ଜାରି ରଖନ୍ତୁ';
}

// Path: <root>
class _StringsPa extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsPa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.pa,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pa>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsPa _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'ਸਤਿ ਸ੍ਰੀ ਅਕਾਲ';
	@override String get mind_today => 'ਅੱਜ ਤੁਹਾਡੇ ਮਨ ਵਿੱਚ ਕੀ ਹੈ?';
	@override String get on_device_only => 'ਸਿਰਫ਼ ਇਸ ਡਿਵਾਈਸ \'ਤੇ';
	@override String get offline => 'ਆਫ਼ਲਾਈਨ';
	@override String get start_something => 'ਕੁਝ ਸ਼ੁਰੂ ਕਰੋ';
	@override String get ask_anything => 'ਕੁਝ ਵੀ ਪੁੱਛੋ';
	@override String get ask_anything_sub => 'ਸਿਹਤ · ਕਾਨੂੰਨੀ · ਨਿੱਜੀ · ਕੰਮ';
	@override String get voice_mode => 'ਵੌਇਸ ਮੋਡ';
	@override String get voice_mode_sub => 'ਆਪਣੀ ਭਾਸ਼ਾ ਵਿੱਚ ਬੋਲੋ';
	@override String get ask_image => 'ਤਸਵੀਰ ਤੋਂ ਪੁੱਛੋ';
	@override String get ask_image_sub => 'ਫਾਰਮ, ਲੇਬਲ, ਸਕ੍ਰਿਪਟਾਂ';
	@override String get panchang => 'ਪੰਚਾਂਗ';
	@override String get panchang_sub => 'ਅੱਜ ਦੀ ਤਿਥੀ ਅਤੇ ਮੁਹੂਰਤ';
	@override String get ephemeral => 'ਥੋੜ੍ਹੇ ਸਮੇਂ ਲਈ';
	@override String get ephemeral_sub => 'ਬਿਨਾਂ ਕਿਸੇ ਨਿਸ਼ਾਨ ਦੇ ਬੋਲੋ';
	@override String get recent => 'ਹਾਲੀਆ';
	@override String get home => 'ਹੋਮ';
	@override String get chat => 'ਚੈਟ';
	@override String get library => 'ਲਾਈਬ੍ਰੇਰੀ';
	@override String get you => 'ਤੁਸੀਂ';
	@override String get settings_pref => 'ਪ੍ਰੋਫਾਈਲ ਸੈਟਿੰਗਾਂ';
	@override String get preferences => 'ਪਸੰਦਾਂ ਅਤੇ ਸੁਰੱਖਿਆ';
	@override String get language => 'ਭਾਸ਼ਾ';
	@override String get security => 'ਸੁਰੱਖਿਆ';
	@override String get security_sub => 'ਐਪ ਲੌਕ · 2FA';
	@override String get privacy_tiers => 'ਪ੍ਰਾਈਵੇਸੀ ਮੋਡ';
	@override String get privacy_tiers_sub => '1 ਸਰਗਰਮ \'ZiqeX ਲਿਸਨਿੰਗ ਮੋਡ\'';
	@override String get storage_purge => 'ਡੇਟਾ ਅਤੇ ਸਟੋਰੇਜ';
	@override String get storage_purge_sub => 'ਡਿਵਾਈਸ \'ਤੇ 184 KB';
	@override String get ephemeral_mode => 'ਗੁਪਤ ਚੈਟ';
	@override String get about => 'ਸਿਸਟਮ ਜਾਣਕਾਰੀ';
	@override String get reset_prototype => 'ਪ੍ਰੋਟੋਟਾਈਪ ਰੀਸੈਟ ਕਰੋ';
	@override String get built_in_india => 'ਭਾਰਤ ਵਿੱਚ ਬਣਿਆ। ਦੁਨੀਆ ਲਈ।';
	@override String get library_sub => 'ਹਰ ਮਾਡਲ · ਹਰ ਯਾਦ · ਇਸ ਡਿਵਾਈਸ \'ਤੇ';
	@override String get on_this_device => 'ਇਸ ਡਿਵਾਈਸ \'ਤੇ';
	@override String get active => 'ਸਰਗਰਮ';
	@override String get add => '+ ਜੋੜੋ';
	@override String get storage_used => 'ਵਰਤੀ ਗਈ ਸਟੋਰੇਜ';
	@override String get health_question => 'ਸਿਹਤ ਸਬੰਧੀ ਸਵਾਲ';
	@override String get family => 'ਪਰਿਵਾਰ';
	@override String get work => 'ਕੰਮ';
	@override String get just_thinking => 'ਬਸ ਸੋਚ ਰਿਹਾ ਹਾਂ';
	@override late final _StringsProfilePa profile = _StringsProfilePa._(_root);
	@override late final _StringsWelcomePa welcome = _StringsWelcomePa._(_root);
	@override late final _StringsInfoPa info = _StringsInfoPa._(_root);
	@override late final _StringsLanguageSelectionPa languageSelection = _StringsLanguageSelectionPa._(_root);
	@override late final _StringsPillarsPa pillars = _StringsPillarsPa._(_root);
	@override late final _StringsModelDownloadPa modelDownload = _StringsModelDownloadPa._(_root);
	@override late final _StringsLibraryV2Pa library_v2 = _StringsLibraryV2Pa._(_root);
	@override late final _StringsBiometricPa biometric = _StringsBiometricPa._(_root);
	@override late final _StringsSecurityScreenPa security_screen = _StringsSecurityScreenPa._(_root);
	@override late final _StringsDataPa data = _StringsDataPa._(_root);
	@override late final _StringsPinSetupPa pin_setup = _StringsPinSetupPa._(_root);
	@override late final _StringsPinMgmtPa pin_mgmt = _StringsPinMgmtPa._(_root);
	@override late final _StringsLangLegacyPa lang_legacy = _StringsLangLegacyPa._(_root);
}

// Path: profile
class _StringsProfilePa extends _StringsProfileEn {
	_StringsProfilePa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get access => 'ਪਹੁੰਚ';
	@override String get privacy => 'ਪ੍ਰਾਈਵੇਸੀ';
	@override String get system => 'ਸਿਸਟਮ';
	@override String get security_active => 'ਸੁਰੱਖਿਆ ਸਰਗਰਮ ਹੈ';
	@override String get security_inactive => 'ਸੁਰੱਖਿਆ ਸਰਗਰਮ ਨਹੀਂ ਹੈ';
	@override String get dark_mode => 'ਡਾਰਕ ਮੋਡ';
	@override String get dark_mode_sub => 'ਲਾਈਟ ਅਤੇ ਡਾਰਕ ਵਰਕਸਪੇਸ ਥੀਮ ਦੇ ਵਿਚਕਾਰ ਬਦਲੋ';
	@override String get data_mgmt => 'ਚੈਟ ਡੇਟਾ ਪ੍ਰਬੰਧਨ ਅਤੇ ਸਟੋਰੇਜ';
	@override String get data_mgmt_sub => 'ਆਪਣੀ ਗੱਲਬਾਤ ਦੀ ਹਿਸਟਰੀ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ';
	@override String get app_lock => 'ਐਪ ਲੌਕ';
	@override String get app_lock_sub => 'ਆਪਣੇ ਫਿੰਗਰਪ੍ਰਿੰਟ, ਚਿਹਰੇ ਜਾਂ ਪਿਨ ਨਾਲ ZiqeX ਨੂੰ ਸੁਰੱਖਿਅਤ ਕਰੋ';
	@override String get incognito_sub => 'ਹਿਸਟਰੀ ਵਿੱਚ ਸੁਰੱਖਿਅਤ ਕੀਤੇ ਬਿਨਾਂ ਚੈਟ ਕਰੋ। ਚੈਟ ਤੋਂ ਬਾਹਰ ਆਉਣ ਤੋਂ ਬਾਅਦ ਵਾਪਸ ਨਹੀਂ ਲਿਆਂਦਾ ਜਾ ਸਕਦਾ';
	@override String get version => 'V0.1 • ਪ੍ਰਭੂਸੱਤਾ • ਆਨ-ਡਿਵਾਈਸ';
}

// Path: welcome
class _StringsWelcomePa extends _StringsWelcomeEn {
	_StringsWelcomePa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX ਨੂੰ ਮਿਲੋ';
	@override String get at_edge => 'ਕਿਨਾਰੇ \'ਤੇ ਬੁੱਧੀ (Edge)';
	@override String get private => 'ਨਿੱਜੀ ਅਤੇ ਐਜ AI\nZenteiQ ਦੁਆਰਾ';
	@override String get begin => 'ਆਨਬੋਰਡਿੰਗ ਸ਼ੁਰੂ ਕਰੋ';
}

// Path: info
class _StringsInfoPa extends _StringsInfoEn {
	_StringsInfoPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਤੁਹਾਡੇ ਆਲੇ-ਦੁਆਲੇ ਤਿਆਰ ਕੀਤੀ ਗਈ ਬੁੱਧੀ';
	@override String get subtitle => 'ਪ੍ਰਾਈਵੇਸੀ, ਪਸੰਦ ਅਤੇ ਨਿਯੰਤਰਣ ਦੇ ਨਾਲ ਉਪਯੋਗੀ AI।';
	@override String get privacy_title => 'ਪ੍ਰਾਈਵੇਸੀ ਪਹਿਲਾਂ';
	@override String get privacy_desc => 'ZiqeX ਬੁੱਧੀ ਅਤੇ ਤੁਹਾਡੀ ਜਾਣਕਾਰੀ ਨੂੰ ਤੁਹਾਡੇ ਡਿਵਾਈਸ ਦੇ ਨੇੜੇ ਰੱਖਣ ਲਈ ਤਿਆਰ ਕੀਤਾ ਗਿਆ ਹੈ।';
	@override String get hand_title => 'ਤੁਹਾਡੇ ਹੱਥ ਵਿੱਚ ਬੁੱਧੀ';
	@override String get hand_desc => 'ਰੋਜ਼ਾਨਾ ਦੀ ਬੁੱਧੀ, ਸਿੱਧਾ ਤੁਹਾਡੇ ਡਿਵਾਈਸ \'ਤੇ ਉਪਲਬਧ।';
	@override String get control_title => 'ਤੁਹਾਡਾ ਡੇਟਾ। ਤੁਹਾਡਾ ਨਿਯੰਤਰਣ।';
	@override String get control_desc => 'ਚੁਣੋ ਕਿ ਕੀ ਰੱਖਣਾ ਹੈ, ਜੋ ਸਟੋਰ ਕੀਤਾ ਗਿਆ ਹੈ ਉਸਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ, ਅਤੇ ਜਿਸਦੀ ਤੁਹਾਨੂੰ ਹੁਣ ਲੋੜ ਨਹੀਂ ਹੈ ਉਸਨੂੰ ਮਿਟਾਓ।';
	@override String get place_title => 'ਹਰ ਜਗ੍ਹਾ ਲਈ ਤਿਆਰ ਕੀਤਾ ਗਿਆ';
	@override String get place_desc => 'ਵੱਖ-ਵੱਖ ਭਾਸ਼ਾਵਾਂ, ਡਿਵਾਈਸਾਂ ਅਤੇ ਲੋਕਾਂ ਦੇ ਤਕਨਾਲੋਜੀ ਦੀ ਵਰਤੋਂ ਕਰਨ ਦੇ ਤਰੀਕਿਆਂ ਲਈ ਬਣਾਇਆ ਗਿਆ।';
	@override String get footer => 'ਤੁਹਾਡੀ ਬੁੱਧੀ. ਤੁਹਾਡਾ ਡਿਵਾਈਸ. ਤੁਹਾਡਾ ਨਿਯੰਤਰਣ।';
	@override String get setup => 'ਆਪਣਾ ZiqeX ਸੈੱਟ ਅੱਪ ਕਰੋ';
}

// Path: languageSelection
class _StringsLanguageSelectionPa extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ਭਾਸ਼ਾ ਦੀ ਚੋਣ';
	@override String get title => 'ਆਪਣੀ ਭਾਸ਼ਾ ਚੁਣੋ';
	@override String get subtitle => 'ਆਪਣੇ ਇੰਟਰਫੇਸ ਲਈ ਭਾਸ਼ਾ ਚੁਣੋ।';
	@override String get back => 'ਪਿੱਛੇ';
	@override String get continueBtn => 'ਜਾਰੀ ਰੱਖੋ';
}

// Path: pillars
class _StringsPillarsPa extends _StringsPillarsEn {
	_StringsPillarsPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ਪਿੱਲਰਾਂ ਦੀ ਚੋਣ';
	@override String get title => 'ਆਪਣੇ ਪਿੱਲਰ ਚੁਣੋ';
	@override String get subtitle => 'ਉਹ ਮੁੱਖ ਸਮਰੱਥਾਵਾਂ ਚੁਣੋ ਜਿਨ੍ਹਾਂ \'ਤੇ ਤੁਸੀਂ ਧਿਆਨ ਕੇਂਦਰਿਤ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ।';
	@override String get general => 'ਆਮ';
	@override String get operational => 'ਕਾਰਜਸ਼ੀਲ';
	@override String get personal => 'ਨਿੱਜੀ ਸਲਾਹ';
	@override String get workplace => 'ਕੰਮ ਵਾਲੀ ਥਾਂ';
	@override String get culture => 'ਸੱਭਿਆਚਾਰ ਅਤੇ ਪਰਿਵਾਰ';
	@override String get journal => 'ਰੋਜ਼ਾਨਾ ਡਾਇਰੀ';
	@override String get back => 'ਪਿੱਛੇ';
	@override String get continueBtn => 'ਜਾਰੀ ਰੱਖੋ';
}

// Path: modelDownload
class _StringsModelDownloadPa extends _StringsModelDownloadEn {
	_StringsModelDownloadPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI-ਨੂੰ\nਤੁਹਾਡੇ ਕੋਲ ';
	@override String get title2 => 'ਲਿਆ ਰਹੇ ਹਾਂ।';
	@override String get subtitle => 'ਇੱਕ ਵਾਰ। ਇਸ ਤੋਂ ਬਾਅਦ, ਅਸੀਂ ਤੁਹਾਡੇ ਡੇਟਾ ਨੂੰ ਕਦੇ ਵੀ ਹੱਥ ਨਹੀਂ ਲਗਾਵਾਂਗੇ।';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'ਤਿਆਰ';
	@override String get validating => 'ਪੁਸ਼ਟੀ ਕੀਤੀ ਜਾ ਰਹੀ ਹੈ...';
	@override String get langs => '14 ਭਾਸ਼ਾਵਾਂ';
	@override String get toks => '~18 tok/s';
	@override String get ttft => '~140 ms TTFT';
	@override String error({required Object error}) => 'ਗਲਤੀ: ${error}';
	@override String get retry => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';
	@override String get open => 'BrahmAI ਖੋਲ੍ਹੋ';
	@override String get download => 'ਮਾਡਲ ਡਾਊਨਲੋਡ ਕਰੋ';
	@override String get later => 'ਬਾਅਦ ਵਿੱਚ ਸੈੱਟਅੱਪ ਕਰੋ';
	@override String get continueSub => 'ਮਾਡਲ ਡਾਊਨਲੋਡ ਕੀਤੇ ਬਿਨਾਂ ਜਾਰੀ ਰੱਖੋ। ਜਦੋਂ ਤੁਸੀਂ ਤਿਆਰ ਹੋਵੋ ਤਾਂ ਇੱਕ ਜੋੜ ਸਕਦੇ ਹੋ';
}

// Path: library_v2
class _StringsLibraryV2Pa extends _StringsLibraryV2En {
	_StringsLibraryV2Pa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'ਆਪਣੇ AI ਸਰੋਤਾਂ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ';
	@override String get language_title => 'ਭਾਸ਼ਾ';
	@override String get language_desc => 'ਆਪਣੀਆਂ ਪਸੰਦੀਦਾ ਭਾਸ਼ਾਵਾਂ ਚੁਣੋ ਅਤੇ ਪ੍ਰਬੰਧਿਤ ਕਰੋ';
	@override String get model_title => 'ਮਾਡਲ';
	@override String get model_desc => 'ਉਪਲਬਧ AI ਮਾਡਲਾਂ ਦੀ ਖੋਜ ਅਤੇ ਪ੍ਰਬੰਧਨ ਕਰੋ';
	@override String get saved_title => 'ਸੁਰੱਖਿਅਤ';
	@override String get saved_desc => 'ਤੁਹਾਡੀ ਪ੍ਰੋਂਪਟ ਲਾਇਬ੍ਰੇਰੀ';
	@override String get skills_title => 'ਹੁਨਰ';
	@override String get skills_desc => 'AI ਸਮਰੱਥਾਵਾਂ';
}

// Path: biometric
class _StringsBiometricPa extends _StringsBiometricEn {
	_StringsBiometricPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get vault => 'ਵੌਲਟ ਸੁਰੱਖਿਆ';
	@override String get setupTitle => 'ਸੁਰੱਖਿਅਤ ਲੌਕ ਸੈੱਟਅੱਪ';
	@override String get setupSub => 'ਆਪਣੀ ਪਸੰਦੀਦਾ ਪ੍ਰਮਾਣਿਕਤਾ ਵਿਧੀ ਨਾਲ ਆਪਣੇ ਵੌਲਟ ਨੂੰ ਸੁਰੱਖਿਅਤ ਕਰੋ।';
	@override String get deviceTitle => 'ਡਿਵਾਈਸ ਬਾਇਓਮੈਟ੍ਰਿਕਸ';
	@override String get deviceSub => 'FaceID ਜਾਂ ਫਿੰਗਰਪ੍ਰਿੰਟ ਦੀ ਵਰਤੋਂ ਕਰੋ';
	@override String get pinTitle => 'ਐਪ-ਵਿਸ਼ੇਸ਼ ਪਿਨ';
	@override String get pinSub => 'ਇੱਕ ਵਿਲੱਖਣ 4-ਅੰਕਾਂ ਵਾਲਾ ਕੋਡ ਸੈੱਟ ਕਰੋ';
	@override String get dialogTitle => 'ਬਾਇਓਮੈਟ੍ਰਿਕ ਪਹੁੰਚ ਦੀ ਆਗਿਆ ਦਿਓ';
	@override String get dialogSub => 'ZiqeX ਨੂੰ ਅਨਲੌਕ ਕਰਨ ਲਈ ਆਪਣੇ ਫਿੰਗਰਪ੍ਰਿੰਟ ਜਾਂ ਡਿਵਾਈਸ ਫੇਸ ਰਿਕੋਗਨੀਸ਼ਨ ਦੀ ਵਰਤੋਂ ਕਰੋ';
	@override String get cancel => 'ਰੱਦ ਕਰੋ';
	@override String get allow => 'ਬਾਇਓਮੈਟ੍ਰਿਕਸ ਦੀ ਆਗਿਆ ਦਿਓ';
}

// Path: security_screen
class _StringsSecurityScreenPa extends _StringsSecurityScreenEn {
	_StringsSecurityScreenPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ਐਪ ਸੁਰੱਖਿਆ';
	@override String get global_protection => 'ਗਲੋਬਲ ਸੁਰੱਖਿਆ';
	@override String get app_lock => 'ਐਪ ਲਾਕ';
	@override String get app_lock_sub => 'ZiqeX ਖੋਲ੍ਹਣ ਲਈ ਪ੍ਰਮਾਣੀਕਰਨ ਦੀ ਲੋੜ ਹੈ';
	@override String get auth_methods => 'ਪ੍ਰਮਾਣੀਕਰਨ ਵਿਧੀਆਂ';
	@override String get biometrics_title => 'ਡਿਵਾਈਸ ਬਾਇਓਮੈਟ੍ਰਿਕਸ';
	@override String get biometrics_sub => 'ਆਪਣੇ ਫਿੰਗਰਪ੍ਰਿੰਟ ਜਾਂ ਚਿਹਰੇ ਨਾਲ ਤੁਰੰਤ ਅਨਲਾਕ ਕਰੋ';
	@override String get pin_title => 'ZiqeX ਪਿੰਨ';
	@override String get pin_active => 'ਪਿੰਨ ਸਰਗਰਮ ਹੈ';
	@override String get pin_setup => 'ਐਪ ਨੂੰ ਅਨਲਾਕ ਕਰਨ ਲਈ ਇੱਕ ਵਿਲੱਖਣ 4-ਅੰਕਾਂ ਵਾਲਾ ਕੋਡ ਸੈੱਟ ਕਰੋ';
	@override String get warning_title => 'ਬਹੁਤ ਜ਼ਿਆਦਾ ਗਲਤ ਕੋਸ਼ਿਸ਼ਾਂ';
	@override String get warning_sub => 'ਜੇਕਰ ਗਲਤ ਪਿੰਨ 10 ਵਾਰ ਦਰਜ ਕੀਤਾ ਜਾਂਦਾ ਹੈ, ਤਾਂ ZiqeX ਆਪਣੇ ਆਪ ਰੀਸੈਟ ਹੋ ਜਾਵੇਗਾ। ਇਸ ਡਿਵਾਈਸ \'ਤੇ ਸੁਰੱਖਿਅਤ ਕੀਤਾ ਸਾਰਾ ਡਾਟਾ ਪੱਕੇ ਤੌਰ \'ਤੇ ਮਿਟਾ ਦਿੱਤਾ ਜਾਵੇਗਾ';
	@override String get incomplete_title => 'ਸੁਰੱਖਿਆ ਸੈੱਟਅੱਪ ਅਧੂਰਾ';
	@override String get incomplete_content => 'ਤੁਸੀਂ ਐਪ ਲਾਕ ਨੂੰ ਚਾਲੂ ਕਰ ਦਿੱਤਾ ਹੈ ਪਰ ਪਿੰਨ ਜਾਂ ਬਾਇਓਮੈਟ੍ਰਿਕਸ ਸੈੱਟ ਨਹੀਂ ਕੀਤਾ ਹੈ। ਐਪ ਲਾਕ ਉਦੋਂ ਤੱਕ ਬੰਦ ਰਹੇਗਾ ਜਦੋਂ ਤੱਕ ਕੋਈ ਤਰੀਕਾ ਸੈੱਟ ਨਹੀਂ ਕੀਤਾ ਜਾਂਦਾ।';
	@override String get got_it => 'ਠੀਕ ਹੈ';
}

// Path: data
class _StringsDataPa extends _StringsDataEn {
	_StringsDataPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ਡੇਟਾ ਪ੍ਰਬੰਧਨ ਅਤੇ\nਸਟੋਰੇਜ';
	@override String get summary => 'ਸਟੋਰੇਜ ਸੰਖੇਪ';
	@override String get totalUsed => 'ਕੁੱਲ ਵਰਤੀ ਗਈ: ';
	@override String get legendModel => 'ਮਾਡਲ ਵੇਟ';
	@override String get legendFree => 'ਖਾਲੀ ਥਾਂ';
	@override String get mgmt => 'ਮਾਡਲ ਪ੍ਰਬੰਧਨ';
	@override String get deleteModels => 'ਸਾਰੇ ਡਾਊਨਲੋਡ ਕੀਤੇ ਮਾਡਲ ਮਿਟਾਓ';
	@override String get deleteModelsSub => 'ਇਸ ਡਿਵਾਈਸ ਤੋਂ ਸਾਰੇ ਸਥਾਨਕ ਮਾਡਲ ਵੇਟ ਅਤੇ ਪੈਰਾਮੀਟਰਾਂ ਨੂੰ ਪੂਰੀ ਤਰ੍ਹਾਂ ਹਟਾਓ।';
	@override String get selectDelete => 'ਮਿਟਾਉਣ ਲਈ ਮਾਡਲ ਚੁਣੋ';
	@override String get autoDelete => 'ਇਸ ਤੋਂ ਪੁਰਾਣੀਆਂ ਚੈਟਾਂ ਆਪਣੇ ਆਪ ਮਿਟਾਓ:';
	@override String get autoDeleteSub => 'ਇਹ ਸੈਟਿੰਗ ਸਾਰੇ ਅਨਲਿੰਕਡ ਗੱਲਬਾਤ ਮੋਡਾਂ \'ਤੇ ਲਾਗੂ ਹੁੰਦੀ ਹੈ।';
	@override String get modes => 'ਮੋਡ';
	@override String get noData => 'ਕੋਈ ਸਰਗਰਮ ਚੈਟ ਡੇਟਾ ਨਹੀਂ';
	@override String get deleteAll => 'ਸਾਰਾ ਡੇਟਾ ਮਿਟਾਓ';
	@override String get authReq => 'ਐਪ ਲੌਕ ਰੀ-ਪ੍ਰਮਾਣਿਕਤਾ ਦੀ ਲੋੜ ਹੈ';
	@override String get viewChats => 'ਚੈਟ ਦੇਖੋ';
	@override String get deleteAllPillar => 'ਸਭ ਮਿਟਾਓ';
	@override String get space => 'ਥਾਂ:';
	@override String get activeInstances => 'ਸਰਗਰਮ ਇੰਸਟੈਂਸ:';
}

// Path: pin_setup
class _StringsPinSetupPa extends _StringsPinSetupEn {
	_StringsPinSetupPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '4-ਅੰਕਾਂ ਦਾ ਪਿੰਨ ਸੈੱਟ ਕਰੋ';
	@override String get subtitle_setup => 'ਐਪ ਤੱਕ ਪਹੁੰਚ ਕਰਨ ਲਈ ਇੱਕ ਸੁਰੱਖਿਅਤ ਕੋਡ ਬਣਾਓ';
	@override String get title_confirm => 'ਪਿੰਨ ਦੀ ਪੁਸ਼ਟੀ ਕਰੋ';
	@override String get subtitle_confirm => 'ਪੁਸ਼ਟੀ ਕਰਨ ਲਈ ਆਪਣਾ 4-ਅੰਕਾਂ ਵਾਲਾ ਕੋਡ ਦੁਬਾਰਾ ਦਰਜ ਕਰੋ';
	@override String get title_verify => 'ਮੌਜੂਦਾ ਪਿੰਨ ਦਰਜ ਕਰੋ';
	@override String get subtitle_verify => 'ਜਾਰੀ ਰੱਖਣ ਲਈ ਆਪਣਾ ਮੌਜੂਦਾ ਕੋਡ ਦਰਜ ਕਰੋ';
	@override String get error_mismatch => 'ਪਿੰਨ ਮੇਲ ਨਹੀਂ ਖਾਂਦੇ। ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';
	@override String get error_incorrect => 'ਗਲਤ ਪਿੰਨ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';
	@override String get snack_success => 'ਪਿੰਨ ਸਫਲਤਾਪੂਰਵਕ ਸੈੱਟ ਕੀਤਾ ਗਿਆ';
}

// Path: pin_mgmt
class _StringsPinMgmtPa extends _StringsPinMgmtEn {
	_StringsPinMgmtPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ਐਪ-ਵਿਸ਼ੇਸ਼ ਪਿੰਨ';
	@override String get change_title => 'ਪਿੰਨ ਬਦਲੋ';
	@override String get change_sub => 'ਆਪਣਾ 4-ਅੰਕਾਂ ਵਾਲਾ ZiqeX ਸੁਰੱਖਿਆ ਕੋਡ ਅਪਡੇਟ ਕਰੋ';
	@override String get remove_title => 'ਪਿੰਨ ਹਟਾਓ';
	@override String get remove_sub => 'ZiqeX ਲਈ ਪਿੰਨ ਪਹੁੰਚ ਬੰਦ ਕਰੋ';
	@override String get snack_removed => 'ਪਿੰਨ ਸਫਲਤਾਪੂਰਵਕ ਹਟਾ ਦਿੱਤਾ ਗਿਆ';
}

// Path: lang_legacy
class _StringsLangLegacyPa extends _StringsLangLegacyEn {
	_StringsLangLegacyPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'ਕਿਹੜੀ ਭਾਸ਼ਾ\n';
	@override String get title2 => 'ਆਪਣੀ ਲੱਗਦੀ ਹੈ?';
	@override String get subtitle => 'ਤੁਹਾਡੀ ਮਾਤ੍ਰ ਭਾਸ਼ਾ ਵਿੱਚ ਆਵਾਜ਼, ਟੈਕਸਟ ਅਤੇ ਜਵਾਬ। ਕਿਸੇ ਵੀ ਸਮੇਂ ਬਦਲੋ।';
	@override String get first_reply => 'ਪਹਿਲਾ ਜਵਾਬ ਇਹ ਹੋਵੇਗਾ';
	@override String script_info({required Object lang}) => '${lang} - ਤੁਹਾਡੀ ਲਿਪੀ ਵਿੱਚ ਲਿਖਿਆ ਅਤੇ ਬੋਲਿਆ ਗਿਆ';
	@override String get continueBtn => 'ਜਾਰੀ ਰੱਖੋ';
}

// Path: <root>
class _StringsTa extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsTa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ta,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ta>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsTa _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'வணக்கம்';
	@override String get mind_today => 'இன்று என்ன மனதில் இருக்கிறது?';
	@override String get on_device_only => 'இந்த சாதனத்தில் மட்டுமே';
	@override String get offline => 'ஆகப்லைன்';
	@override String get start_something => 'தொடங்குங்கள்';
	@override String get ask_anything => 'எதையும் கேளுங்கள்';
	@override String get ask_anything_sub => 'உடல்நலம் · சட்டம் · தனிப்பட்டது · வேலை';
	@override String get voice_mode => 'குரல் வழியாக';
	@override String get voice_mode_sub => 'உங்கள் மொழியில் பேசுங்கள்';
	@override String get ask_image => 'படத்திலிருந்து கேளுங்கள்';
	@override String get ask_image_sub => 'படிவம், லேபிள், எழுத்து';
	@override String get panchang => 'பஞ்சாங்கம்';
	@override String get panchang_sub => 'இன்றைய திதியும் முகூர்த்தமும்';
	@override String get ephemeral => 'தற்காலிகம்';
	@override String get ephemeral_sub => 'எந்தத் தடயமும் இல்லாமல்';
	@override String get recent => 'சமீபத்தியவை';
	@override String get home => 'முகப்பு';
	@override String get chat => 'அரட்டை';
	@override String get library => 'நூலகம்';
	@override String get you => 'நீங்கள்';
	@override String get settings_pref => 'அமைப்புகள் · விருப்பத்தேர்வுகள் · பற்றி';
	@override String get preferences => 'விருப்பத்தேர்வுகள்';
	@override String get language => 'மொழி';
	@override String get security => 'பாதுகாப்பு';
	@override String get security_sub => 'ஆப் லாக் · 2FA';
	@override String get privacy_tiers => 'தனியuரிமை அடுக்குகள்';
	@override String get privacy_tiers_sub => '2 செயலில் உள்ளன · ZiqeXAI எப்படி கேட்கிறது';
	@override String get storage_purge => 'சேமிப்பு மற்றும் நீக்கம்';
	@override String get storage_purge_sub => 'சாதனத்தில் 184 KB';
	@override String get ephemeral_mode => 'தற்காலிக முறை';
	@override String get about => 'பற்றி';
	@override String get reset_prototype => 'மாதிரியை மீட்டமைக்கவும்';
	@override String get built_in_india => 'இந்தியாவில் உருவாக்கப்பட்டது. உலகிற்காக.';
	@override String get library_sub => 'ஒவ்வொரு மாதிரியும் · ஒவ்வொரு நினைவகமும் · இந்த சாதனத்தில்';
	@override String get on_this_device => 'இந்த சாதனத்தில்';
	@override String get active => 'செயலில்';
	@override String get add => '+ சேர்க்க';
	@override String get storage_used => 'பயன்படுத்தப்பட்ட சேமிப்பு';
	@override String get health_question => 'சுகாதார கேள்வி';
	@override String get family => 'குடும்பம்';
	@override String get work => 'வேலை';
	@override String get just_thinking => 'சும்மா யோசிக்கிறேன்';
	@override late final _StringsProfileTa profile = _StringsProfileTa._(_root);
	@override late final _StringsWelcomeTa welcome = _StringsWelcomeTa._(_root);
	@override late final _StringsInfoTa info = _StringsInfoTa._(_root);
	@override late final _StringsLanguageSelectionTa languageSelection = _StringsLanguageSelectionTa._(_root);
	@override late final _StringsPillarsTa pillars = _StringsPillarsTa._(_root);
	@override late final _StringsModelDownloadTa modelDownload = _StringsModelDownloadTa._(_root);
	@override late final _StringsLibraryV2Ta library_v2 = _StringsLibraryV2Ta._(_root);
	@override late final _StringsBiometricTa biometric = _StringsBiometricTa._(_root);
	@override late final _StringsSecurityScreenTa security_screen = _StringsSecurityScreenTa._(_root);
	@override late final _StringsDataTa data = _StringsDataTa._(_root);
	@override late final _StringsPinSetupTa pin_setup = _StringsPinSetupTa._(_root);
	@override late final _StringsPinMgmtTa pin_mgmt = _StringsPinMgmtTa._(_root);
	@override late final _StringsLangLegacyTa lang_legacy = _StringsLangLegacyTa._(_root);
}

// Path: profile
class _StringsProfileTa extends _StringsProfileEn {
	_StringsProfileTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get access => 'அணுகல்';
	@override String get privacy => 'தனியுரிமை';
	@override String get system => 'அமைப்பு';
	@override String get security_active => 'பாதுகாப்பு செயலில் உள்ளது';
	@override String get security_inactive => 'பாதுகாப்பு செயலிழந்துள்ளது';
	@override String get dark_mode => 'இருண்ட பயன்முறை';
	@override String get dark_mode_sub => 'ஒளி மற்றும் இருண்ட தீம்களுக்கு இடையே மாறவும்';
	@override String get data_mgmt => 'தரவு மேலாண்மை';
	@override String get data_mgmt_sub => 'அரட்டை வரலாற்றை நிர்வகிக்கவும்';
	@override String get app_lock => 'ஆப் லாக்';
	@override String get app_lock_sub => 'கைரேகை, முகம் அல்லது பின் (PIN) மூலம் பாதுகாக்கவும்';
	@override String get incognito_sub => 'வரலாற்றில் சேமிக்காமல் அரட்டை அடிக்கவும். மீட்டெடுக்க முடியாது';
	@override String get version => 'V0.1 • இறையாண்மை • சாதனத்தில்';
}

// Path: welcome
class _StringsWelcomeTa extends _StringsWelcomeEn {
	_StringsWelcomeTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX-ஐ சந்திக்கவும்';
	@override String get at_edge => 'எட்ஜில் உள்ள நுண்ணறிவு';
	@override String get private => 'தனியார் எட்ஜ் AI\nZenteiQ வழங்கியது';
	@override String get begin => 'தொடங்கலாம்';
}

// Path: info
class _StringsInfoTa extends _StringsInfoEn {
	_StringsInfoTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'உங்களுக்கான நுண்ணறிவு';
	@override String get subtitle => 'தனியுரிமை மற்றும் முழு கட்டுப்பாட்டுடன் கூடிய AI அனுபவம்.';
	@override String get privacy_title => 'தனியுரிமை முதலில்';
	@override String get privacy_desc => 'உங்கள் தகவல்கள் உங்கள் சாதனத்திலேயே பாதுகாப்பாக இருக்கும்.';
	@override String get hand_title => 'கைக்குள் நுண்ணறிவு';
	@override String get hand_desc => 'தினசரி தேவைகளுக்கான நுண்ணறிவு உங்கள் சாதனத்திலேயே கிடைக்கும்.';
	@override String get control_title => 'முழு கட்டுப்பாடு';
	@override String get control_desc => 'தேவையானவற்றை வைத்துக்கொண்டு வேண்டாதவற்றை நீக்கலாம்.';
	@override String get place_title => 'அனைவருக்கும் ஏற்றது';
	@override String get place_desc => 'வெவ்வேறு மொழிகள் மற்றும் சாதனங்களுக்காக உருவாக்கப்பட்டது.';
	@override String get footer => 'உங்கள் நுண்ணறிவு. உங்கள் சாதனம். உங்கள் கட்டுப்பாடு.';
	@override String get setup => 'அமைப்பைத் தொடங்கவும்';
}

// Path: languageSelection
class _StringsLanguageSelectionTa extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'மொழி தேர்வு';
	@override String get title => 'உங்கள் மொழியைத் தேர்ந்தெடுக்கவும்';
	@override String get subtitle => 'உங்கள் இடைமுகத்திற்கான மொழியைத் தேர்ந்தெடுக்கவும்.';
	@override String get back => 'பின்னால்';
	@override String get continueBtn => 'தொடரவும்';
}

// Path: pillars
class _StringsPillarsTa extends _StringsPillarsEn {
	_StringsPillarsTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'தூண்கள் தேர்வு';
	@override String get title => 'உங்கள் தூண்களைத் தேர்ந்தெடுக்கவும்';
	@override String get subtitle => 'நீங்கள் கவனம் செலுத்த விரும்பும் முக்கிய திறன்களைத் தேர்ந்தெடுக்கவும்.';
	@override String get general => 'பொதுவானது';
	@override String get operational => 'செயல்பாட்டு';
	@override String get personal => 'தனிப்பட்ட ஆலோசனை';
	@override String get workplace => 'பணியிடம்';
	@override String get culture => 'கலாச்சாரம் மற்றும் குடும்பம்';
	@override String get journal => 'தினசரி இதழ்';
	@override String get back => 'பின்னால்';
	@override String get continueBtn => 'தொடரவும்';
}

// Path: modelDownload
class _StringsModelDownloadTa extends _StringsModelDownloadEn {
	_StringsModelDownloadTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI-ஐ\nஉங்களுக்கு ';
	@override String get title2 => 'கொண்டு வருகிறோம்.';
	@override String get subtitle => 'ஒரு முறை மட்டும். இதற்குப் பிறகு, உங்கள் தரவை நாங்கள் தொட மாட்டோம்.';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'தயார்';
	@override String get validating => 'சரிபார்க்கப்படுகிறது...';
	@override String get langs => '14 மொழிகள்';
	@override String get toks => '~18 tok/s';
	@override String get ttft => '~140 ms TTFT';
	@override String error({required Object error}) => 'பிழை: ${error}';
	@override String get retry => 'மீண்டும் முயற்சிக்கவும்';
	@override String get open => 'திறக்கவும்';
	@override String get download => 'பதிவிறக்கவும்';
	@override String get later => 'பிறகு அமைக்கவும்';
	@override String get continueSub => 'பதிவிறக்காமல் தொடரவும். நீங்கள் தயாராக இருக்கும்போது ஒன்றைச் சேர்க்கலாம்';
}

// Path: library_v2
class _StringsLibraryV2Ta extends _StringsLibraryV2En {
	_StringsLibraryV2Ta._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'AI வளங்களை நிர்வகிக்கவும்';
	@override String get language_title => 'மொழி';
	@override String get language_desc => 'மொழிகளைத் தேர்ந்தெடுத்து நிர்வகிக்கவும்';
	@override String get model_title => 'மாதிரி';
	@override String get model_desc => 'AI மாதிரிகளை ஆராய்ந்து நிர்வகிக்கவும்';
	@override String get saved_title => 'சேமிக்கப்பட்டது';
	@override String get saved_desc => 'உங்கள் ப்ராம்ப்ட் நூலகம்';
	@override String get skills_title => 'திறன்கள்';
	@override String get skills_desc => 'AI திறன்கள்';
}

// Path: biometric
class _StringsBiometricTa extends _StringsBiometricEn {
	_StringsBiometricTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get vault => 'பெட்டக பாதுகாப்பு';
	@override String get setupTitle => 'பாதுகாப்பான லாக்';
	@override String get setupSub => 'விரும்பிய முறையில் உங்கள் பெட்டகத்தைப் பாதுகாக்கவும்.';
	@override String get deviceTitle => 'பயோமெட்ரிக்ஸ்';
	@override String get deviceSub => 'FaceID அல்லது கைரேகை';
	@override String get pinTitle => 'பின் (PIN) குறியீடு';
	@override String get pinSub => '4-இலக்க குறியீட்டை அமைக்கவும்';
	@override String get dialogTitle => 'அனுமதி';
	@override String get dialogSub => 'ZiqeX ஐத் திறக்க உங்கள் கைரேகை அல்லது முகத்தை பயன்படுத்தவும்';
	@override String get cancel => 'ரத்து';
	@override String get allow => 'அனுமதி';
}

// Path: security_screen
class _StringsSecurityScreenTa extends _StringsSecurityScreenEn {
	_StringsSecurityScreenTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'செயலி பாதுகாப்பு';
	@override String get global_protection => 'உலகளாவிய பாதுகாப்பு';
	@override String get app_lock => 'செயலி பூட்டு';
	@override String get app_lock_sub => 'ZiqeX ஐத் திறக்க அங்கீகாரம் தேவை';
	@override String get auth_methods => 'அங்கீகார முறைகள்';
	@override String get biometrics_title => 'சாதன பயோமெட்ரிக்ஸ்';
	@override String get biometrics_sub => 'உங்கள் கைரேகை அல்லது முகத்தைக் கொண்டு உடனடியாகத் திறக்கவும்';
	@override String get pin_title => 'ZiqeX பின்';
	@override String get pin_active => 'பின் செயல்பாட்டில் உள்ளது';
	@override String get pin_setup => 'செயலியைத் திறக்க ஒரு தனித்துவமான 4 இலக்க குறியீட்டை அமைக்கவும்';
	@override String get warning_title => 'அதிகப்படியான தவறான முயற்சிகள்';
	@override String get warning_sub => 'தவறான பின் 10 முறை உள்ளிடப்பட்டால், ZiqeX தானாகவே மீட்டமைக்கப்படும். இந்த சாதனத்தில் சேமிக்கப்பட்ட அனைத்து தரவுகளும் நிரந்தரமாக நீக்கப்படும்';
	@override String get incomplete_title => 'பாதுகாப்பு அமைப்பு முழுமையடையவில்லை';
	@override String get incomplete_content => 'நீங்கள் செயலி பூட்டை இயக்கியுள்ளீர்கள், ஆனால் பின் அல்லது பயோமெட்ரிக்ஸை அமைக்கவில்லை. ஒரு முறை கட்டமைக்கப்படும் வரை செயலி பூட்டு முடக்கப்படும்.';
	@override String get got_it => 'புரிந்தது';
}

// Path: data
class _StringsDataTa extends _StringsDataEn {
	_StringsDataTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'தரவு மேலாண்மை';
	@override String get summary => 'சேமிப்பக சுருக்கம்';
	@override String get totalUsed => 'பயன்படுத்தப்பட்டது: ';
	@override String get legendModel => 'மாடல் எடைகள்';
	@override String get legendFree => 'வெற்று இடம்';
	@override String get mgmt => 'மாடல் மேலாண்மை';
	@override String get deleteModels => 'அனைத்தையும் நீக்கு';
	@override String get deleteModelsSub => 'மாடல் எடைகளை சாதனத்திலிருந்து முழுமையாக அகற்றவும்.';
	@override String get selectDelete => 'நீக்க வேண்டியவற்றைத் தேர்ந்தெடுக்கவும்';
	@override String get autoDelete => 'தானாக நீக்கு:';
	@override String get autoDeleteSub => 'அனைத்து அரட்டை முறைகளுக்கும் பொருந்தும்.';
	@override String get modes => 'முறைகள்';
	@override String get noData => 'தகவல்கள் இல்லை';
	@override String get deleteAll => 'அனைத்தையும் நீக்கு';
	@override String get authReq => 'மீண்டும் அங்கீகாரம் தேவை';
	@override String get viewChats => 'பார்';
	@override String get deleteAllPillar => 'நீக்கு';
	@override String get space => 'இடம்:';
	@override String get activeInstances => 'நிகழ்வுகள்:';
}

// Path: pin_setup
class _StringsPinSetupTa extends _StringsPinSetupEn {
	_StringsPinSetupTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '4-இலக்க PIN-ஐ அமைக்கவும்';
	@override String get subtitle_setup => 'பயன்பாட்டை அணுக பாதுகாப்பான குறியீட்டை உருவாக்கவும்';
	@override String get title_confirm => 'PIN-ஐ உறுதிப்படுத்தவும்';
	@override String get subtitle_confirm => 'சரிபார்க்க உங்கள் 4-இலக்க குறியீட்டை மீண்டும் உள்ளிடவும்';
	@override String get title_verify => 'தற்போதைய PIN-ஐ உள்ளிடவும்';
	@override String get subtitle_verify => 'தொடர உங்கள் தற்போதைய குறியீட்டை உள்ளிடவும்';
	@override String get error_mismatch => 'PIN-கள் பொருந்தவில்லை. மீண்டும் முயற்சிக்கவும்.';
	@override String get error_incorrect => 'தவறான PIN. மீண்டும் முயற்சிக்கவும்.';
	@override String get snack_success => 'PIN வெற்றிகரமாக அமைக்கப்பட்டது';
}

// Path: pin_mgmt
class _StringsPinMgmtTa extends _StringsPinMgmtEn {
	_StringsPinMgmtTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'செயலி சார்ந்த PIN';
	@override String get change_title => 'PIN-ஐ மாற்றவும்';
	@override String get change_sub => 'உங்கள் 4-இலக்க ZiqeX பாதுகாப்புக் குறியீட்டைப் புதுப்பிக்கவும்';
	@override String get remove_title => 'PIN-ஐ அகற்றவும்';
	@override String get remove_sub => 'ZiqeX க்கான PIN அணுகலை முடக்கவும்';
	@override String get snack_removed => 'PIN வெற்றிகரமாக அகற்றப்பட்டது';
}

// Path: lang_legacy
class _StringsLangLegacyTa extends _StringsLangLegacyEn {
	_StringsLangLegacyTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'எந்த மொழி\n';
	@override String get title2 => 'சொந்த உணர்வைத் தருகிறது?';
	@override String get subtitle => 'உங்கள் தாய்மொழியில் குரல், உரை மற்றும் பதில்கள். எப்போது வேண்டுமானாலும் மாற்றிக்கொள்ளலாம்.';
	@override String get first_reply => 'முதல் பதில் இவ்வாறு இருக்கும்';
	@override String script_info({required Object lang}) => '${lang} - உங்கள் எழுத்துருவில் எழுதப்பட்டு பேசப்படும்';
	@override String get continueBtn => 'தொடரவும்';
}

// Path: <root>
class _StringsTe extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsTe.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.te,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <te>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsTe _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'నమస్కారం';
	@override String get mind_today => 'ఈరోజు మీ మనస్సులో ఏముంది?';
	@override String get on_device_only => 'ఈ పరికరంలో మాత్రమే';
	@override String get offline => 'ఆఫ్‌లైన్';
	@override String get start_something => 'ప్రారంభించండి';
	@override String get ask_anything => 'ఏదైనా అడగండి';
	@override String get ask_anything_sub => 'ఆరోగ్యం · చట్టపరమైన · వ్యక్తిగత · పని';
	@override String get voice_mode => 'వాయిస్ మోడ్';
	@override String get voice_mode_sub => 'మీ భాషలో మాట్లాడండి';
	@override String get ask_image => 'చిత్రాన్ని అడగండి';
	@override String get ask_image_sub => 'ఫారమ్‌లు, లేబుల్‌లు, స్క్రిప్ట్‌లు';
	@override String get panchang => 'పంచాంగం';
	@override String get panchang_sub => 'నేటి తిథి & ముహూర్తం';
	@override String get ephemeral => 'ఎఫెమెరల్';
	@override String get ephemeral_sub => 'జాడ లేకుండా మాట్లాడండి';
	@override String get recent => 'ఇటీవలి';
	@override String get home => 'హోమ్';
	@override String get chat => 'చాట్';
	@override String get library => 'లైబ్రరీ';
	@override String get you => 'మీరు';
	@override String get settings_pref => 'ప్రొఫైల్ సెట్టింగ్‌లు';
	@override String get preferences => 'ప్రాధాన్యతలు మరియు భద్రత';
	@override String get language => 'భాష';
	@override String get security => 'భద్రత';
	@override String get security_sub => 'యాప్ లాక్ · 2FA';
	@override String get privacy_tiers => 'గోప్యతా మోడ్';
	@override String get privacy_tiers_sub => '1 యాక్టివ్ \'ZiqeX లిజనింగ్ మోడ్\'';
	@override String get storage_purge => 'డేటా మరియు నిలుపుదల';
	@override String get storage_purge_sub => 'పరికరంలో 184 KB';
	@override String get ephemeral_mode => 'ఇన్కాగ్నిటో చాట్';
	@override String get about => 'సిస్టమ్ సమాచారం';
	@override String get reset_prototype => 'ప్రోటోటోపిని రీసెట్ చేయండి';
	@override String get built_in_india => 'భారతదేశంలో నిర్మించబడింది. ప్రపంచం కోసం.';
	@override String get library_sub => 'ప్రతి మోడల్ · ప్రతి మెమరీ · ఈ పరికరంలో';
	@override String get on_this_device => 'ఈ పరికరంలో';
	@override String get active => 'యాక్టివ్';
	@override String get add => '+ జోడించు';
	@override String get storage_used => 'ఉపయోగించిన స్టోరేజ్';
	@override String get health_question => 'ఆరోగ్య ప్రశ్న';
	@override String get family => 'కుటుంబం';
	@override String get work => 'పని';
	@override String get just_thinking => 'ఊరికే ఆలోచిస్తున్నాను';
	@override late final _StringsProfileTe profile = _StringsProfileTe._(_root);
	@override late final _StringsWelcomeTe welcome = _StringsWelcomeTe._(_root);
	@override late final _StringsInfoTe info = _StringsInfoTe._(_root);
	@override late final _StringsLanguageSelectionTe languageSelection = _StringsLanguageSelectionTe._(_root);
	@override late final _StringsPillarsTe pillars = _StringsPillarsTe._(_root);
	@override late final _StringsModelDownloadTe modelDownload = _StringsModelDownloadTe._(_root);
	@override late final _StringsLibraryV2Te library_v2 = _StringsLibraryV2Te._(_root);
	@override late final _StringsBiometricTe biometric = _StringsBiometricTe._(_root);
	@override late final _StringsSecurityScreenTe security_screen = _StringsSecurityScreenTe._(_root);
	@override late final _StringsDataTe data = _StringsDataTe._(_root);
	@override late final _StringsPinSetupTe pin_setup = _StringsPinSetupTe._(_root);
	@override late final _StringsPinMgmtTe pin_mgmt = _StringsPinMgmtTe._(_root);
	@override late final _StringsLangLegacyTe lang_legacy = _StringsLangLegacyTe._(_root);
}

// Path: profile
class _StringsProfileTe extends _StringsProfileEn {
	_StringsProfileTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get access => 'యాక్సెస్';
	@override String get privacy => 'గోప్యత';
	@override String get system => 'సిస్టమ్';
	@override String get security_active => 'భద్రత యాక్టివ్‌గా ఉంది';
	@override String get security_inactive => 'భద్రత యాక్టివ్‌గా లేదు';
	@override String get dark_mode => 'డార్క్ మోడ్';
	@override String get dark_mode_sub => 'లైట్ మరియు డార్క్ వర్క్‌స్పేస్ థీమ్‌ల మధ్య మారండి';
	@override String get data_mgmt => 'చాట్ డేటా నిర్వహణ మరియు నిలుపుదల';
	@override String get data_mgmt_sub => 'మీ సంభాషణ చరిత్రను నిర్వహించండి';
	@override String get app_lock => 'యాప్ లాక్';
	@override String get app_lock_sub => 'మీ వేలిముద్ర, ముఖం లేదా పిన్ ద్వారా ZiqeXను సురక్షితం చేయండి';
	@override String get incognito_sub => 'చరిత్రలో సేవ్ చేయకుండా చాట్ చేయండి. చాట్ నుండి నిష్క్రమించిన తర్వాత తిరిగి పొందలేరు';
	@override String get version => 'V0.1 • సార్వభౌమ • ఆన్-డివైస్';
}

// Path: welcome
class _StringsWelcomeTe extends _StringsWelcomeEn {
	_StringsWelcomeTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeXని కలవండి';
	@override String get at_edge => 'ఎడ్జ్ వద్ద ఇంటెలిజెన్స్';
	@override String get private => 'ప్రైవేట్ మరియు ఎడ్జ్ AI\nZenteiQ ద్వారా';
	@override String get begin => 'ప్రారంభించండి';
}

// Path: info
class _StringsInfoTe extends _StringsInfoEn {
	_StringsInfoTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'మీ చుట్టూ రూపొందించబడిన ఇంటెలిజెన్స్';
	@override String get subtitle => 'గోప్యత, ఎంపిక మరియు అనుభవంలో నిర్మించిన నియంత్రణతో ఉపయోగకరమైన AI.';
	@override String get privacy_title => 'ముందుగా గోప్యత';
	@override String get privacy_desc => 'ZiqeX ఇంటెలిజెన్స్ మరియు మీ సమాచారాన్ని మీ పరికరానికి దగ్గరగా ఉంచడానికి రూపొందించబడింది.';
	@override String get hand_title => 'మీ చేతిలో ఇంటెలిజెన్స్';
	@override String get hand_desc => 'రోజువారీ ఇంటెలిజెన్స్, నేరుగా మీ పరికరంలో అందుబాటులో ఉంటుంది.';
	@override String get control_title => 'మీ డేటా. మీ నియంత్రణ.';
	@override String get control_desc => 'దేనిని ఉంచుకోవాలో ఎంచుకోండి, నిల్వ చేయబడిన దానిని నిర్వహించండి మరియు మీకు అవసరం లేని వాటిని తొలగించండి.';
	@override String get place_title => 'ప్రతి ప్రదేశం కోసం రూపొందించబడింది';
	@override String get place_desc => 'విభిన్న భాషలు, పరికరాలు మరియు ప్రజలు సాంకేతికతను ఉపయోగించే మార్గాల కోసం నిర్మించబడింది.';
	@override String get footer => 'మీ ఇంటెలిజెన్స్. మీ పరికరం. మీ నియంత్రణ.';
	@override String get setup => 'మీ ZiqeXని సెటప్ చేయండి';
}

// Path: languageSelection
class _StringsLanguageSelectionTe extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'భాష ఎంపిక';
	@override String get title => 'మీ భాషను ఎంచుకోండి';
	@override String get subtitle => 'మీ ఇంటర్ఫేస్ కోసం భాషను ఎంచుకోండి.';
	@override String get back => 'వెనుకకు';
	@override String get continueBtn => 'కొనసాగించండి';
}

// Path: pillars
class _StringsPillarsTe extends _StringsPillarsEn {
	_StringsPillarsTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'స్తంభాల ఎంపిక';
	@override String get title => 'మీ స్తంభాలను ఎంచుకోండి';
	@override String get subtitle => 'మీరు దృష్టి పెట్టాలనుకుంటున్న ప్రధాన సామర్థ్యాలను ఎంచుకోండి.';
	@override String get general => 'సాధారణం';
	@override String get operational => 'కార్యాచరణ';
	@override String get personal => 'వ్యక్తిగత సలహా';
	@override String get workplace => 'పని ప్రదేశం';
	@override String get culture => 'సంస్కృతి మరియు కుటుంబం';
	@override String get journal => 'రోజువారీ జర్నల్';
	@override String get back => 'వెనుకకు';
	@override String get continueBtn => 'కొనసాగించండి';
}

// Path: modelDownload
class _StringsModelDownloadTe extends _StringsModelDownloadEn {
	_StringsModelDownloadTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI-ని\nమీ ముందుకు ';
	@override String get title2 => 'తీసుకొస్తున్నాము.';
	@override String get subtitle => 'ఒక్కసారి మాత్రమే. దీని తర్వాత, మేము మీ డేటాను ఎప్పుడూ తాకము.';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'సిద్ధంగా ఉంది';
	@override String get validating => 'ధృవీకరిస్తున్నాము...';
	@override String get langs => '14 భాషలు';
	@override String get toks => '~18 tok/s';
	@override String get ttft => '~140 ms TTFT';
	@override String error({required Object error}) => 'లోపం: ${error}';
	@override String get retry => 'మళ్ళీ ప్రయత్నించండి';
	@override String get open => 'BrahmAIని తెరవండి';
	@override String get download => 'మోడల్‌ను డౌన్‌లోడ్ చేయండి';
	@override String get later => 'తర్వాత సెటప్ చేయండి';
	@override String get continueSub => 'మోడల్‌ను డౌన్‌లోడ్ చేయకుండా కొనసాగించండి. మీరు సిద్ధంగా ఉన్నప్పుడు ఒకదాన్ని జోడించవచ్చు';
}

// Path: library_v2
class _StringsLibraryV2Te extends _StringsLibraryV2En {
	_StringsLibraryV2Te._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'మీ AI వనరులను నిర్వహించండి';
	@override String get language_title => 'భాష';
	@override String get language_desc => 'మీకు నచ్చిన భాషలను ఎంచుకోండి మరియు నిర్వహించండి';
	@override String get model_title => 'మోడల్';
	@override String get model_desc => 'అందుబాటులో ఉన్న AI మోడల్‌లను అన్వేషించండి మరియు నిర్వహించండి';
	@override String get saved_title => 'సేవ్ చేయబడింది';
	@override String get saved_desc => 'మీ ప్రాంప్ట్ లైబ్రరీ';
	@override String get skills_title => 'నైపుణ్యాలు';
	@override String get skills_desc => 'AI సామర్థ్యాలు';
}

// Path: biometric
class _StringsBiometricTe extends _StringsBiometricEn {
	_StringsBiometricTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get vault => 'వాల్ట్ భద్రత';
	@override String get setupTitle => 'సురక్షిత లాక్ సెటప్';
	@override String get setupSub => 'మీకు ఇష్టమైన ప్రమాణీకరణ పద్ధతితో మీ వాల్ట్‌ను రక్షించుకోండి.';
	@override String get deviceTitle => 'డివైస్ బయోమెట్రిక్స్';
	@override String get deviceSub => 'FaceID లేదా వేలిముద్రను ఉపయోగించండి';
	@override String get pinTitle => 'యాప్-నిర్దిష్ట పిన్';
	@override String get pinSub => 'ఒక ప్రత్యేకమైన 4-అంకెల కోడ్‌ను సెట్ చేయండి';
	@override String get dialogTitle => 'బయోమెట్రిక్ యాక్సెస్‌ను అనుమతించండి';
	@override String get dialogSub => 'ZiqeXని అన్‌లాక్ చేయడానికి మీ వేలిముద్ర లేదా డివైస్ ఫేస్ రికగ్నిషన్‌ని ఉపయోగించండి';
	@override String get cancel => 'రద్దు చేయి';
	@override String get allow => 'బయోమెట్రిక్స్‌ను అనుమతించు';
}

// Path: security_screen
class _StringsSecurityScreenTe extends _StringsSecurityScreenEn {
	_StringsSecurityScreenTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'యాప్ భద్రత';
	@override String get global_protection => 'గ్లోబల్ ప్రొటెక్షన్';
	@override String get app_lock => 'యాప్ లాక్';
	@override String get app_lock_sub => 'ZiqeX తెరవడానికి ప్రమాణీకరణ అవసరం';
	@override String get auth_methods => 'ప్రమాణీకరణ పద్ధతులు';
	@override String get biometrics_title => 'పరికర బయోమెట్రిక్స్';
	@override String get biometrics_sub => 'మీ వేలిముద్ర లేదా ముఖంతో తక్షణమే అన్‌లాక్ చేయండి';
	@override String get pin_title => 'ZiqeX పిన్';
	@override String get pin_active => 'పిన్ యాక్టివ్‌గా ఉంది';
	@override String get pin_setup => 'యాప్‌ను అన్‌లాక్ చేయడానికి ప్రత్యేకమైన 4-అంకెల కోడ్‌ను సెట్ చేయండి';
	@override String get warning_title => 'చాలా తప్పుడు ప్రయత్నాలు';
	@override String get warning_sub => 'తప్పుడు పిన్ 10 సార్లు నమోదు చేస్తే, ZiqeX స్వయంచాలకంగా రీసెట్ చేయబడుతుంది. ఈ పరికరంలో సేవ్ చేయబడిన మొత్తం డేటా శాశ్వతంగా తొలగించబడుతుంది';
	@override String get incomplete_title => 'సెక్యూరిటీ సెటప్ అసంపూర్తిగా ఉంది';
	@override String get incomplete_content => 'మీరు యాప్ లాక్‌ని ప్రారంభించారు కానీ పిన్ లేదా బయోమెట్రిక్స్‌ని సెట్ చేయలేదు. ఒక పద్ధతి కాన్ఫిగర్ చేయబడే వరకు యాప్ లాక్ నిలిపివేయబడుతుంది.';
	@override String get got_it => 'సరే';
}

// Path: data
class _StringsDataTe extends _StringsDataEn {
	_StringsDataTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'డేటా నిర్వహణ మరియు\nనిలుపుదల';
	@override String get summary => 'స్టోరేజ్ సారాంశం';
	@override String get totalUsed => 'మొత్తం ఉపయోగించినది: ';
	@override String get legendModel => 'మోడల్ వెయిట్స్';
	@override String get legendFree => 'ఖాళీ స్థలం';
	@override String get mgmt => 'మోడల్ నిర్వహణ';
	@override String get deleteModels => 'డೌน์โหลด చేసిన అన్ని మోడళ్లను తొలగించు';
	@override String get deleteModelsSub => 'ఈ పరికరం నుండి అన్ని స్థానిక మోడల్ వెయిట్స్ మరియు పారామితులను పూర్తిగా తొలగించండి.';
	@override String get selectDelete => 'తొలగించడానికి మోడళ్లను ఎంచుకోండి';
	@override String get autoDelete => 'దీనికంటే పాత చాట్‌లను ఆటోమేటిక్‌గా తొలగించు:';
	@override String get autoDeleteSub => 'ఈ సెట్టింగ్ అన్ని అన్‌లింక్డ్ సంభాషణ మోడ్‌లకు వర్తిస్తుంది.';
	@override String get modes => 'మోడ్స్';
	@override String get noData => 'యాక్టివ్ చాట్ డేటా లేదు';
	@override String get deleteAll => 'మొత్తం డేటాను తొలగించు';
	@override String get authReq => 'యాప్ లాక్ మళ్లీ ప్రమాణీకరణ అవసరం';
	@override String get viewChats => 'చాట్‌లను చూడండి';
	@override String get deleteAllPillar => 'అన్నీ తొలగించు';
	@override String get space => 'స్థలం:';
	@override String get activeInstances => 'యాక్టివ్ ఇన్‌స్టాన్స్:';
}

// Path: pin_setup
class _StringsPinSetupTe extends _StringsPinSetupEn {
	_StringsPinSetupTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '4-అంకెల పిన్ సెట్ చేయండి';
	@override String get subtitle_setup => 'యాప్‌ని యాక్సెస్ చేయడానికి సురక్షితమైన కోడ్‌ని సృష్టించండి';
	@override String get title_confirm => 'పిన్‌ని ధృవీకరించండి';
	@override String get subtitle_confirm => 'ధృవీకరించడానికి మీ 4-అంకెల కోడ్‌ని మళ్లీ నమోదు చేయండి';
	@override String get title_verify => 'ప్రస్తుత పిన్‌ని నమోదు చేయండి';
	@override String get subtitle_verify => 'కొనసాగించడానికి మీ ప్రస్తుత కోడ్‌ని నమోదు చేయండి';
	@override String get error_mismatch => 'పిన్‌లు సరిపోలలేదు. మళ్లీ ప్రయత్నించండి.';
	@override String get error_incorrect => 'తప్పు పిన్. దయచేసి మళ్లీ ప్రయత్నించండి.';
	@override String get snack_success => 'పిన్ విజయవంతంగా సెట్ చేయబడింది';
}

// Path: pin_mgmt
class _StringsPinMgmtTe extends _StringsPinMgmtEn {
	_StringsPinMgmtTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'యాప్-నిర్దిష్ట పిన్';
	@override String get change_title => 'పిన్ మార్చండి';
	@override String get change_sub => 'మీ 4-అంకెల ZiqeX భద్రతా కోడ్‌ను అప్‌డేట్ చేయండి';
	@override String get remove_title => 'పిన్‌ని తొలగించండి';
	@override String get remove_sub => 'ZiqeX కోసం పిన్ యాక్సెస్‌ని ఆఫ్ చేయండి';
	@override String get snack_removed => 'పిన్ విజయవంతంగా తొలగించబడింది';
}

// Path: lang_legacy
class _StringsLangLegacyTe extends _StringsLangLegacyEn {
	_StringsLangLegacyTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'ఏ భాష\n';
	@override String get title2 => 'సొంతం అనిపిస్తుంది?';
	@override String get subtitle => 'మీ మాతృభాషలో వాయిస్, టెక్స్ట్ మరియు ప్రత్యుత్తరాలు. ఎప్పుడైనా మారండి.';
	@override String get first_reply => 'మొదటి సమాధానం ఇలా ఉంటుంది';
	@override String script_info({required Object lang}) => '${lang} - మీ లిపిలో వ్రాయబడినది మరియు మాట్లాడబడేది';
	@override String get continueBtn => 'కొనసాగించండి';
}

// Path: <root>
class _StringsUr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsUr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ur,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ur>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsUr _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'سلام';
	@override late final _StringsLanguageSelectionUr languageSelection = _StringsLanguageSelectionUr._(_root);
	@override late final _StringsModelDownloadUr modelDownload = _StringsModelDownloadUr._(_root);
	@override late final _StringsSecurityScreenUr security_screen = _StringsSecurityScreenUr._(_root);
	@override late final _StringsPinSetupUr pin_setup = _StringsPinSetupUr._(_root);
	@override late final _StringsPinMgmtUr pin_mgmt = _StringsPinMgmtUr._(_root);
	@override late final _StringsLangLegacyUr lang_legacy = _StringsLangLegacyUr._(_root);
}

// Path: languageSelection
class _StringsLanguageSelectionUr extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اپنی زبان منتخب کریں';
	@override String get subtitle => 'اپنے انٹرفیس کے لیے زبان منتخب کریں۔';
}

// Path: modelDownload
class _StringsModelDownloadUr extends _StringsModelDownloadEn {
	_StringsModelDownloadUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI-کو\nآپ کے پاس ';
	@override String get title2 => 'لا رہے ہیں۔';
	@override String get subtitle => 'ایک بار۔ اس کے بعد، ہم آپ کے ڈیٹا کو دوبارہ کبھی نہیں چھوئیں گے۔';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'تیار';
	@override String get validating => 'تصدیق ہو رہی ہے...';
	@override String get langs => '14 زبانیں';
	@override String get toks => '~18 tok/s';
	@override String get ttft => '~140 ms TTFT';
	@override String error({required Object error}) => 'خرابی: ${error}';
	@override String get retry => 'دوبارہ کوشش کریں';
	@override String get open => 'BrahmAI کھولیں';
	@override String get download => 'ماڈل ڈاؤن لوڈ کریں';
	@override String get later => 'بعد میں سیٹ اپ کریں';
	@override String get continueSub => 'ماڈل ڈاؤن لوڈ کیے بغیر جاری رکھیں۔ جب آپ تیار ہوں تو آپ ایک شامل کر سکتے ہیں';
}

// Path: security_screen
class _StringsSecurityScreenUr extends _StringsSecurityScreenEn {
	_StringsSecurityScreenUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ایپ سیکیورٹی';
	@override String get global_protection => 'عالمی تحفظ';
	@override String get app_lock => 'ایپ لاک';
	@override String get app_lock_sub => 'ZiqeX کھولنے کے لیے تصدیق درکار ہے';
	@override String get auth_methods => 'تصدیق کے طریقے';
	@override String get biometrics_title => 'ڈیوائس بائیو میٹرکس';
	@override String get biometrics_sub => 'اپنے فنگر پرنٹ یا چہرے سے فوری طور پر ان لاک کریں';
	@override String get pin_title => 'ZiqeX پن';
	@override String get pin_active => 'پن فعال ہے';
	@override String get pin_setup => 'ایپ کو ان لاک کرنے کے لیے ایک منفرد 4 ہندسوں کا کوڈ سیٹ کریں';
	@override String get warning_title => 'بہت زیادہ غلط کوششیں';
	@override String get warning_sub => 'اگر غلط پن 10 بار درج کیا جاتا ہے تو ZiqeX خود بخود ری سیٹ ہو جائے گا۔ اس ڈیوائس پر محفوظ تمام ڈیٹا مستقل طور بر حذف کر دیا جائے گا';
	@override String get incomplete_title => 'سیکیورٹی سیٹ اپ نامکمل';
	@override String get incomplete_content => 'آپ نے ایپ لاک فعال کر دیا ہے لیکن پن یا بائیو میٹرکس سیٹ نہیں کیا ہے۔ ایپ لاک اس وقت تک غیر فعال رہے گا جب تک کہ کوئی طریقہ کنفیگر نہیں کیا جاتا۔';
	@override String get got_it => 'ٹھیک ہے';
}

// Path: pin_setup
class _StringsPinSetupUr extends _StringsPinSetupEn {
	_StringsPinSetupUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '4 ہندسوں کا پن سیٹ کریں';
	@override String get subtitle_setup => 'ایپ تک رسائی کے لیے ایک محفوظ کوڈ بنائیں';
	@override String get title_confirm => 'پن کی تصدیق کریں';
	@override String get subtitle_confirm => 'تصدیق کے لیے اپنا 4 ہندسوں کا کوڈ دوبارہ درج کریں';
	@override String get title_verify => 'موجودہ پن درج کریں';
	@override String get subtitle_verify => 'جاری رکھنے کے لیے اپنا موجودہ کوڈ درج کریں';
	@override String get error_mismatch => 'پن مطابقت نہیں رکھتے۔ دوبارہ کوشش کریں۔';
	@override String get error_incorrect => 'غلط پن۔ براہ کرم دوبارہ کوشش کریں۔';
	@override String get snack_success => 'پن کامیابی کے ساتھ سیٹ ہو گیا';
}

// Path: pin_mgmt
class _StringsPinMgmtUr extends _StringsPinMgmtEn {
	_StringsPinMgmtUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ایپ کے لیے مخصوص پن';
	@override String get change_title => 'پن تبدیل کریں';
	@override String get change_sub => 'اپنا 4 ہندسوں والا ZiqeX سیکیورٹی کوڈ اپ ڈیٹ کریں';
	@override String get remove_title => 'پن ختم کریں';
	@override String get remove_sub => 'ZiqeX کے لیے پن تک رسائی بند کریں';
	@override String get snack_removed => 'پن کامیابی کے ساتھ ختم کر دیا گیا';
}

// Path: lang_legacy
class _StringsLangLegacyUr extends _StringsLangLegacyEn {
	_StringsLangLegacyUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'کون سی زبان\n';
	@override String get title2 => 'اپنی سی لگتی ہے؟';
	@override String get subtitle => 'آپ کی مادری زبان میں آواز، متن اور جوابات۔ کسی بھی وقت تبدیل کریں۔';
	@override String get first_reply => 'پہلا جواب یہ ہوگا';
	@override String script_info({required Object lang}) => '${lang} - آپ کے رسم الخط میں لکھا اور بولا گیا';
	@override String get continueBtn => 'جاری رکھیں';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'Hello';
			case 'mind_today': return 'what\'s on your mind today?';
			case 'on_device_only': return 'on this device only';
			case 'offline': return 'offline';
			case 'start_something': return 'START SOMETHING';
			case 'ask_anything': return 'Ask anything';
			case 'ask_anything_sub': return 'health · legal · personal · work';
			case 'voice_mode': return 'Voice mode';
			case 'voice_mode_sub': return 'Speak in your language';
			case 'ask_image': return 'Ask an image';
			case 'ask_image_sub': return 'Forms, labels, scripts';
			case 'panchang': return 'Panchang';
			case 'panchang_sub': return 'today\'s tithi & muhurat';
			case 'ephemeral': return 'Ephemeral';
			case 'ephemeral_sub': return 'speak with no trace';
			case 'recent': return 'RECENT';
			case 'home': return 'Home';
			case 'chat': return 'Chat';
			case 'library': return 'Library';
			case 'you': return 'You';
			case 'settings_pref': return 'Profile settings';
			case 'preferences': return 'PREFERENCES AND SECURITY';
			case 'language': return 'Language';
			case 'security': return 'Security';
			case 'security_sub': return 'App lock · 2FA';
			case 'privacy_tiers': return 'Privacy mode';
			case 'privacy_tiers_sub': return '1 active \'ZiqeX listening mode\'';
			case 'storage_purge': return 'Data and retention';
			case 'storage_purge_sub': return '184 KB on device';
			case 'ephemeral_mode': return 'Incognito chat';
			case 'about': return 'SYSTEM INFO';
			case 'reset_prototype': return 'Reset prototype';
			case 'built_in_india': return 'Built in India. For the World.';
			case 'library_sub': return 'every model · every memory · on this device';
			case 'on_this_device': return 'ON THIS DEVICE';
			case 'active': return 'active';
			case 'add': return '+ add';
			case 'storage_used': return 'STORAGE USED';
			case 'health_question': return 'health question';
			case 'family': return 'family';
			case 'work': return 'work';
			case 'just_thinking': return 'just thinking';
			case 'profile.access': return 'ACCESS';
			case 'profile.privacy': return 'PRIVACY';
			case 'profile.system': return 'SYSTEM';
			case 'profile.security_active': return 'Security active';
			case 'profile.security_inactive': return 'Security inactive';
			case 'profile.dark_mode': return 'Dark Mode';
			case 'profile.dark_mode_sub': return 'Switch between light and dark workspace themes';
			case 'profile.data_mgmt': return 'Chat Data management and retention';
			case 'profile.data_mgmt_sub': return 'Manage your conversation history';
			case 'profile.app_lock': return 'App lock';
			case 'profile.app_lock_sub': return 'Protect ZiqeX with your fingerprint, face, or PIN';
			case 'profile.incognito_sub': return 'Chat without saving to history. Cannot be recovered after exiting the chat';
			case 'profile.version': return 'V0.1 • SOVEREIGN • ON-DEVICE';
			case 'welcome.meet': return 'Meet ZiqeX';
			case 'welcome.at_edge': return 'Intelligence at the edge';
			case 'welcome.private': return 'Private and Edge AI\nby ZenteiQ';
			case 'welcome.begin': return 'BEGIN ONBOARDING';
			case 'info.title': return 'Intelligence designed around you';
			case 'info.subtitle': return 'Useful AI with privacy, choice, and control built into the experience.';
			case 'info.privacy_title': return 'Privacy first';
			case 'info.privacy_desc': return 'ZiqeX is designed to keep intelligence and your information close to your device.';
			case 'info.hand_title': return 'Intelligence in your hand';
			case 'info.hand_desc': return 'Everyday intelligence, available directly on your device.';
			case 'info.control_title': return 'Your data. Your control.';
			case 'info.control_desc': return 'Choose what is kept, manage what is stored, and delete what you no longer need.';
			case 'info.place_title': return 'Designed for every place';
			case 'info.place_desc': return 'Built for different languages, devices, and ways people use technology.';
			case 'info.footer': return 'Your intelligence. Your device. Your control.';
			case 'info.setup': return 'Set up your ZiqeX';
			case 'languageSelection.appBar': return 'Language Selection';
			case 'languageSelection.title': return 'Choose your language';
			case 'languageSelection.subtitle': return 'Select the language for your interface.';
			case 'languageSelection.back': return 'Back';
			case 'languageSelection.continueBtn': return 'Continue';
			case 'pillars.appBar': return 'Pillars Selection';
			case 'pillars.title': return 'Select your pillars';
			case 'pillars.subtitle': return 'Choose the core capabilities you want to focus on.';
			case 'pillars.general': return 'General';
			case 'pillars.operational': return 'Operational';
			case 'pillars.personal': return 'Personal Counsel';
			case 'pillars.workplace': return 'Workplace';
			case 'pillars.culture': return 'Culture and Family';
			case 'pillars.journal': return 'Daily Journal';
			case 'pillars.back': return 'Back';
			case 'pillars.continueBtn': return 'Continue';
			case 'modelDownload.title1': return 'Bringing\nBrahmAI ';
			case 'modelDownload.title2': return 'home.';
			case 'modelDownload.subtitle': return 'One-time. After this, we never touch your data again.';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'Ready';
			case 'modelDownload.validating': return 'Validating...';
			case 'modelDownload.langs': return '14 languages';
			case 'modelDownload.toks': return '~18 tok/s';
			case 'modelDownload.ttft': return '~140 ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'Error: ${error}';
			case 'modelDownload.retry': return 'Retry Download';
			case 'modelDownload.open': return 'Open BrahmAI';
			case 'modelDownload.download': return 'Download Model';
			case 'modelDownload.later': return 'Set up later';
			case 'modelDownload.continueSub': return 'Continue without downloading a model. You can add one when you are ready';
			case 'library_v2.subtitle': return 'Manage your AI resources';
			case 'library_v2.language_title': return 'Language';
			case 'library_v2.language_desc': return 'Choose and manage your preferred languages';
			case 'library_v2.model_title': return 'Model';
			case 'library_v2.model_desc': return 'Explore and manage available AI models';
			case 'library_v2.saved_title': return 'Saved';
			case 'library_v2.saved_desc': return 'Your prompt library';
			case 'library_v2.skills_title': return 'Skills';
			case 'library_v2.skills_desc': return 'AI capabilities';
			case 'biometric.vault': return 'Vault Security';
			case 'biometric.setupTitle': return 'Secure Lock Setup';
			case 'biometric.setupSub': return 'Protect your vault with your preferred\nauthentication method.';
			case 'biometric.deviceTitle': return 'Device Biometrics';
			case 'biometric.deviceSub': return 'Use FaceID or Fingerprint';
			case 'biometric.pinTitle': return 'App-Specific PIN';
			case 'biometric.pinSub': return 'Set a unique 4-digit code';
			case 'biometric.dialogTitle': return 'Allow biometric access';
			case 'biometric.dialogSub': return 'Use your fingerprint or device face recognition to unlock ZiqeX';
			case 'biometric.cancel': return 'Cancel';
			case 'biometric.allow': return 'Allow biometrics';
			case 'security_screen.appBar': return 'App Security';
			case 'security_screen.global_protection': return 'GLOBAL PROTECTION';
			case 'security_screen.app_lock': return 'App lock';
			case 'security_screen.app_lock_sub': return 'Require authentication to open ZiqeX';
			case 'security_screen.auth_methods': return 'AUTHENTICATION METHODS';
			case 'security_screen.biometrics_title': return 'Device biometrics';
			case 'security_screen.biometrics_sub': return 'Unlock instantly with your fingerprint or face';
			case 'security_screen.pin_title': return 'ZiqeX PIN';
			case 'security_screen.pin_active': return 'PIN is active';
			case 'security_screen.pin_setup': return 'Set a unique 4-digit code to unlock the app';
			case 'security_screen.warning_title': return 'Too many incorrect attempts';
			case 'security_screen.warning_sub': return 'If an incorrect PIN is entered 10 times, ZiqeX will automatically reset. All data saved on this device will be permanently deleted';
			case 'security_screen.incomplete_title': return 'Security Setup Incomplete';
			case 'security_screen.incomplete_content': return 'You have enabled App Lock but haven\'t set a PIN or Biometrics. App Lock will be disabled until a method is configured.';
			case 'security_screen.got_it': return 'GOT IT';
			case 'data.appBar': return 'Data Management &\nRetention';
			case 'data.summary': return 'STORAGE SUMMARY';
			case 'data.totalUsed': return 'Total Used: ';
			case 'data.legendModel': return 'Model Weights';
			case 'data.legendFree': return 'Free Space';
			case 'data.mgmt': return 'MODEL MANAGEMENT';
			case 'data.deleteModels': return 'Delete all downloaded models';
			case 'data.deleteModelsSub': return 'Completely remove all local model weights and fine-tuned parameters from this device.';
			case 'data.selectDelete': return 'SELECT MODELS TO DELETE';
			case 'data.autoDelete': return 'Auto-delete chats older than:';
			case 'data.autoDeleteSub': return 'This setting applies across all unlinked conversation modes.';
			case 'data.modes': return 'MODES';
			case 'data.noData': return 'No active chat data';
			case 'data.deleteAll': return 'Delete all data';
			case 'data.authReq': return 'Requires app lock re-authentication';
			case 'data.viewChats': return 'View Chats';
			case 'data.deleteAllPillar': return 'Delete all';
			case 'data.space': return 'Space:';
			case 'data.activeInstances': return 'Active Instances:';
			case 'pin_setup.title_setup': return 'Set 4-Digit PIN';
			case 'pin_setup.subtitle_setup': return 'Create a secure code to access the app';
			case 'pin_setup.title_confirm': return 'Confirm PIN';
			case 'pin_setup.subtitle_confirm': return 'Re-enter your 4-digit code to verify';
			case 'pin_setup.title_verify': return 'Enter Current PIN';
			case 'pin_setup.subtitle_verify': return 'Enter your existing code to continue';
			case 'pin_setup.error_mismatch': return 'PINs do not match. Try again.';
			case 'pin_setup.error_incorrect': return 'Incorrect PIN. Please try again.';
			case 'pin_setup.snack_success': return 'PIN set successfully';
			case 'pin_mgmt.appBar': return 'App-Specific PIN';
			case 'pin_mgmt.change_title': return 'Change PIN';
			case 'pin_mgmt.change_sub': return 'Update your 4-digit ZiqeX security code';
			case 'pin_mgmt.remove_title': return 'Remove PIN';
			case 'pin_mgmt.remove_sub': return 'Turn off PIN access for ZiqeX';
			case 'pin_mgmt.snack_removed': return 'PIN removed successfully';
			case 'lang_legacy.title1': return 'Which language\nfeels like ';
			case 'lang_legacy.title2': return 'home?';
			case 'lang_legacy.subtitle': return 'Voice, text and replies in your mother tongue. Switch anytime.';
			case 'lang_legacy.first_reply': return 'FIRST REPLY WILL SAY';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - transcribed and spoken in your script';
			case 'lang_legacy.continueBtn': return 'Continue';
			default: return null;
		}
	}
}

extension on _StringsAs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'নমস্কাৰ';
			case 'mind_today': return 'আজি আপোনাৰ মনত কি চলি আছে?';
			case 'on_device_only': return 'কেৱল এই ডিভাইচত';
			case 'offline': return 'অফলাইন';
			case 'start_something': return 'কিবা এটা আৰম্ভ কৰক';
			case 'ask_anything': return 'যিকোনো কথা সোধক';
			case 'ask_anything_sub': return 'স্বাস্থ্য · আইনী · ব্যক্তিগত · কাম';
			case 'voice_mode': return 'ভইচ মোড';
			case 'voice_mode_sub': return 'আপোনাৰ ভাষাত কথা কওক';
			case 'ask_image': return 'ছবিৰ জৰিয়তে সোধক';
			case 'ask_image_sub': return 'ফৰ্ম, লেবেল, স্ক্ৰিপ্ট';
			case 'panchang': return 'পঞ্জিকা';
			case 'panchang_sub': return 'আজিৰ তিথি আৰু মুহূৰ্ত';
			case 'ephemeral': return 'অস্থায়ী';
			case 'ephemeral_sub': return 'কোনো চিন নোৰোৱাকৈ কথা পাতক';
			case 'recent': return 'শেহতীয়া';
			case 'home': return 'হোম';
			case 'chat': return 'চাট';
			case 'library': return 'লাইব্ৰেৰী';
			case 'you': return 'আপুনি';
			case 'settings_pref': return 'প্ৰফাইল ছেটিংছ';
			case 'preferences': return 'পচন্দ আৰু সুৰক্ষা';
			case 'language': return 'ভাষা';
			case 'security': return 'সুৰক্ষা';
			case 'security_sub': return 'এপ লক · 2FA';
			case 'privacy_tiers': return 'গোপনীয়তা মোড';
			case 'privacy_tiers_sub': return '১ টা সক্ৰিয় \'ZiqeX শুনাৰ মোড\'';
			case 'storage_purge': return 'তথ্য আৰু ধাৰণ';
			case 'storage_purge_sub': return 'ডিভাইচত ১৮৪ KB';
			case 'ephemeral_mode': return 'গোপন চাট';
			case 'about': return 'ছিষ্টেমৰ তথ্য';
			case 'reset_prototype': return 'প্ৰটোটাইপ ৰিছেট কৰক';
			case 'built_in_india': return 'ভাৰতত নিৰ্মিত। বিশ্বৰ বাবে।';
			case 'library_sub': return 'প্ৰতিটো মডেল · প্ৰতিটো স্মৃতি · এই ডিভাইচত';
			case 'on_this_device': return 'এই ডিভাইচত';
			case 'active': return 'সক্ৰিয়';
			case 'add': return '+ যোগ কৰক';
			case 'storage_used': return 'ব্যৱহৃত ষ্টোৰেজ';
			case 'health_question': return 'স্বাস্থ্য সম্পৰ্কীয় প্ৰশ্ন';
			case 'family': return 'পৰিয়াল';
			case 'work': return 'কাম';
			case 'just_thinking': return 'মাত্ৰ ভাবি আছো';
			case 'profile.access': return 'প্রৱেশাধিকাৰ';
			case 'profile.privacy': return 'গোপনীয়তা';
			case 'profile.system': return 'ছিষ্টেম';
			case 'profile.security_active': return 'সুৰক্ষা সক্ৰিয়';
			case 'profile.security_inactive': return 'সুৰক্ষা নিষ্ক্ৰিয়';
			case 'profile.dark_mode': return 'ডাৰ্ক মোড';
			case 'profile.dark_mode_sub': return 'লাইট আৰু ডাৰ্ক থিমৰ মাজত সলনি কৰক';
			case 'profile.data_mgmt': return 'চাট তথ্য ব্যৱস্থাপনা আৰু ধাৰণ';
			case 'profile.data_mgmt_sub': return 'আপোনাৰ বাৰ্তালাপৰ ইতিহাস পৰিচালনা কৰক';
			case 'profile.app_lock': return 'এপ লক';
			case 'profile.app_lock_sub': return 'আপোনাৰ আঙুলিৰ ছাপ, মুখমণ্ডল বা পিনৰ দ্বাৰা ZiqeX সুৰক্ষিত কৰক';
			case 'profile.incognito_sub': return 'ইতিহাসত সংৰক্ষণ নকৰাকৈ চাট কৰক। চাটৰ পৰা ওলাই যোৱাৰ পিছত উদ্ধাৰ কৰিব নোৱাৰি';
			case 'profile.version': return 'V0.1 • সাৰ্বভৌম • অন-ডিভাইচ';
			case 'welcome.meet': return 'ZiqeX ক লগ পাওক';
			case 'welcome.at_edge': return 'এজত বুদ্ধিমত্তা (Edge)';
			case 'welcome.private': return 'ব্যক্তিগত আৰু এজ এআই\nZenteiQ ৰ দ্বাৰা';
			case 'welcome.begin': return 'অনবৰ্ডিং আৰম্ভ কৰক';
			case 'info.title': return 'আপোনাৰ চাৰিওফালে ডিজাইন কৰা বুদ্ধিমত্তা';
			case 'info.subtitle': return 'গোপনীয়তা, পচন্দ আৰু নিয়ন্ত্ৰণৰ সৈতে উপযোগী এআই।';
			case 'info.privacy_title': return 'গোপনীয়তা প্ৰথম';
			case 'info.privacy_desc': return 'ZiqeX বুদ্ধিমত্তা আৰু আপোনাৰ তথ্য আপোনাৰ ডিভাইচৰ ওচৰত ৰাখিবলৈ ডিজাইন কৰা হৈছে।';
			case 'info.hand_title': return 'আপোনাৰ হাতত বুদ্ধিমত্তা';
			case 'info.hand_desc': return 'দৈনন্দিন বুদ্ধিমত্তা, পোনপটীয়াকৈ আপোনাৰ ডিভাইচত উপলব্ধ।';
			case 'info.control_title': return 'আপোনাৰ তথ্য। আপোনাৰ নিয়ন্ত্ৰণ।';
			case 'info.control_desc': return 'কি ৰাখিব লাগে বাছনি কৰক, সংৰক্ষিতখিনি পৰিচালনা কৰক আৰু যাৰ প্ৰয়োজন নাই সেয়া মচি পেলাওক।';
			case 'info.place_title': return 'প্ৰতিটো ঠাইৰ বাবে ডিজাইন কৰা';
			case 'info.place_desc': return 'বিভিন্ন ভাষা, ডিভাইচ আৰু মানুহে প্ৰযুক্তি ব্যৱহাৰ কৰাৰ পদ্ধতিৰ বাবে নিৰ্মিত।';
			case 'info.footer': return 'আপোনাৰ বুদ্ধিমত্তা। আপোনাৰ ডিভাইচ। আপোনাৰ নিয়ন্ত্ৰণ।';
			case 'info.setup': return 'আপোনাৰ ZiqeX ছেট আপ কৰক';
			case 'languageSelection.appBar': return 'ভাষা বাছনি';
			case 'languageSelection.title': return 'আপোনাৰ ভাষা বাছনি কৰক';
			case 'languageSelection.subtitle': return 'আপোনাৰ ইন্টাৰফেচৰ বাবে ভাষা বাছনি কৰক।';
			case 'languageSelection.back': return 'পিছলৈ';
			case 'languageSelection.continueBtn': return 'আগবাঢ়ক';
			case 'pillars.appBar': return 'স্তম্ভ বাছনি';
			case 'pillars.title': return 'আপোনাৰ স্তম্ভসমূহ বাছনি কৰক';
			case 'pillars.subtitle': return 'আপুনি কোনবোৰ মূল ক্ষমতাত গুৰুত্ব দিব বিচাৰে বাছনি কৰক।';
			case 'pillars.general': return 'সাধাৰণ';
			case 'pillars.operational': return 'কাৰ্যকৰী';
			case 'pillars.personal': return 'ব্যক্তিগত পৰামৰ্শ';
			case 'pillars.workplace': return 'কৰ্মক্ষেত্ৰ';
			case 'pillars.culture': return 'সংস্কৃতি আৰু পৰিয়াল';
			case 'pillars.journal': return 'দৈনিক ডায়েৰী';
			case 'pillars.back': return 'পিছলৈ';
			case 'pillars.continueBtn': return 'আগবাঢ়ক';
			case 'modelDownload.title1': return 'BrahmAI-ক\nআপোনাৰ ওচৰলৈ ';
			case 'modelDownload.title2': return 'আনি আছোঁ।';
			case 'modelDownload.subtitle': return 'এককালীন। ইয়াৰ পিছত, আমরা আপোনাৰ তথ্য কেতিয়াও স্পৰ্শ নকৰোঁ।';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'প্ৰস্তুত';
			case 'modelDownload.validating': return 'পৰীক্ষা কৰি থকা হৈছে...';
			case 'modelDownload.langs': return '১৪ টা ভাষা';
			case 'modelDownload.toks': return '~১৮ tok/s';
			case 'modelDownload.ttft': return '~১৪০ ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'ত্ৰুটি: ${error}';
			case 'modelDownload.retry': return 'পুনৰ চেষ্টা কৰক';
			case 'modelDownload.open': return 'BrahmAI খোলক';
			case 'modelDownload.download': return 'মডেল ডাউনলোড কৰক';
			case 'modelDownload.later': return 'পাছত ছেটআপ কৰক';
			case 'modelDownload.continueSub': return 'মডেল ডাউনলোড নকৰাকৈ আগবাঢ়ক। আপুনি সাজু হ\'লে এটা যোগ কৰিব পাৰিব';
			case 'library_v2.subtitle': return 'আপোনাৰ AI সম্পদসমূহ পৰিচালনা কৰক';
			case 'library_v2.language_title': return 'ভাষা';
			case 'library_v2.language_desc': return 'আপোনাৰ পচন্দের ভাষাসমূহ বাছনি আৰু পৰিচালনা কৰক';
			case 'library_v2.model_title': return 'মডেল';
			case 'library_v2.model_desc': return 'উপলব্ধ AI মডেলসমূহ অন্বেষণ আৰু পৰিচালনা কৰক';
			case 'library_v2.saved_title': return 'সংৰক্ষিত';
			case 'library_v2.saved_desc': return 'আপোনাৰ প্ৰম্পট লাইব্ৰেৰী';
			case 'library_v2.skills_title': return 'দক্ষতা';
			case 'library_v2.skills_desc': return 'AI ক্ষমতা';
			case 'security_screen.appBar': return 'এপ সুৰক্ষা';
			case 'security_screen.global_protection': return 'গোলকীয় সুৰক্ষা';
			case 'security_screen.app_lock': return 'এপ লক';
			case 'security_screen.app_lock_sub': return 'ZiqeX খুলিবলৈ প্ৰমাণীকৰণৰ প্ৰয়োজন';
			case 'security_screen.auth_methods': return 'প্ৰমাণীকৰণ পদ্ধতিসমূহ';
			case 'security_screen.biometrics_title': return 'ডিভাইচ বায়োমেট্ৰিক্স';
			case 'security_screen.biometrics_sub': return 'আপোনাৰ ফিংগাৰপ্ৰিন্ট বা মুখৰ সহায়ত তৎক্ষণাত আনলক কৰক';
			case 'security_screen.pin_title': return 'ZiqeX পিন';
			case 'security_screen.pin_active': return 'পিন সক্ৰিয় হৈ আছে';
			case 'security_screen.pin_setup': return 'এপটো আনলক কৰিবলৈ এটা অনন্য ৪-অংকৰ ক\'ড ছেট কৰক';
			case 'security_screen.warning_title': return 'অত্যধিক ভুল প্ৰচেষ্টা';
			case 'security_screen.warning_sub': return 'যদি ১০ বাৰ ভুল পিন দিয়া হয়, তেন্তে ZiqeX স্বয়ংক্ৰিয়ভাৱে ৰিছেট হ\'ব। এই ডিভাইচত সংৰক্ষিত সকলো তথ্য স্থায়ীভাৱে মচি পেলোৱা হ\'ব';
			case 'security_screen.incomplete_title': return 'সুৰক্ষা ছেটআপ অসম্পূৰ্ণ';
			case 'security_screen.incomplete_content': return 'আপুনি এপ লক সক্ষম কৰিছে কিন্তু পিন বা বায়োমেট্ৰিক্স ছেট কৰা নাই। পদ্ধতি এটা কনফিগৰ নকৰালৈকে এপ লক নিষ্ক্ৰিয় হৈ থাকিব।';
			case 'security_screen.got_it': return 'বুজিলোঁ';
			case 'pin_setup.title_setup': return '৪-অংকৰ পিন ছেট কৰক';
			case 'pin_setup.subtitle_setup': return 'এপটো ব্যৱহাৰ কৰিবলৈ এটা সুৰক্ষিত ক’ড তৈয়াৰ কৰক';
			case 'pin_setup.title_confirm': return 'পিন নিশ্চিত কৰক';
			case 'pin_setup.subtitle_confirm': return 'যাচাই কৰিবলৈ আপোনাৰ ৪-অংকৰ ক’ডটো আকৌ লিখক';
			case 'pin_setup.title_verify': return 'বৰ্তমানৰ পিন লিখক';
			case 'pin_setup.subtitle_verify': return 'আগবাঢ়িবলৈ আপোনাৰ বৰ্তমানৰ ক’ডটো লিখক';
			case 'pin_setup.error_mismatch': return 'পিন দুটা মিল খোৱা নাই। আকৌ চেষ্টা কৰক।';
			case 'pin_setup.error_incorrect': return 'ভুল পিন। অনুগ্ৰহ কৰি আকৌ চেষ্টা কৰক।';
			case 'pin_setup.snack_success': return 'পিন সফলতাৰে ছেট কৰা হ’ল';
			case 'pin_mgmt.appBar': return 'এপ-নিৰ্দিষ্ট পিন';
			case 'pin_mgmt.change_title': return 'পিন সলনি কৰক';
			case 'pin_mgmt.change_sub': return 'আপোনাৰ ৪-অংকৰ ZiqeX সুৰক্ষা ক’ডটো আপডেট কৰক';
			case 'pin_mgmt.remove_title': return 'পিন আঁতৰাওক';
			case 'pin_mgmt.remove_sub': return 'ZiqeX-ৰ বাবে পিন ব্যৱহাৰ বন্ধ কৰক';
			case 'pin_mgmt.snack_removed': return 'পিন সফলতাৰে আঁতৰোৱা হ’ল';
			case 'lang_legacy.title1': return 'কোনটো ভাষা\n';
			case 'lang_legacy.title2': return 'আপোন যেন লাগে?';
			case 'lang_legacy.subtitle': return 'আপোনাৰ মাতৃভাষাত কণ্ঠ, পাঠ আৰু উত্তৰ। যিকোনো সময়তে সলনি কৰক।';
			case 'lang_legacy.first_reply': return 'প্ৰথম উত্তৰটো হ’ব';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - আপোনাৰ লিপিত লিখা আৰু কোৱা হ’ব';
			case 'lang_legacy.continueBtn': return 'আগবাঢ়ক';
			default: return null;
		}
	}
}

extension on _StringsBn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'নমস্কার';
			case 'mind_today': return 'আজ আপনার মনে কি আছে?';
			case 'on_device_only': return 'শুধুমাত্র এই ডিভাইসে';
			case 'offline': return 'অফলাইন';
			case 'start_something': return 'কিছু শুরু করুন';
			case 'ask_anything': return 'যেকোনো কিছু জিজ্ঞাসা করুন';
			case 'ask_anything_sub': return 'স্বাস্থ্য · আইনি · ব্যক্তিগত · কাজ';
			case 'voice_mode': return 'ভয়েস মোড';
			case 'voice_mode_sub': return 'আপনার ভাষায় কথা বলুন';
			case 'ask_image': return 'ছবি জিজ্ঞাসা করুন';
			case 'ask_image_sub': return 'ফর্ম, লেবেল, স্ক্রিপ্ট';
			case 'panchang': return 'পঞ্জিকা';
			case 'panchang_sub': return 'আজকের তিথি ও মুহূর্ত';
			case 'ephemeral': return 'ক্ষণস্থায়ী';
			case 'ephemeral_sub': return 'কোনো চিহ্ন ছাড়াই কথা বলুন';
			case 'recent': return 'সাম্প্রতিক';
			case 'home': return 'হোম';
			case 'chat': return 'চ্যাট';
			case 'library': return 'লাইব্রেরি';
			case 'you': return 'আপনি';
			case 'settings_pref': return 'প্রোফাইল সেটিংস';
			case 'preferences': return 'পছন্দ এবং নিরাপত্তা';
			case 'language': return 'ভাষা';
			case 'security': return 'নিরাপত্তা';
			case 'security_sub': return 'অ্যাপ লক · 2FA';
			case 'privacy_tiers': return 'গোপনীয়তা মোড';
			case 'privacy_tiers_sub': return '১টি সক্রিয় \'ZiqeX শোনার মোড\'';
			case 'storage_purge': return 'ডেটা এবং ধারণ';
			case 'storage_purge_sub': return 'ডিভাইসে ১৮৪ KB';
			case 'ephemeral_mode': return 'ছদ্মবেশী চ্যাট';
			case 'about': return 'সিস্টেম তথ্য';
			case 'reset_prototype': return 'প্রোটোটাইপ রিসেট করুন';
			case 'built_in_india': return 'ভারতে নির্মিত। বিশ্বের জন্য।';
			case 'library_sub': return 'প্রতিটি মডেল · প্রতিটি স্মৃতি · এই ডিভাইসে';
			case 'on_this_device': return 'এই ডিভাইসে';
			case 'active': return 'সক্রিয়';
			case 'add': return '+ যোগ করুন';
			case 'storage_used': return 'ব্যবহৃত স্টোরেজ';
			case 'health_question': return 'স্বাস্থ্যের প্রশ্ন';
			case 'family': return 'পরিবার';
			case 'work': return 'কাজ';
			case 'just_thinking': return 'শুধু ভাবছি';
			case 'profile.access': return 'অ্যাক্সেস';
			case 'profile.privacy': return 'গোপনীয়তা';
			case 'profile.system': return 'সিস্টেম';
			case 'profile.security_active': return 'নিরাপত্তা সক্রিয়';
			case 'profile.security_inactive': return 'নিরাপত্তা নিষ্ক্রিয়';
			case 'profile.dark_mode': return 'ডার্ক মোড';
			case 'profile.dark_mode_sub': return 'আলো এবং অন্ধকার ওয়ার্কস্পেস থিমের মধ্যে পরিবর্তন করুন';
			case 'profile.data_mgmt': return 'চ্যাট ডেটা ম্যানেজমেন্ট এবং ধারণ';
			case 'profile.data_mgmt_sub': return 'আপনার কথোপকথনের ইতিহাস পরিচালনা করুন';
			case 'profile.app_lock': return 'অ্যাপ লক';
			case 'profile.app_lock_sub': return 'আপনার আঙুলের ছাপ, মুখ বা পিন দিয়ে ZiqeX সুরক্ষিত করুন';
			case 'profile.incognito_sub': return 'ইতিহাসে সংরক্ষণ না করেই চ্যাট করুন। চ্যাট থেকে বের হওয়ার পর পুনরুদ্ধার করা যাবে না';
			case 'profile.version': return 'V0.1 • সার্বভৌম • অন-ডিভাইস';
			case 'welcome.meet': return 'ZiqeX-এর সাথে দেখা করুন';
			case 'welcome.at_edge': return 'প্রান্তে বুদ্ধিমত্তা';
			case 'welcome.private': return 'ব্যক্তিগত এবং এজ এআই\nZenteiQ দ্বারা';
			case 'welcome.begin': return 'অনবোর্ডিং শুরু করুন';
			case 'info.title': return 'আপনার চারপাশে ডিজাইন করা বুদ্ধিমত্তা';
			case 'info.subtitle': return 'অভিজ্ঞতায় নির্মিত গোপনীয়তা, পছন্দ এবং নিয়ন্ত্রণের সাথে দরকারী এআই।';
			case 'info.privacy_title': return 'গোপনীয়তা আগে';
			case 'info.privacy_desc': return 'ZiqeX বুদ্ধিমত্তা এবং আপনার তথ্য আপনার ডিভাইসের কাছে রাখার জন্য ডিজাইন করা হয়েছে।';
			case 'info.hand_title': return 'আপনার হাতে বুদ্ধিমত্তা';
			case 'info.hand_desc': return 'প্রতিদিনের বুদ্ধিমত্তা, সরাসরি আপনার ডিভাইসে উপলব্ধ।';
			case 'info.control_title': return 'আপনার ডেটা। আপনার নিয়ন্ত্রণ।';
			case 'info.control_desc': return 'কি রাখা হবে তা বেছে নিন, যা সংরক্ষিত আছে তা পরিচালনা করুন এবং যা আপনার আর প্রয়োজন নেই তা মুছে দিন।';
			case 'info.place_title': return 'প্রতিটি জায়গার জন্য ডিজাইন করা হয়েছে';
			case 'info.place_desc': return 'বিভিন্ন ভাষা, ডিভাইস এবং লোকেদের প্রযুক্তি ব্যবহারের পদ্ধতির জন্য তৈরি।';
			case 'info.footer': return 'Your intelligence. Your device. Your control.';
			case 'info.setup': return 'আপনার ZiqeX সেট আপ করুন';
			case 'languageSelection.appBar': return 'ভাষা নির্বাচন';
			case 'languageSelection.title': return 'আপনার ভাষা চয়ন করুন';
			case 'languageSelection.subtitle': return 'আপনার ইন্টারফেসের জন্য ভাষা নির্বাচন করুন।';
			case 'languageSelection.back': return 'পিছনে';
			case 'languageSelection.continueBtn': return 'চালিয়ে যান';
			case 'pillars.appBar': return 'স্তম্ভ নির্বাচন';
			case 'pillars.title': return 'আপনার স্তম্ভগুলি নির্বাচন করুন';
			case 'pillars.subtitle': return 'আপনি কোন মূল সক্ষমতাগুলিতে ফোকাস করতে চান তা চয়ন করুন।';
			case 'pillars.general': return 'সাধারণ';
			case 'pillars.operational': return 'কার্যকরী';
			case 'pillars.personal': return 'ব্যক্তিগত পরামর্শ';
			case 'pillars.workplace': return 'কর্মক্ষেত্র';
			case 'pillars.culture': return 'সংস্কৃতি এবং পরিবার';
			case 'pillars.journal': return 'দৈনিক ডায়েরি';
			case 'pillars.back': return 'পিছনে';
			case 'pillars.continueBtn': return 'চালিয়ে যান';
			case 'modelDownload.title1': return 'BrahmAI-কে\nআপনার কাছে ';
			case 'modelDownload.title2': return 'নিয়ে আসছি।';
			case 'modelDownload.subtitle': return 'এককালীন। এর পরে, আমরা আপনার ডেটা আর কখনও স্পর্শ করব না।';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'প্রস্তুত';
			case 'modelDownload.validating': return 'যাচাই করা হচ্ছে...';
			case 'modelDownload.langs': return '১৪টি ভাষা';
			case 'modelDownload.toks': return '~১৮ tok/s';
			case 'modelDownload.ttft': return '~১৪০ ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'ত্রুটি: ${error}';
			case 'modelDownload.retry': return 'আবার চেষ্টা করুন';
			case 'modelDownload.open': return 'BrahmAI খুলুন';
			case 'modelDownload.download': return 'মডেল ডাউনলোড করুন';
			case 'modelDownload.later': return 'পরে সেটআপ করুন';
			case 'modelDownload.continueSub': return 'মডেল ডাউনলোড না করেই এগিয়ে যান। আপনি প্রস্তুত হলে একটি যোগ করতে পারেন';
			case 'library_v2.subtitle': return 'আপনার AI সম্পদগুলি পরিচালনা করুন';
			case 'library_v2.language_title': return 'ভাষা';
			case 'library_v2.language_desc': return 'আপনার পছন্দের ভাষাগুলি চয়ন এবং পরিচালনা করুন';
			case 'library_v2.model_title': return 'মডেল';
			case 'library_v2.model_desc': return 'উপলব্ধ AI মডেলগুলি অন্বেষণ এবং পরিচালনা করুন';
			case 'library_v2.saved_title': return 'সংরক্ষিত';
			case 'library_v2.saved_desc': return 'আপনার প্রম্পট লাইব্রেরি';
			case 'library_v2.skills_title': return 'দক্ষতা';
			case 'library_v2.skills_desc': return 'AI ক্ষমতা';
			case 'biometric.vault': return 'ভল্ট সুরক্ষা';
			case 'biometric.setupTitle': return 'সুরক্ষিত লক সেটআপ';
			case 'biometric.setupSub': return 'আপনার পছন্দের প্রমাণীকরণ পদ্ধতির মাধ্যমে আপনার ভল্ট সুরক্ষিত করুন।';
			case 'biometric.deviceTitle': return 'ডিভাইস বায়োমেট্রিক্স';
			case 'biometric.deviceSub': return 'FaceID বা আঙুলের ছাপ ব্যবহার করুন';
			case 'biometric.pinTitle': return 'অ্যাপ-নির্দিষ্ট পিন';
			case 'biometric.pinSub': return 'একটি অনন্য ৪-অঙ্কের কোড সেট করুন';
			case 'biometric.dialogTitle': return 'বায়োমেট্রিক অ্যাক্সেসের অনুমতি দিন';
			case 'biometric.dialogSub': return 'ZiqeX আনলক করতে আপনার আঙুলের ছাপ বা ডিভাইসের মুখ শনাক্তকরণ ব্যবহার করুন';
			case 'biometric.cancel': return 'বাতিল করুন';
			case 'biometric.allow': return 'বায়োমেট্রিক্সের অনুমতি দিন';
			case 'security_screen.appBar': return 'অ্যাপ নিরাপত্তা';
			case 'security_screen.global_protection': return 'গ্লোবাল সুরক্ষা';
			case 'security_screen.app_lock': return 'অ্যাপ লক';
			case 'security_screen.app_lock_sub': return 'ZiqeX খোলার জন্য প্রমাণীকরণ প্রয়োজন';
			case 'security_screen.auth_methods': return 'প্রমাণীকরণ পদ্ধতি';
			case 'security_screen.biometrics_title': return 'ডিভাইস বায়োমেট্রিক্স';
			case 'security_screen.biometrics_sub': return 'আপনার ফিঙ্গারপ্রিন্ট বা মুখ দিয়ে তাৎক্ষণিকভাবে আনলক করুন';
			case 'security_screen.pin_title': return 'ZiqeX পিন';
			case 'security_screen.pin_active': return 'পিন সক্রিয় আছে';
			case 'security_screen.pin_setup': return 'অ্যাপটি আনলক করতে একটি অনন্য ৪-সংখ্যার কোড সেট করুন';
			case 'security_screen.warning_title': return 'অনেকগুলি ভুল প্রচেষ্টা';
			case 'security_screen.warning_sub': return 'যদি ১০ বার ভুল পিন দেওয়া হয়, তবে ZiqeX স্বয়ংক্রিয়ভাবে রিসেট হয়ে যাবে। এই ডিভাইসে সংরক্ষিত সমস্ত ডেটা স্থায়ীভাবে মুছে ফেলা হবে';
			case 'security_screen.incomplete_title': return 'নিরাপত্তা সেটআপ অসম্পূর্ণ';
			case 'security_screen.incomplete_content': return 'আপনি অ্যাপ লক সক্ষম করেছেন কিন্তু পিন বা বায়োমেট্রিক্স সেট করেননি। কোনো পদ্ধতি কনফিগার না করা পর্যন্ত অ্যাপ লক নিষ্ক্রিয় থাকবে।';
			case 'security_screen.got_it': return 'বুঝেছি';
			case 'data.appBar': return 'ডেটা ম্যানেজমেন্ট এবং\nধারণ';
			case 'data.summary': return 'স্টোরেজ সারাংশ';
			case 'data.totalUsed': return 'মোট ব্যবহৃত: ';
			case 'data.legendModel': return 'মডেল ওয়েট';
			case 'data.legendFree': return 'খালি জায়গা';
			case 'data.mgmt': return 'মডেল ম্যানেজমেন্ট';
			case 'data.deleteModels': return 'সব ডাউনলোড করা মডেল মুছে ফেলুন';
			case 'data.deleteModelsSub': return 'এই ডিভাইস থেকে সমস্ত স্থানীয় মডেল ওয়েট এবং ফাইন-টিউন করা প্যারামিটার সম্পূর্ণরূপে সরিয়ে দিন।';
			case 'data.selectDelete': return 'মুছে ফেলার জন্য মডেল নির্বাচন করুন';
			case 'data.autoDelete': return 'এর থেকে পুরানো চ্যাট স্বয়ংক্রিয়ভাবে মুছুন:';
			case 'data.autoDeleteSub': return 'এই সেটিংটি সমস্ত अनलिঙ্কড কথোপকথন মোডে প্রযোজ্য।';
			case 'data.modes': return 'মোডসমূহ';
			case 'data.noData': return 'কোনো সক্রিয় চ্যাট ডেটা নেই';
			case 'data.deleteAll': return 'সমস্ত ডেটা মুছুন';
			case 'data.authReq': return 'অ্যাপ লক পুনরায় প্রমাণীকরণ প্রয়োজন';
			case 'data.viewChats': return 'চ্যাট দেখুন';
			case 'data.deleteAllPillar': return 'সব মুছুন';
			case 'data.space': return 'জায়গা:';
			case 'data.activeInstances': return 'সক্রিয় ইনস্ট্যান্স:';
			case 'pin_setup.title_setup': return '৪-সংখ্যার পিন সেট করুন';
			case 'pin_setup.subtitle_setup': return 'অ্যাপটি অ্যাক্সেস করার জন্য একটি সুরক্ষিত কোড তৈরি করুন';
			case 'pin_setup.title_confirm': return 'পিন নিশ্চিত করুন';
			case 'pin_setup.subtitle_confirm': return 'যাচাই করতে আপনার ৪-সংখ্যার কোডটি পুনরায় লিখুন';
			case 'pin_setup.title_verify': return 'বর্তমান পিন লিখুন';
			case 'pin_setup.subtitle_verify': return 'চালিয়ে যেতে আপনার বিদ্যমান কোডটি লিখুন';
			case 'pin_setup.error_mismatch': return 'পিন মেলেনি। আবার চেষ্টা করুন।';
			case 'pin_setup.error_incorrect': return 'ভুল পিন। দয়া করে আবার চেষ্টা করুন।';
			case 'pin_setup.snack_success': return 'পিন সফলভাবে সেট করা হয়েছে';
			case 'pin_mgmt.appBar': return 'অ্যাপ-নির্দিষ্ট পিন';
			case 'pin_mgmt.change_title': return 'পিন পরিবর্তন করুন';
			case 'pin_mgmt.change_sub': return 'আপনার ৪-সংখ্যার ZiqeX সুরক্ষা কোডটি আপডেট করুন';
			case 'pin_mgmt.remove_title': return 'পিন সরান';
			case 'pin_mgmt.remove_sub': return 'ZiqeX-এর জন্য পিন অ্যাক্সেস বন্ধ করুন';
			case 'pin_mgmt.snack_removed': return 'পিন সফলভাবে সরানো হয়েছে';
			case 'lang_legacy.title1': return 'কোন ভাষাটি\n';
			case 'lang_legacy.title2': return 'নিজের মনে হয়?';
			case 'lang_legacy.subtitle': return 'আপনার মাতৃভাষায় ভয়েস, টেক্সট এবং উত্তর। যেকোনো সময় পরিবর্তন করুন।';
			case 'lang_legacy.first_reply': return 'প্রথম উত্তরটি হবে';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - আপনার লিপিতে লেখা এবং বলা হবে';
			case 'lang_legacy.continueBtn': return 'চালিয়ে যান';
			default: return null;
		}
	}
}

extension on _StringsGu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'નમસ્તે';
			case 'mind_today': return 'આજે તમારા મનમાં શું છે?';
			case 'on_device_only': return 'માત્ર આ ઉપકરણ પર';
			case 'offline': return 'ઓફલાઇન';
			case 'start_something': return 'કંઈક શરૂ કરો';
			case 'ask_anything': return 'કંઈપણ પૂછો';
			case 'ask_anything_sub': return 'સ્વાસ્થ્ય · કાનૂની · વ્યક્તિગત · કામ';
			case 'voice_mode': return 'વોઇસ મોડ';
			case 'voice_mode_sub': return 'તમારી ભાષામાં બોલો';
			case 'ask_image': return 'છબી પરથી પૂછો';
			case 'ask_image_sub': return 'ફોર્મ, લેબલ્સ, સ્ક્રિપ્ટો';
			case 'panchang': return 'પંચાંગ';
			case 'panchang_sub': return 'આજની તિથિ અને મુહૂર્ત';
			case 'ephemeral': return 'ક્ષણિક';
			case 'ephemeral_sub': return 'કોઈ નિશાન વગર બોલો';
			case 'recent': return 'તાજેતરનું';
			case 'home': return 'હોમ';
			case 'chat': return 'ચેટ';
			case 'library': return 'લાઇબ્રેરી';
			case 'you': return 'તમે';
			case 'settings_pref': return 'પ્રોફાઇલ સેટિંગ્સ';
			case 'preferences': return 'પસંદગીઓ અને સુરક્ષા';
			case 'language': return 'ભાષા';
			case 'security': return 'સુરક્ષા';
			case 'security_sub': return 'એપ્લિકેશન લોક · 2FA';
			case 'privacy_tiers': return 'ગોપનીયતા મોડ';
			case 'privacy_tiers_sub': return '1 સક્રિય \'ZiqeX લિસનિંગ મોડ\'';
			case 'storage_purge': return 'ડેટા અને રીટેન્શન';
			case 'storage_purge_sub': return 'ઉપકરણ પર 184 KB';
			case 'ephemeral_mode': return 'ઇનકોગ્નિટો ચેટ';
			case 'about': return 'સિસ્ટમ માહિતી';
			case 'reset_prototype': return 'પ્રોટોટાઇપ રીસેટ કરો';
			case 'built_in_india': return 'ભારતમાં નિર્મિત. વિશ્વ માટે.';
			case 'library_sub': return 'દરેક મોડેલ · દરેક મેમરી · આ ઉપકરણ પર';
			case 'on_this_device': return 'આ ઉપકરણ પર';
			case 'active': return 'સક્રિય';
			case 'add': return '+ ઉમેરો';
			case 'storage_used': return 'વપરાયેલ સ્ટોરેજ';
			case 'health_question': return 'સ્વાસ્થ્ય પ્રશ્ન';
			case 'family': return 'પરિવાર';
			case 'work': return 'કામ';
			case 'just_thinking': return 'બસ વિચારી રહ્યો છું';
			case 'profile.access': return 'ઍક્સેસ';
			case 'profile.privacy': return 'ગોપનીયતા';
			case 'profile.system': return 'સિસ્ટમ';
			case 'profile.security_active': return 'સુરક્ષા સક્રિય';
			case 'profile.security_inactive': return 'સુરક્ષા નિષ્ક્રિય';
			case 'profile.dark_mode': return 'ડાર્ક મોડ';
			case 'profile.dark_mode_sub': return 'લાઇટ અને ડાર્ક વર્કસ્પેસ થીમ વચ્ચે સ્વિચ કરો';
			case 'profile.data_mgmt': return 'ચેટ ડેટા મેનેજમેન્ટ અને રીટેન્શન';
			case 'profile.data_mgmt_sub': return 'તમારા વાર્તાલાપ ઇતિહાસનું સંચાલન કરો';
			case 'profile.app_lock': return 'એપ્લિકેશન લોક';
			case 'profile.app_lock_sub': return 'તમારી ફિંગરપ્રિન્ટ, ચહેરો અથવા પિન વડે ZiqeX ને સુરક્ષિત કરો';
			case 'profile.incognito_sub': return 'ઇતિહાસમાં સાચવ્યા વિના ચેટ કરો. ચેટમાંથી બહાર નીકળ્યા પછી પુનઃપ્રાપ્ત કરી શકાતું નથી';
			case 'profile.version': return 'V0.1 • સાર્વભૌમ • ઓન-ડિવાઇસ';
			case 'welcome.meet': return 'ZiqeX ને મળો';
			case 'welcome.at_edge': return 'ધાર પરની બુદ્ધિ (Edge)';
			case 'welcome.private': return 'ખાનગી અને એજ એઆઈ\nZenteiQ દ્વારા';
			case 'welcome.begin': return 'ઓનબોર્ડિંગ શરૂ કરો';
			case 'info.title': return 'તમારી આસપાસ રચાયેલ બુદ્ધિ';
			case 'info.subtitle': return 'અનુભવમાં બિલ્ટ ગોપનીયતા, પસંદગી અને નિયંત્રણ સાથે ઉપયોગી AI.';
			case 'info.privacy_title': return 'ગોપનીયતા પ્રથમ';
			case 'info.privacy_desc': return 'ZiqeX ને બુદ્ધિ અને તમારી માહિતી તમારા ઉપકરણની નજીક રાખવા માટે રચાયેલ છે.';
			case 'info.hand_title': return 'તમારા હાથમાં બુદ્ધિ';
			case 'info.hand_desc': return 'રોજિંદી બુદ્ધિ, સીધી તમારા ઉપકરણ પર ઉપલબ્ધ.';
			case 'info.control_title': return 'તમારો ડેટા. તમારું નિયંત્રણ.';
			case 'info.control_desc': return 'શું રાખવું તે પસંદ કરો, જે સંગ્રહિત છે તેનું સંચાલન કરો અને જેની તમને હવે જરૂર નથી તેને કાઢી નાખો.';
			case 'info.place_title': return 'દરેક જગ્યા માટે રચાયેલ';
			case 'info.place_desc': return 'વિવિધ ભાષાઓ, ઉપકરણો અને લોકો ટેકનોલોજીનો ઉપયોગ કરવાની રીતો માટે બનાવવામાં આવેલ.';
			case 'info.footer': return 'તમારી બુદ્ધિ. તમારું ઉપકરણ. તમારું નિયંત્રણ.';
			case 'info.setup': return 'તમારનું ZiqeX સેટ અપ કરો';
			case 'languageSelection.appBar': return 'ભાષા પસંદગી';
			case 'languageSelection.title': return 'તમારી ભાષા પસંદ કરો';
			case 'languageSelection.subtitle': return 'તમારા ઇન્ટરફેસ માટે ભાષા પસંદ કરો.';
			case 'languageSelection.back': return 'પાછળ';
			case 'languageSelection.continueBtn': return 'ચાલુ રાખો';
			case 'pillars.appBar': return 'પિલર્સ પસંદગી';
			case 'pillars.title': return 'તમારા પિલર્સ પસંદ કરો';
			case 'pillars.subtitle': return 'તમે જે મુખ્ય ક્ષમતાઓ પર ધ્યાન કેન્દ્રિત કરવા માંગો છો તે પસંદ કરો.';
			case 'pillars.general': return 'સામાન્ય';
			case 'pillars.operational': return 'ઓપરેશનલ';
			case 'pillars.personal': return 'વ્યક્તિગત સલાહ';
			case 'pillars.workplace': return 'કાર્યસ્થળ';
			case 'pillars.culture': return 'સંસ્કૃતિ અને પરિવાર';
			case 'pillars.journal': return 'દૈનિક જર્નલ';
			case 'pillars.back': return 'પાછળ';
			case 'pillars.continueBtn': return 'ચાલુ રાખો';
			case 'modelDownload.title1': return 'BrahmAI-ને\nતમારી પાસે ';
			case 'modelDownload.title2': return 'લાવી રહ્યા છીએ.';
			case 'modelDownload.subtitle': return 'એકવાર. આ પછી, અમે તમારા ડેટાને ફરી ક્યારેય સ્પર્શ કરીશું નહીં.';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'તૈયાર';
			case 'modelDownload.validating': return 'ચકાસણી થઈ રહી છે...';
			case 'modelDownload.langs': return '14 ભાષાઓ';
			case 'modelDownload.toks': return '~18 tok/s';
			case 'modelDownload.ttft': return '~140 ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'ભૂલ: ${error}';
			case 'modelDownload.retry': return 'ફરી પ્રયાસ કરો';
			case 'modelDownload.open': return 'BrahmAI ખોલો';
			case 'modelDownload.download': return 'મોડલ ડાઉનલોડ કરો';
			case 'modelDownload.later': return 'પછીથી સેટઅપ કરો';
			case 'modelDownload.continueSub': return 'મોડલ ડાઉનલોડ કર્યા વગર આગળ વધો. જ્યારે તમે તૈયાર હોવ ત્યારે તમે એક ઉમેરી શકો છો';
			case 'library_v2.subtitle': return 'તમારા AI સંસાધનોનું સંચાલન કરો';
			case 'library_v2.language_title': return 'ભાષા';
			case 'library_v2.language_desc': return 'તમારી પસંદગીની ભાષાઓ પસંદ કરો અને સંચાલિત કરો';
			case 'library_v2.model_title': return 'મોડલ';
			case 'library_v2.model_desc': return 'ઉપલબ્ધ AI મોડલ્સ શોધો અને સંચાલિત કરો';
			case 'library_v2.saved_title': return 'સાચવેલું';
			case 'library_v2.saved_desc': return 'તમારી પ્રોમ્પ્ટ લાઇબ્રેરી';
			case 'library_v2.skills_title': return 'કૌશલ્યો';
			case 'library_v2.skills_desc': return 'AI ક્ષમતાઓ';
			case 'biometric.vault': return 'વોલ્ટ સુરક્ષા';
			case 'biometric.setupTitle': return 'સુરક્ષિત લોક સેટઅપ';
			case 'biometric.setupSub': return 'તમારી પસંદગીની પ્રમાણીકરણ પદ્ધતિ વડે તમારા વોલ્ટને સુરક્ષિત કરો.';
			case 'biometric.deviceTitle': return 'ઉપકરણ બાયોમેટ્રિક્સ';
			case 'biometric.deviceSub': return 'FaceID અથવા ફિંગરપ્રિન્ટનો ઉપયોગ કરો';
			case 'biometric.pinTitle': return 'એપ્લિકેશન-વિશિષ્ટ પિન';
			case 'biometric.pinSub': return 'એક અનન્ય 4-અંકનો કોડ સેટ કરો';
			case 'biometric.dialogTitle': return 'બાયોમેટ્રિક ઍક્સેસની મંજૂરી આપો';
			case 'biometric.dialogSub': return 'ZiqeX ને અનલોક કરવા માટે તમારી ફિંગરપ્રિન્ટ અથવા ઉપકરણ ચહેરાની ઓળખનો ઉપયોગ કરો';
			case 'biometric.cancel': return 'રદ કરો';
			case 'biometric.allow': return 'બાયોમેટ્રિક્સને મંજૂરી આપો';
			case 'security_screen.appBar': return 'એપ સુરક્ષા';
			case 'security_screen.global_protection': return 'વૈશ્વિક સુરક્ષા';
			case 'security_screen.app_lock': return 'એપ લોક';
			case 'security_screen.app_lock_sub': return 'ZiqeX ખોલવા માટે પ્રમાણીકરણ જરૂરી છે';
			case 'security_screen.auth_methods': return 'પ્રમાણીકરણ પદ્ધતિઓ';
			case 'security_screen.biometrics_title': return 'ડિવાઇસ બાયોમેટ્રિક્સ';
			case 'security_screen.biometrics_sub': return 'તમારી ફિંગરપ્રિન્ટ અથવા ચહેરા વડે તરત જ અનલોક કરો';
			case 'security_screen.pin_title': return 'ZiqeX પિન';
			case 'security_screen.pin_active': return 'પિન સક્રિય છે';
			case 'security_screen.pin_setup': return 'એપને અનલોક કરવા માટે એક અનન્ય 4-અંકનો કોડ સેટ કરો';
			case 'security_screen.warning_title': return 'ખૂબ વધારે ખોટા પ્રયાસો';
			case 'security_screen.warning_sub': return 'જો ખોટો પિન 10 વાર દાખલ કરવામાં આવે તો, ZiqeX આપમેળે રીસેટ થઈ જશે. આ ડિવાઇસ પર સાચવેલ તમામ ડેટા કાયમી ધોરણે ભૂંસી નાખવામાં આવશે';
			case 'security_screen.incomplete_title': return 'સુરક્ષા સેટઅપ અપૂર્ણ';
			case 'security_screen.incomplete_content': return 'તમે એપ લોક સક્ષમ કર્યું છે પરંતુ પિન અથવા બાયોમેટ્રિક્સ સેટ નથી કર્યું. જ્યાં સુધી પદ્ધતિ ગોઠવવામાં ન આવે ત્યાં સુધી એપ લોક અક્ષમ રહેશે.';
			case 'security_screen.got_it': return 'સમજાઈ ગયું';
			case 'data.appBar': return 'ડેટા મેનેજમેન્ટ અને\nરીટેન્શન';
			case 'data.summary': return 'સ્ટોરેજ સારાંશ';
			case 'data.totalUsed': return 'કુલ વપરાયેલ: ';
			case 'data.legendModel': return 'મોડેલ વેઇટ્સ';
			case 'data.legendFree': return 'ખાલી જગ્યા';
			case 'data.mgmt': return 'મોડેલ મેનેજમેન્ટ';
			case 'data.deleteModels': return 'ડાઉનલોડ કરેલા બધા મોડેલ કાઢી નાખો';
			case 'data.deleteModelsSub': return 'આ ઉપકરણમાંથી બધા સ્થાનિક મોડેલ વેઇટ્સ અને પેરામીટર્સ સંપૂર્ણપણે દૂર કરો.';
			case 'data.selectDelete': return 'કાઢી નાખવા માટે મોડેલ પસંદ કરો';
			case 'data.autoDelete': return 'આનાથી જૂની ચેટ્સ આપમેળે કાઢી નાખો:';
			case 'data.autoDeleteSub': return 'આ સેટિંગ તમામ અનલિંક કરેલ વાતચીત મોડ્સ પર લાગુ થાય છે.';
			case 'data.modes': return 'મોડ્સ';
			case 'data.noData': return 'કોઈ સક્રિય ચેટ ડેટા નથી';
			case 'data.deleteAll': return 'બધો ડેટા કાઢી નાખો';
			case 'data.authReq': return 'એપ્લિકેશન લોક પુનઃ-પ્રમાણીકરણ જરૂરી છે';
			case 'data.viewChats': return 'ચેટ જુઓ';
			case 'data.deleteAllPillar': return 'બધું કાઢી નાખો';
			case 'data.space': return 'જગ્યા:';
			case 'data.activeInstances': return 'સક્રિય ઇન્સ્ટન્સ:';
			case 'pin_setup.title_setup': return '4-અંકનો પિન સેટ કરો';
			case 'pin_setup.subtitle_setup': return 'એપ્લિકેશન એક્સેસ કરવા માટે સુરક્ષિત કોડ બનાવો';
			case 'pin_setup.title_confirm': return 'પિનની પુષ્ટિ કરો';
			case 'pin_setup.subtitle_confirm': return 'ચકાસવા માટે તમારો 4-અંકનો કોડ ફરીથી દાખલ કરો';
			case 'pin_setup.title_verify': return 'વર્તમાન પિન દાખલ કરો';
			case 'pin_setup.subtitle_verify': return 'ચાલુ રાખવા માટે તમારો હાલનો કોડ દાખલ કરો';
			case 'pin_setup.error_mismatch': return 'પિન મેચ થતા નથી. ફરી પ્રયાસ કરો.';
			case 'pin_setup.error_incorrect': return 'ખોટો પિન. મહેરબાની કરીને ફરી પ્રયાસ કરો.';
			case 'pin_setup.snack_success': return 'પિન સફળતાપૂર્વક સેટ થયો';
			case 'pin_mgmt.appBar': return 'એપ્લિકેશન-વિશિષ્ટ પિન';
			case 'pin_mgmt.change_title': return 'પિન બદલો';
			case 'pin_mgmt.change_sub': return 'તમારો 4-અંકનો ZiqeX સુરક્ષા કોડ અપડેટ કરો';
			case 'pin_mgmt.remove_title': return 'પિન દૂર કરો';
			case 'pin_mgmt.remove_sub': return 'ZiqeX માટે પિન એક્સેસ બંધ કરો';
			case 'pin_mgmt.snack_removed': return 'પિન સફળતાપૂર્વક દૂર કરવામાં આવ્યો';
			case 'lang_legacy.title1': return 'કઈ ભાષા\n';
			case 'lang_legacy.title2': return 'ઘર જેવી લાગે છે?';
			case 'lang_legacy.subtitle': return 'તમારી માતૃભાષામાં અવાજ, લખાણ અને જવાબો. ગમે ત્યારે બદલો.';
			case 'lang_legacy.first_reply': return 'પહેલો જવાબ આ હશે';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - તમારી લિપિમાં લખાયેલ અને બોલાયેલ';
			case 'lang_legacy.continueBtn': return 'ચાલુ રાખો';
			default: return null;
		}
	}
}

extension on _StringsHi {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'नमस्ते';
			case 'mind_today': return 'आज आपके मन में क्या है?';
			case 'on_device_only': return 'केवल इसी डिवाइस पर';
			case 'offline': return 'ऑफलाइन';
			case 'start_something': return 'कुछ शुरू करें';
			case 'ask_anything': return 'कुछ भी पूछें';
			case 'ask_anything_sub': return 'स्वास्थ्य · कानूनी · व्यक्तिगत · कार्य';
			case 'voice_mode': return 'वॉइस मोड';
			case 'voice_mode_sub': return 'अपनी भाषा में बोलें';
			case 'ask_image': return 'इमेज से पूछें';
			case 'ask_image_sub': return 'फॉर्म, लेबल, स्क्रिप्ट';
			case 'panchang': return 'पंचांग';
			case 'panchang_sub': return 'आज की तिथि और मुहूर्त';
			case 'ephemeral': return 'अल्पकालिक';
			case 'ephemeral_sub': return 'बिना किसी निशान के बोलें';
			case 'recent': return 'हाल ही में';
			case 'home': return 'होम';
			case 'chat': return 'चैट';
			case 'library': return 'लाइब्रेरी';
			case 'you': return 'आप';
			case 'settings_pref': return 'प्रोफ़ाइल सेटिंग्स';
			case 'preferences': return 'प्राथमिकताएं और सुरक्षा';
			case 'language': return 'भाषा';
			case 'security': return 'सुरक्षा';
			case 'security_sub': return 'ऐप लॉक · 2FA';
			case 'privacy_tiers': return 'गोपनीयता मोड';
			case 'privacy_tiers_sub': return '1 सक्रिय \'ZiqeX सुनने का मोड\'';
			case 'storage_purge': return 'डेटा और प्रतिधारण';
			case 'storage_purge_sub': return 'डिवाइस पर 184 KB';
			case 'ephemeral_mode': return 'गुप्त चैट';
			case 'about': return 'सिस्टम जानकारी';
			case 'reset_prototype': return 'प्रोटोटाइप रीसेट करें';
			case 'built_in_india': return 'भारत में निर्मित। दुनिया के लिए।';
			case 'library_sub': return 'हर मॉडल · हर मेमोरी · इस डिवाइस पर';
			case 'on_this_device': return 'इस डिवाइस पर';
			case 'active': return 'सक्रिय';
			case 'add': return '+ जोड़ें';
			case 'storage_used': return 'प्रयुक्त स्टोरेज';
			case 'health_question': return 'स्वास्थ्य प्रश्न';
			case 'family': return 'परिवार';
			case 'work': return 'कार्य';
			case 'just_thinking': return 'बस सोच रहा हूँ';
			case 'profile.access': return 'पहुंच';
			case 'profile.privacy': return 'गोपनीयता';
			case 'profile.system': return 'सिस्टम';
			case 'profile.security_active': return 'सुरक्षा सक्रिय';
			case 'profile.security_inactive': return 'सुरक्षा निष्क्रिय';
			case 'profile.dark_mode': return 'डार्क मोड';
			case 'profile.dark_mode_sub': return 'लाइट और डार्क वर्कस्पेस थीम के बीच स्विच करें';
			case 'profile.data_mgmt': return 'चैट डेटा प्रबंधन और प्रतिधारण';
			case 'profile.data_mgmt_sub': return 'अपने बातचीत इतिहास को प्रबंधित करें';
			case 'profile.app_lock': return 'ऐप लॉक';
			case 'profile.app_lock_sub': return 'अपने फिंगरप्रिंट, चेहरे या पिन से ZiqeX को सुरक्षित रखें';
			case 'profile.incognito_sub': return 'इतिहास में सहेजे बिना चैट करें। चैट से बाहर निकलने के बाद पुनर्प्राप्त नहीं किया जा सकता';
			case 'profile.version': return 'V0.1 • संप्रभु • ऑन-डिवाइस';
			case 'welcome.meet': return 'ZiqeX से मिलें';
			case 'welcome.at_edge': return 'एज पर इंटेलिजेंस';
			case 'welcome.private': return 'प्राइवेट और एज एआई\nZenteiQ द्वारा';
			case 'welcome.begin': return 'ऑनबोर्डिंग शुरू करें';
			case 'info.title': return 'आपके इर्द-गिर्द डिज़ाइन किया गया इंटेलिजेंस';
			case 'info.subtitle': return 'अनुभव में निर्मित गोपनीयता, विकल्प और नियंत्रण के साथ उपयोगी एआई।';
			case 'info.privacy_title': return 'गोपनीयता पहले';
			case 'info.privacy_desc': return 'ZiqeX को इंटेलिजेंस और आपकी जानकारी को आपके डिवाइस के करीब रखने के लिए डिज़ाइन किया गया है।';
			case 'info.hand_title': return 'आपके हाथ में इंटेलिजेंस';
			case 'info.hand_desc': return 'रोजमर्रा की इंटेलिजेंस, सीधे आपके डिवाइस पर उपलब्ध।';
			case 'info.control_title': return 'आपका डेटा। आपका नियंत्रण।';
			case 'info.control_desc': return 'चुनें कि क्या रखा जाए, जो संग्रहीत है उसे प्रबंधित करें, और जिसे आपको अब आवश्यकता नहीं है उसे हटा दें।';
			case 'info.place_title': return 'हर जगह के लिए डिज़ाइन किया गया';
			case 'info.place_desc': return 'विभिन्न भाषाओं, उपकरणों और लोगों द्वारा तकनीक का उपयोग करने के तरीकों के लिए बनाया गया।';
			case 'info.footer': return 'आपका इंटेलिजेंस। आपका डिवाइस। आपका नियंत्रण।';
			case 'info.setup': return 'अपना ZiqeX सेटअप करें';
			case 'languageSelection.appBar': return 'भाषा चयन';
			case 'languageSelection.title': return 'अपनी भाषा चुनें';
			case 'languageSelection.subtitle': return 'अपने इंटरफ़ेस के लिए भाषा चुनें।';
			case 'languageSelection.back': return 'पीछे';
			case 'languageSelection.continueBtn': return 'जारी रखें';
			case 'pillars.appBar': return 'पिलर चयन';
			case 'pillars.title': return 'अपने पिलर चुनें';
			case 'pillars.subtitle': return 'उन मुख्य क्षमताओं को चुनें जिन पर आप ध्यान केंद्रित करना चाहते हैं।';
			case 'pillars.general': return 'सामान्य';
			case 'pillars.operational': return 'परिचालन';
			case 'pillars.personal': return 'व्यक्तिगत परामर्श';
			case 'pillars.workplace': return 'कार्यस्थल';
			case 'pillars.culture': return 'संस्कृति और परिवार';
			case 'pillars.journal': return 'दैनिक डायरी';
			case 'pillars.back': return 'पीछे';
			case 'pillars.continueBtn': return 'जारी रखें';
			case 'modelDownload.title1': return 'ला रहे हैं\nBrahmAI ';
			case 'modelDownload.title2': return 'घर।';
			case 'modelDownload.subtitle': return 'एक बार का सेटअप। इसके बाद, हम आपका डेटा फिर कभी नहीं छुएंगे।';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'तैयार';
			case 'modelDownload.validating': return 'पुष्टि हो रही है...';
			case 'modelDownload.langs': return '14 भाषाएं';
			case 'modelDownload.toks': return '~18 tok/s';
			case 'modelDownload.ttft': return '~140 ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'त्रुटि: ${error}';
			case 'modelDownload.retry': return 'फिर से प्रयास करें';
			case 'modelDownload.open': return 'BrahmAI खोलें';
			case 'modelDownload.download': return 'मॉडल डाउनलोड करें';
			case 'modelDownload.later': return 'बाद में सेटअप करें';
			case 'modelDownload.continueSub': return 'बिना मॉडल डाउनलोड किए जारी रखें। आप तैयार होने पर इसे जोड़ सकते हैं';
			case 'library_v2.subtitle': return 'अपने एआई संसाधनों को प्रबंधित करें';
			case 'library_v2.language_title': return 'भाषा';
			case 'library_v2.language_desc': return 'अपनी पसंदीदा भाषाएं चुनें और प्रबंधित करें';
			case 'library_v2.model_title': return 'मॉडल';
			case 'library_v2.model_desc': return 'उपलब्ध एआई मॉडल खोजें और प्रबंधित करें';
			case 'library_v2.saved_title': return 'सहेजा गया';
			case 'library_v2.saved_desc': return 'आपकी प्रॉम्प्ट लाइब्रेरी';
			case 'library_v2.skills_title': return 'कौशल';
			case 'library_v2.skills_desc': return 'एआई क्षमताएं';
			case 'biometric.vault': return 'वॉल्ट सुरक्षा';
			case 'biometric.setupTitle': return 'सुरक्षित लॉक सेटअप';
			case 'biometric.setupSub': return 'अपनी पसंदीदा प्रमाणीकरण विधि के साथ अपने वॉल्ट को सुरक्षित रखें।';
			case 'biometric.deviceTitle': return 'डिवाइस बायोमेट्रिक्स';
			case 'biometric.deviceSub': return 'FaceID या फिंगरप्रिंट का उपयोग करें';
			case 'biometric.pinTitle': return 'ऐप-विशिष्ट पिन';
			case 'biometric.pinSub': return 'एक अनूठा 4-अंकीय कोड सेट करें';
			case 'biometric.dialogTitle': return 'बायोमेट्रिक एक्सेस की अनुमति दें';
			case 'biometric.dialogSub': return 'ZiqeX को अनलॉक करने के लिए अपने फिंगरप्रिंट या डिवाइस फेस रिकग्निशन का उपयोग करें';
			case 'biometric.cancel': return 'रद्द करें';
			case 'biometric.allow': return 'बायोमेट्रिक्स की अनुमति दें';
			case 'security_screen.appBar': return 'ऐप सुरक्षा';
			case 'security_screen.global_protection': return 'वैश्विक सुरक्षा';
			case 'security_screen.app_lock': return 'ऐप लॉक';
			case 'security_screen.app_lock_sub': return 'ZiqeX खोलने के लिए प्रमाणीकरण की आवश्यकता है';
			case 'security_screen.auth_methods': return 'प्रमाणीकरण विधियाँ';
			case 'security_screen.biometrics_title': return 'डिवाइस बायोमेट्रिक्स';
			case 'security_screen.biometrics_sub': return 'अपने फिंगरप्रिंट या चेहरे से तुरंत अनलॉक करें';
			case 'security_screen.pin_title': return 'ZiqeX पिन';
			case 'security_screen.pin_active': return 'पिन सक्रिय है';
			case 'security_screen.pin_setup': return 'ऐप को अनलॉक करने के लिए एक अद्वितीय 4-अंकीय कोड सेट करें';
			case 'security_screen.warning_title': return 'बहुत अधिक गलत प्रयास';
			case 'security_screen.warning_sub': return 'यदि 10 बार गलत पिन दर्ज किया जाता है, तो ZiqeX स्वचालित रूप से रीसेट हो जाएगा। इस डिवाइस पर सहेजा गया सभी डेटा स्थायी रूप से हटा दिया जाएगा';
			case 'security_screen.incomplete_title': return 'सुरक्षा सेटअप अधूरा';
			case 'security_screen.incomplete_content': return 'आपने ऐप लॉक सक्षम कर दिया है लेकिन पिन या बायोमेट्रिक्स सेट नहीं किया है। ऐप लॉक तब तक अक्षम रहेगा जब तक कि कोई विधि कॉन्फ़िगर नहीं की जाती है।';
			case 'security_screen.got_it': return 'ठीक है';
			case 'data.appBar': return 'डेटा प्रबंधन और\nप्रतिधारण';
			case 'data.summary': return 'स्टोरेज सारांश';
			case 'data.totalUsed': return 'कुल उपयोग किया गया: ';
			case 'data.legendModel': return 'मॉडल वेट';
			case 'data.legendFree': return 'खाली जगह';
			case 'data.mgmt': return 'मॉडल प्रबंधन';
			case 'data.deleteModels': return 'सभी डाउनलोड किए गए मॉडल हटाएं';
			case 'data.deleteModelsSub': return 'इस डिवाइस से सभी स्थानीय मॉडल वेट और फाइन-ट्यून्ड पैरामीटर पूरी तरह से हटा दें।';
			case 'data.selectDelete': return 'हटाने के लिए मॉडल चुनें';
			case 'data.autoDelete': return 'इससे पुराने चैट स्वतः हटाएं:';
			case 'data.autoDeleteSub': return 'यह सेटिंग सभी अनलिंक्ड बातचीत मोड पर लागू होती है।';
			case 'data.modes': return 'मोड';
			case 'data.noData': return 'कोई सक्रिय चैट डेटा नहीं';
			case 'data.deleteAll': return 'सारा डेटा हटाएं';
			case 'data.authReq': return 'ऐप लॉक पुन: प्रमाणीकरण की आवश्यकता है';
			case 'data.viewChats': return 'चैट देखें';
			case 'data.deleteAllPillar': return 'सभी हटाएं';
			case 'data.space': return 'जगह:';
			case 'data.activeInstances': return 'सक्रिय इंस्टेंस:';
			case 'pin_setup.title_setup': return '4-अंकों का पिन सेट करें';
			case 'pin_setup.subtitle_setup': return 'ऐप एक्सेस करने के लिए एक सुरक्षित कोड बनाएं';
			case 'pin_setup.title_confirm': return 'पिन की पुष्टि करें';
			case 'pin_setup.subtitle_confirm': return 'सत्यापित करने के लिए अपना 4-अंकों का कोड फिर से दर्ज करें';
			case 'pin_setup.title_verify': return 'वर्तमान पिन दर्ज करें';
			case 'pin_setup.subtitle_verify': return 'जारी रखने के لیے अपना मौजूदा कोड दर्ज करें';
			case 'pin_setup.error_mismatch': return 'पिन मेल नहीं खाते। फिर से कोशिश करें।';
			case 'pin_setup.error_incorrect': return 'गलत पिन। कृपया फिर से कोशिश करें।';
			case 'pin_setup.snack_success': return 'पिन सफलतापूर्वक सेट हो गया';
			case 'pin_mgmt.appBar': return 'ऐप-विशिष्ट पिन';
			case 'pin_mgmt.change_title': return 'पिन बदलें';
			case 'pin_mgmt.change_sub': return 'अपना 4-अंकों का ZiqeX सुरक्षा कोड अपडेट करें';
			case 'pin_mgmt.remove_title': return 'पिन हटाएं';
			case 'pin_mgmt.remove_sub': return 'ZiqeX के लिए पिन एक्सेस बंद करें';
			case 'pin_mgmt.snack_removed': return 'पिन सफलतापूर्वक हटा दिया गया';
			case 'lang_legacy.title1': return 'कौन सी भाषा\n';
			case 'lang_legacy.title2': return 'घर जैसी लगती है?';
			case 'lang_legacy.subtitle': return 'अपनी मातृभाषा में वॉयस, टेक्स्ट और जवाब। कभी भी बदलें।';
			case 'lang_legacy.first_reply': return 'पहला जवाब यह होगा';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - आपकी लिपि में लिखा और बोला गया';
			case 'lang_legacy.continueBtn': return 'जारी रखें';
			default: return null;
		}
	}
}

extension on _StringsKn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'ನಮಸ್ಕಾರ';
			case 'mind_today': return 'ಇಂದು ನಿಮ್ಮ ಮನಸ್ಸಿನಲ್ಲಿ ಏನಿದೆ?';
			case 'on_device_only': return 'ಈ ಸಾಧನದಲ್ಲಿ ಮಾತ್ರ';
			case 'offline': return 'ಆಫ್‌ಲೈನ್';
			case 'start_something': return 'ನವೀನತೆಯನ್ನು ಪ್ರಾರಂಭಿಸಿ';
			case 'ask_anything': return 'ಏನನ್ನಾದರೂ ಕೇಳಿ';
			case 'ask_anything_sub': return 'ಆರೋಗ್ಯ · ಕಾನೂನು · ವೈಯಕ್ತಿಕ · ಕೆಲಸ';
			case 'voice_mode': return 'ಧ್ವನಿ ಮೋಡ್';
			case 'voice_mode_sub': return 'ನಿಮ್ಮ ಭಾಷೆಯಲ್ಲಿ ಮಾತನಾಡಿ';
			case 'ask_image': return 'ಚಿತ್ರದ ಮೂಲಕ ಕೇಳಿ';
			case 'ask_image_sub': return 'ಫಾರ್ಮ್‌ಗಳು, ಲೇಬಲ್‌ಗಳು, ಸ್ಕ್ರಿಪ್ಟ್‌ಗಳು';
			case 'panchang': return 'ಪಂಚಾಂಗ';
			case 'panchang_sub': return 'ಇಂದಿನ ತಿಥಿ ಮತ್ತು ಮುಹೂರ್ತ';
			case 'ephemeral': return 'ಕ್ಷಣಿಕ';
			case 'ephemeral_sub': return 'ಯಾವುದೇ ಕುರುಹು ಇಲ್ಲದೆ ಮಾತನಾಡಿ';
			case 'recent': return 'ಇತ್ತೀಚಿನದು';
			case 'home': return 'ಹೋಮ್';
			case 'chat': return 'ಚಾಟ್';
			case 'library': return 'ಲೈಬ್ರರಿ';
			case 'you': return 'ನೀವು';
			case 'settings_pref': return 'ಪ್ರೊಫೈಲ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';
			case 'preferences': return 'ಆದ್ಯತೆಗಳು ಮತ್ತು ಭದ್ರತೆ';
			case 'language': return 'ಭಾಷೆ';
			case 'security': return 'ಭದ್ರತೆ';
			case 'security_sub': return 'ಅಪ್ಲಿಕೇಶನ್ ಲಾಕ್ · 2FA';
			case 'privacy_tiers': return 'ಗೌಪ್ಯತೆ ಮೋಡ್';
			case 'privacy_tiers_sub': return '1 ಸಕ್ರಿಯ \'ZiqeX ಆಲಿಸುವ ಮೋಡ್\'';
			case 'storage_purge': return 'ಡೇಟಾ ಮತ್ತು ಸಂಗ್ರಹಣೆ';
			case 'storage_purge_sub': return 'ಸಾಧನದಲ್ಲಿ 184 KB';
			case 'ephemeral_mode': return 'ಅನಾಮಧೇಯ ಚಾಟ್';
			case 'about': return 'ಸಿಸ್ಟಮ್ ಮಾಹಿತಿ';
			case 'reset_prototype': return 'ಪ್ರೊಟೊಟೈಪ್ ಮರುಹೊಂದಿಸಿ';
			case 'built_in_india': return 'ಭಾರತದಲ್ಲಿ ನಿರ್ಮಿಸಲಾಗಿದೆ. ಜಗತ್ತಿಗಾಗಿ.';
			case 'library_sub': return 'ಪ್ರತಿ ಮಾಡೆಲ್ · ಪ್ರತಿ ನೆನಪು · ಈ ಸಾಧನದಲ್ಲಿ';
			case 'on_this_device': return 'ಈ ಸಾಧನದಲ್ಲಿ';
			case 'active': return 'ಸಕ್ರಿಯ';
			case 'add': return '+ ಸೇರಿಸಿ';
			case 'storage_used': return 'ಬಳಸಿದ ಸಂಗ್ರಹಣೆ';
			case 'health_question': return 'ಆರೋಗ್ಯ ಪ್ರಶ್ನೆ';
			case 'family': return 'ಕುಟುಂಬ';
			case 'work': return 'ಕೆಲಸ';
			case 'just_thinking': return 'ಕೇವಲ ಆಲೋಚನೆ';
			case 'profile.access': return 'ಪ್ರವೇಶ';
			case 'profile.privacy': return 'ಗೌಪ್ಯತೆ';
			case 'profile.system': return 'ಸಿಸ್ಟಮ್';
			case 'profile.security_active': return 'ಭದ್ರತೆ ಸಕ್ರಿಯವಾಗಿದೆ';
			case 'profile.security_inactive': return 'ಭದ್ರತೆ ನಿಷ್ಕ್ರಿಯವಾಗಿದೆ';
			case 'profile.dark_mode': return 'ಡಾರ್ಕ್ ಮೋಡ್';
			case 'profile.dark_mode_sub': return 'ಲೈಟ್ ಮತ್ತು ಡಾರ್ಕ್ ವರ್ಕ್‌ಸ್ಪೇಸ್ ಥೀಮ್‌ಗಳ ನಡುವೆ ಬದಲಿಸಿ';
			case 'profile.data_mgmt': return 'ಚಾಟ್ ಡೇಟಾ ನಿರ್ವಹಣೆ ಮತ್ತು ಸಂಗ್ರಹಣೆ';
			case 'profile.data_mgmt_sub': return 'ನಿಮ್ಮ ಸಂಭಾಷಣೆ ಇತಿಹಾಸವನ್ನು ನಿರ್ವಹಿಸಿ';
			case 'profile.app_lock': return 'ಅಪ್ಲಿಕೇಶನ್ ಲಾಕ್';
			case 'profile.app_lock_sub': return 'ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್, ಮುಖ ಅಥವಾ ಪಿನ್ ಮೂಲಕ ZiqeX ಅನ್ನು ಸುರಕ್ಷಿತಗೊಳಿಸಿ';
			case 'profile.incognito_sub': return 'ಇತಿಹಾಸದಲ್ಲಿ ಉಳಿಸದೆ ಚಾಟ್ ಮಾಡಿ. ಚಾಟ್‌ನಿಂದ ನಿರ್ಗಮಿಸಿದ ನಂತರ ಮರುಪಡೆಯಲು ಸಾಧ್ಯವಿಲ್ಲ';
			case 'profile.version': return 'V0.1 • ಸಾರ್ವಭೌಮ • ಆನ್-ಡಿವೈಸ್';
			case 'welcome.meet': return 'ZiqeX ಅನ್ನು ಭೇಟಿ ಮಾಡಿ';
			case 'welcome.at_edge': return 'ಎಡ್ಜ್‌ನಲ್ಲಿ ಬುದ್ಧಿವಂತಿಕೆ';
			case 'welcome.private': return 'ಖಾಸಗಿ ಮತ್ತು ಎಡ್ಜ್ AI\nZenteiQ ಇಂದ';
			case 'welcome.begin': return 'ಆನ್‌ಬೋರ್ಡಿಂಗ್ ಪ್ರಾರಂಭಿಸಿ';
			case 'info.title': return 'ನಿಮಗಾಗಿ ಬುದ್ಧಿವಂತಿಕೆ';
			case 'info.subtitle': return 'ಗೌಪ್ಯತೆ ಮತ್ತು ಪೂರ್ಣ ನಿಯಂತ್ರಣದೊಂದಿಗೆ AI ಅನುಭವ.';
			case 'info.privacy_title': return 'ಗೌಪ್ಯತೆ ಮೊದಲು';
			case 'info.privacy_desc': return 'ನಿಮ್ಮ ಮಾಹಿತಿ ನಿಮ್ಮ ಸಾಧನದಲ್ಲೇ ಸುರಕ್ಷಿತವಾಗಿರುತ್ತದೆ.';
			case 'info.hand_title': return 'ಕೈಯಲ್ಲಿ ಬುದ್ಧಿವಂತಿಕೆ';
			case 'info.hand_desc': return 'ದೈನಂದಿನ ಅಗತ್ಯಗಳಿಗಾಗಿ ಬುದ್ಧಿವಂತಿಕೆ ನಿಮ್ಮ ಸಾಧನದಲ್ಲೇ ಲಭ್ಯ.';
			case 'info.control_title': return 'ಪೂರ್ಣ ನಿಯಂತ್ರಣ';
			case 'info.control_desc': return 'ಅಗತ್ಯವಿರುವುದನ್ನು ಇಟ್ಟುಕೊಳ್ಳಿ, ಬೇಡದ್ದನ್ನು ಅಳಿಸಿ.';
			case 'info.place_title': return 'ಎಲ್ಲರಿಗೂ ವಿನ್ಯಾಸ';
			case 'info.place_desc': return 'ವಿವಿಧ ಭಾಷೆ ಮತ್ತು ಸಾಧನಗಳಿಗಾಗಿ ನಿರ್ಮಿಸಲಾಗಿದೆ.';
			case 'info.footer': return 'ನಿಮ್ಮ ಬುದ್ಧಿವಂತಿಕೆ. ನಿಮ್ಮ ಸಾಧನ. ನಿಮ್ಮ ನಿಯಂತ್ರಣ.';
			case 'info.setup': return 'ಸ್ಥಾಪನೆ';
			case 'languageSelection.appBar': return 'ಭಾಷೆಯ ಆಯ್ಕೆ';
			case 'languageSelection.title': return 'ನಿಮ್ಮ ಭಾಷೆಯನ್ನು ಆರಿಸಿ';
			case 'languageSelection.subtitle': return 'ನಿಮ್ಮ ಇಂಟರ್ಫೇಸ್‌ಗಾಗಿ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ.';
			case 'languageSelection.back': return 'ಹಿಂದಕ್ಕೆ';
			case 'languageSelection.continueBtn': return 'ಮುಂದುವರಿಸಿ';
			case 'pillars.appBar': return 'ಪಿಲ್ಲರ್‌ಗಳ ಆಯ್ಕೆ';
			case 'pillars.title': return 'ನಿಮ್ಮ ಪಿಲ್ಲರ್‌ಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';
			case 'pillars.subtitle': return 'ನೀವು ಗಮನಹರಿಸಲು ಬಯಸುವ ಪ್ರಮುಖ ಸಾಮರ್ಥ್ಯಗಳನ್ನು ಆರಿಸಿ.';
			case 'pillars.general': return 'ಸಾಮಾನ್ಯ';
			case 'pillars.operational': return 'ಕಾರ್ಯಾಚರಣೆ';
			case 'pillars.personal': return 'ವೈಯಕ್ತಿಕ ಸಲಹೆ';
			case 'pillars.workplace': return 'ಕೆಲಸದ ಸ್ಥಳ';
			case 'pillars.culture': return 'ಸಂಸ್ಕೃತಿ ಮತ್ತು ಕುಟುಂಬ';
			case 'pillars.journal': return 'ದೈನಂದಿನ ಜರ್ನಲ್';
			case 'pillars.back': return 'ಹಿಂದಕ್ಕೆ';
			case 'pillars.continueBtn': return 'ಮುಂದುವರಿಸಿ';
			case 'modelDownload.title1': return 'BrahmAI-ಅನ್ನು\nನಿಮ್ಮ ಹತ್ತಿರಕ್ಕೆ ';
			case 'modelDownload.title2': return 'ತರುತ್ತಿದ್ದೇವೆ.';
			case 'modelDownload.subtitle': return 'ಒಂದು ಬಾರಿ ಮಾತ್ರ. ಇದರ ನಂತರ, ನಾವು ನಿಮ್ಮ ಡೇಟಾವನ್ನು ಎಂದಿಗೂ ಮುಟ್ಟುವುದಿಲ್ಲ.';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'ಸಿದ್ಧವಾಗಿದೆ';
			case 'modelDownload.validating': return 'ಪರಿಶೀಲಿಸಲಾಗುತ್ತಿದೆ...';
			case 'modelDownload.langs': return '14 ಭಾಷೆಗಳು';
			case 'modelDownload.toks': return '~18 tok/s';
			case 'modelDownload.ttft': return '~140 ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'ದೋಷ: ${error}';
			case 'modelDownload.retry': return 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';
			case 'modelDownload.open': return 'BrahmAI ತೆರೆಯಿರಿ';
			case 'modelDownload.download': return 'ಮಾದರಿಯನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ';
			case 'modelDownload.later': return 'ನಂತರ ಹೊಂದಿಸಿ';
			case 'modelDownload.continueSub': return 'ಮಾದರಿಯನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡದೆಯೇ ಮುಂದುವರಿಯಿರಿ. ನೀವು ಸಿದ್ಧವಾದಾಗ ಒಂದನ್ನು ಸೇರಿಸಬಹುದು';
			case 'library_v2.subtitle': return 'ನಿಮ್ಮ AI ಸಂಪನ್ಮೂಲಗಳನ್ನು ನಿರ್ವಹಿಸಿ';
			case 'library_v2.language_title': return 'ಭಾಷೆ';
			case 'library_v2.language_desc': return 'ನಿಮ್ಮ ಆದ್ಯತೆಯ ಭಾಷೆಗಳನ್ನು ಆರಿಸಿ ಮತ್ತು ನಿರ್ವಹಿಸಿ';
			case 'library_v2.model_title': return 'ಮಾದರಿ (Model)';
			case 'library_v2.model_desc': return 'ಲಭ್ಯವಿರುವ AI ಮಾದರಿಗಳನ್ನು ಅನ್ವೇಷಿಸಿ ಮತ್ತು ನಿರ್ವಹಿಸಿ';
			case 'library_v2.saved_title': return 'ಉಳಿಸಲಾಗಿದೆ';
			case 'library_v2.saved_desc': return 'ನಿಮ್ಮ ಪ್ರಾಂಪ್ಟ್ ಲೈಬ್ರರಿ';
			case 'library_v2.skills_title': return 'ಕೌಶಲಗಳು';
			case 'library_v2.skills_desc': return 'AI ಸಾಮರ್ಥ್ಯಗಳು';
			case 'biometric.vault': return 'ವೋಲ್ಟ್ ಭದ್ರತೆ';
			case 'biometric.setupTitle': return 'ಸುರಕ್ಷಿತ ಲಾಕ್ ಸೆಟಪ್';
			case 'biometric.setupSub': return 'ನಿಮ್ಮ ಆದ್ಯತೆಯ ಪ್ರಮಾಣೀಕರಣ ವಿಧಾನದೊಂದಿಗೆ ನಿಮ್ಮ ವೋಲ್ಟ್ ಅನ್ನು ರಕ್ಷಿಸಿ.';
			case 'biometric.deviceTitle': return 'ಸಾಧನ ಬಯೋಮೆಟ್ರಿಕ್ಸ್';
			case 'biometric.deviceSub': return 'FaceID ಅಥವಾ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಬಳಸಿ';
			case 'biometric.pinTitle': return 'ಅಪ್ಲಿಕೇಶನ್-ನಿಶ್ಚಿತ ಪಿನ್';
			case 'biometric.pinSub': return 'ವಿಶಿಷ್ಟವಾದ 4-ಅಂಕಿಯ ಕೋಡ್ ಸೆಟ್ ಮಾಡಿ';
			case 'biometric.dialogTitle': return 'ಬಯೋಮೆಟ್ರಿಕ್ ಪ್ರವೇಶವನ್ನು ಅನುಮತಿಸಿ';
			case 'biometric.dialogSub': return 'ZiqeX ಅನ್‌ಲಾಕ್ ಮಾಡಲು ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಅಥವಾ ಸಾಧನದ ಫೇಸ್ ರೆಕಗ್ನಿಷನ್ ಬಳಸಿ';
			case 'biometric.cancel': return 'ರದ್ದುಗೊಳಿಸಿ';
			case 'biometric.allow': return 'ಬಯೋಮೆಟ್ರಿಕ್ಸ್ ಅನುಮತಿಸಿ';
			case 'security_screen.appBar': return 'ಆ್ಯಪ್ ಭದ್ರತೆ';
			case 'security_screen.global_protection': return 'ಜಾಗತಿಕ ರಕ್ಷಣೆ';
			case 'security_screen.app_lock': return 'ಆ್ಯಪ್ ಲಾಕ್';
			case 'security_screen.app_lock_sub': return 'ZiqeX ತೆರೆಯಲು ದೃಢೀಕರಣದ ಅಗತ್ಯವಿದೆ';
			case 'security_screen.auth_methods': return 'ದೃಢೀಕರಣ ವಿಧಾನಗಳು';
			case 'security_screen.biometrics_title': return 'ಸಾಧನ ಬಯೋಮೆಟ್ರಿಕ್ಸ್';
			case 'security_screen.biometrics_sub': return 'ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಅಥವಾ ಮುಖದೊಂದಿಗೆ ತಕ್ಷಣವೇ ಅನ್‌ಲಾಕ್ ಮಾಡಿ';
			case 'security_screen.pin_title': return 'ZiqeX ಪಿನ್';
			case 'security_screen.pin_active': return 'ಪಿನ್ ಸಕ್ರಿಯವಾಗಿದೆ';
			case 'security_screen.pin_setup': return 'ಆ್ಯಪ್ ಅನ್‌ಲಾಕ್ ಮಾಡಲು ಅನನ್ಯ 4-ಅಂಕಿಯ ಕೋಡ್ ಸೆಟ್ ಮಾಡಿ';
			case 'security_screen.warning_title': return 'ಬಹಳಷ್ಟು ತಪ್ಪು ಪ್ರಯತ್ನಗಳು';
			case 'security_screen.warning_sub': return 'ತಪ್ಪು ಪಿನ್ ಅನ್ನು 10 ಬಾರಿ ನಮೂದಿಸಿದರೆ, ZiqeX ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಮರುಹೊಂದಿಸಲ್ಪಡುತ್ತದೆ. ಈ ಸಾಧನದಲ್ಲಿ ಉಳಿಸಲಾದ ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಶಾಶ್ವತವಾಗಿ ಅಳಿಸಲಾಗುತ್ತದೆ';
			case 'security_screen.incomplete_title': return 'ಭದ್ರತಾ ಸೆಟಪ್ ಅಪೂರ್ಣವಾಗಿದೆ';
			case 'security_screen.incomplete_content': return 'ನೀವು ಆ್ಯಪ್ ಲಾಕ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿದ್ದೀರಿ ಆದರೆ ಪಿನ್ ಅಥವಾ ಬಯೋಮೆಟ್ರಿಕ್ಸ್ ಅನ್ನು ಸೆಟ್ ಮಾಡಿಲ್ಲ. ಒಂದು ವಿಧಾನವನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡುವವರೆಗೆ ಆ್ಯಪ್ ಲಾಕ್ ಅನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಲಾಗುತ್ತದೆ.';
			case 'security_screen.got_it': return 'ಸರಿ';
			case 'data.appBar': return 'ಡೇಟಾ ನಿರ್ವಹಣೆ ಮತ್ತು\nಸಂಗ್ರಹಣೆ';
			case 'data.summary': return 'ಸಂಗ್ರಹಣೆ ಸಾರಾಂಶ';
			case 'data.totalUsed': return 'ಒಟ್ಟು ಬಳಸಲಾಗಿದೆ: ';
			case 'data.legendModel': return 'ಮಾದರಿ ತೂಕಗಳು';
			case 'data.legendFree': return 'ಖಾಲಿ ಸ್ಥಳ';
			case 'data.mgmt': return 'ಮಾದರಿ ನಿರ್ವಹಣೆ';
			case 'data.deleteModels': return 'ದೌನ್‌ಲೋಡ್ ಮಾಡಿದ ಎಲ್ಲಾ ಮಾದರಿಗಳನ್ನು ಅಳಿಸಿ';
			case 'data.deleteModelsSub': return 'ಈ ಸಾಧನದಿಂದ ಎಲ್ಲಾ ಸ್ಥಳೀಯ ಮಾದರಿ ತೂಕಗಳನ್ನು ಮತ್ತು ನಿಯತಾಂಕಗಳನ್ನು ಸಂಪೂರ್ಣವಾಗಿ ತೆಗೆದುಹಾಕಿ.';
			case 'data.selectDelete': return 'ಅಳಿಸಲು ಮಾದರಿಗಳನ್ನು ಆಯ್કેಮಾಡಿ';
			case 'data.autoDelete': return 'ಇದಕ್ಕಿಂತ ಹಳೆಯದಾದ ಚಾಟ್‌ಗಳನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಅಳಿಸಿ:';
			case 'data.autoDeleteSub': return 'ಈ ಸೆಟ್ಟಿಂಗ್ ಎಲ್ಲಾ ಅನ್‌ಲಿಂಕ್ಡ್ ಸಂಭಾಷಣೆ ಮೋಡ್‌ಗಳಿಗೆ ಅನ್ವಯಿಸುತ್ತದೆ.';
			case 'data.modes': return 'ಮೋಡ್‌ಗಳು';
			case 'data.noData': return 'ಯಾವುದೇ ಸಕ್ರಿಯ ಚಾಟ್ ಡೇಟಾ ಇಲ್ಲ';
			case 'data.deleteAll': return 'ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಅಳಿಸಿ';
			case 'data.authReq': return 'ಅಪ್ಲಿಕೇಶನ್ ಲಾಕ್ ಮರು-ಪ್ರಮಾಣೀಕರಣ ಅಗತ್ಯವಿದೆ';
			case 'data.viewChats': return 'ಚಾಟ್‌ಗಳನ್ನು ನೋಡಿ';
			case 'data.deleteAllPillar': return 'ಎಲ್ಲವನ್ನೂ ಅಳಿಸಿ';
			case 'data.space': return 'ಸ್ಥಳ:';
			case 'data.activeInstances': return 'ಸಕ್ರಿಯ ಇನ್‌ಸ್ಟೆನ್ಸ್‌ಗಳು:';
			case 'pin_setup.title_setup': return '4-ಅಂಕಿಯ ಪಿನ್ ಹೊಂದಿಸಿ';
			case 'pin_setup.subtitle_setup': return 'ಅಪ್ಲಿಕೇಶನ್ ಪ್ರವೇಶಿಸಲು ಸುರಕ್ಷಿತ ಕೋಡ್ ರಚಿಸಿ';
			case 'pin_setup.title_confirm': return 'ಪಿನ್ ಖಚಿತಪಡಿಸಿ';
			case 'pin_setup.subtitle_confirm': return 'ಪರಿಶೀಲಿಸಲು ನಿಮ್ಮ 4-ಅಂಕಿಯ ಕೋಡ್ ಅನ್ನು ಮರು-ನಮೂದಿಸಿ';
			case 'pin_setup.title_verify': return 'ಪ್ರಸ್ತುತ ಪಿನ್ ನಮೂದಿಸಿ';
			case 'pin_setup.subtitle_verify': return 'ಮುಂದುವರಿಯಲು ನಿಮ್ಮ ಅಸ್ತಿತ್ವದಲ್ಲಿರುವ ಕೋಡ್ ಅನ್ನು ನಮೂದಿಸಿ';
			case 'pin_setup.error_mismatch': return 'ಪಿನ್‌ಗಳು ಹೊಂದಿಕೆಯಾಗುತ್ತಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
			case 'pin_setup.error_incorrect': return 'ತಪ್ಪು ಪಿನ್. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
			case 'pin_setup.snack_success': return 'ಪಿನ್ ಯಶಸ್ವಿಯಾಗಿ ಹೊಂದಿಸಲಾಗಿದೆ';
			case 'pin_mgmt.appBar': return 'ಅಪ್ಲಿಕೇಶನ್-ನಿರ್ದಿಷ್ಟ ಪಿನ್';
			case 'pin_mgmt.change_title': return 'ಪಿನ್ ಬದಲಾಯಿಸಿ';
			case 'pin_mgmt.change_sub': return 'ನಿಮ್ಮ 4-ಅಂಕಿಯ ZiqeX ಭದ್ರತಾ ಕೋಡ್ ಅನ್ನು ನವೀಕರಿಸಿ';
			case 'pin_mgmt.remove_title': return 'ಪಿನ್ ತೆಗೆದುಹಾಕಿ';
			case 'pin_mgmt.remove_sub': return 'ZiqeX ಗಾಗಿ ಪಿನ್ ಪ್ರವೇಶವನ್ನು ಆಫ್ ಮಾಡಿ';
			case 'pin_mgmt.snack_removed': return 'ಪಿನ್ ಯಶಸ್ವಿಯಾಗಿ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';
			case 'lang_legacy.title1': return 'ಯಾವ ಭಾಷೆ\n';
			case 'lang_legacy.title2': return 'ತವರು ಎನಿಸುತ್ತದೆ?';
			case 'lang_legacy.subtitle': return 'ನಿಮ್ಮ ಮಾತೃಭಾಷೆಯಲ್ಲಿ ಧ್ವನಿ, ಪಠ್ಯ ಮತ್ತು ಉತ್ತರಗಳು. ಯಾವಾಗ ಬೇಕಾದರೂ ಬದಲಾಯಿಸಿ.';
			case 'lang_legacy.first_reply': return 'ಮೊದಲ ಉತ್ತರ ಹೀಗಿರುತ್ತದೆ';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - ನಿಮ್ಮ ಲಿಪಿಯಲ್ಲಿ ಲಿಪ್ಯಂತರ ಮತ್ತು ಮಾತನಾಡಲಾಗುತ್ತದೆ';
			case 'lang_legacy.continueBtn': return 'ಮುಂದುವರಿಸಿ';
			default: return null;
		}
	}
}

extension on _StringsMl {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'നമസ്കാരം';
			case 'mind_today': return 'ഇന്ന് നിങ്ങളുടെ മനസ്സിൽ എന്താണ്?';
			case 'on_device_only': return 'ഈ ഉപകരണത്തിൽ മാത്രം';
			case 'offline': return 'ഓഫ്‌ലൈൻ';
			case 'start_something': return 'പുതിയത് ആരംഭിക്കൂ';
			case 'ask_anything': return 'എന്തും ചോദിക്കാം';
			case 'ask_anything_sub': return 'ആരോഗ്യം · നിയമം · വ്യക്തിഗതം · ജോലി';
			case 'voice_mode': return 'വോയിസ് മോഡ്';
			case 'voice_mode_sub': return 'നിങ്ങളുടെ ഭാഷയിൽ സംസാരിക്കൂ';
			case 'ask_image': return 'ചിത്രത്തെക്കുറിച്ച് ചോദിക്കൂ';
			case 'ask_image_sub': return 'ഫോമുകൾ, ലേബലുകൾ, സ്ക്രിപ്റ്റുകൾ';
			case 'panchang': return 'പഞ്ചാംഗം';
			case 'panchang_sub': return 'ഇന്നത്തെ തിഥിയും മുഹൂർത്തവും';
			case 'ephemeral': return 'എഫെമെറൽ';
			case 'ephemeral_sub': return 'അടയാളങ്ങൾ അവശേഷിപ്പിക്കാതെ സംസാരിക്കൂ';
			case 'recent': return 'സമീപകാലത്തുള്ളവ';
			case 'home': return 'ഹോം';
			case 'chat': return 'ചാറ്റ്';
			case 'library': return 'ലൈബ്രറി';
			case 'you': return 'നിങ്ങൾ';
			case 'settings_pref': return 'പ്രൊഫൈൽ ക്രമീകരണങ്ങൾ';
			case 'preferences': return 'മുൻഗണനകളും സുരക്ഷയും';
			case 'language': return 'ഭാഷ';
			case 'security': return 'സുരക്ഷ';
			case 'security_sub': return 'ആപ്പ് ലോക്ക് · 2FA';
			case 'privacy_tiers': return 'സ്വകാര്യത മോഡ്';
			case 'privacy_tiers_sub': return '1 സജീവമായ \'ZiqeX ലിസണിംഗ് മോഡ്\'';
			case 'storage_purge': return 'ഡാറ്റയും ശേഖരണവും';
			case 'storage_purge_sub': return 'ഉപകരണത്തിൽ 184 KB';
			case 'ephemeral_mode': return 'ഇൻകോഗ്നിറ്റോ ചാറ്റ്';
			case 'about': return 'സിസ്റ്റം വിവരങ്ങൾ';
			case 'reset_prototype': return 'പ്രോട്ടോടൈപ്പ് റീസെറ്റ് ചെയ്യുക';
			case 'built_in_india': return 'ഭാരതത്തിൽ നിർമ്മിച്ചത്. ലോകത്തിനായി.';
			case 'library_sub': return 'എല്ലാ മോഡലും · എല്ലാ ഓർമ്മയും · ഈ ഉപകരണത്തിൽ';
			case 'on_this_device': return 'ഈ ഉപകരണത്തിൽ';
			case 'active': return 'സജീവം';
			case 'add': return '+ ചേർക്കുക';
			case 'storage_used': return 'ഉപയോഗിച്ച സ്റ്റോറേജ്';
			case 'health_question': return 'ആരോഗ്യ സംബന്ധമായ ചോദ്യം';
			case 'family': return 'കുടുംബം';
			case 'work': return 'ജോലി';
			case 'just_thinking': return 'ആലോചിക്കുന്നു';
			case 'profile.access': return 'പ്രവേശനം';
			case 'profile.privacy': return 'സ്വകാര്യത';
			case 'profile.system': return 'സിസ്റ്റം';
			case 'profile.security_active': return 'സുരക്ഷ സജീവമാണ്';
			case 'profile.security_inactive': return 'സുരക്ഷ നിർജ്ജീവമാണ്';
			case 'profile.dark_mode': return 'ഡാർക്ക് മോഡ്';
			case 'profile.dark_mode_sub': return 'ലൈറ്റ്, ഡാർക്ക് തീമുകൾക്കിടയിൽ മാറാം';
			case 'profile.data_mgmt': return 'ചാറ്റ് ഡാറ്റാ മാനേജ്‌മെന്റും ശേഖരണവും';
			case 'profile.data_mgmt_sub': return 'നിങ്ങളുടെ സംഭാഷണ ചരിത്രം നിയന്ത്രിക്കാം';
			case 'profile.app_lock': return 'ആപ്പ് ലോക്ക്';
			case 'profile.app_lock_sub': return 'വിരലടയാളം, മുഖം അല്ലെങ്കിൽ പിൻ ഉപയോഗിച്ച് ZiqeX സുരക്ഷിതമാക്കാം';
			case 'profile.incognito_sub': return 'ചരിത്രത്തിൽ സേവ് ചെയ്യാതെ ചാറ്റ് ചെയ്യാം. ചാറ്റിൽ നിന്ന് പുറത്തുകടന്നാൽ വീണ്ടെടുക്കാനാവില്ല';
			case 'profile.version': return 'V0.1 • പരമാധികാരം • ഉപകരണത്തിൽ';
			case 'welcome.meet': return 'ZiqeX-നെ അറിയൂ';
			case 'welcome.at_edge': return 'എഡ്ജിലെ ബുദ്ധിശക്തി';
			case 'welcome.private': return 'സ്വകാര്യ എഡ്ജ് AI\nZenteiQ നൽകുന്നത്';
			case 'welcome.begin': return 'തുടങ്ങാം';
			case 'info.title': return 'നിങ്ങൾക്കായുള്ള ബുദ്ധിശക്തി';
			case 'info.subtitle': return 'സ്വകാര്യതയും പൂർണ്ണ നിയന്ത്രണവുമുള്ള AI അനുഭവം.';
			case 'info.privacy_title': return 'സ്വകാര്യത ആദ്യം';
			case 'info.privacy_desc': return 'വിവരങ്ങൾ നിങ്ങളുടെ ഉപകരണത്തിൽ തന്നെ സുരക്ഷിതമായിരിക്കും.';
			case 'info.hand_title': return 'കൈക്കുള്ളിൽ ബുദ്ധിശക്തി';
			case 'info.hand_desc': return 'ദൈനംദിന കാര്യങ്ങൾക്കുള്ള ബുദ്ധിശക്തി നിങ്ങളുടെ ഉപകരണത്തിൽ ലഭ്യം.';
			case 'info.control_title': return 'പൂർണ്ണ നിയന്ത്രണം';
			case 'info.control_desc': return 'ആവശ്യമുള്ളവ മാത്രം സൂക്ഷിക്കാം, മറ്റുള്ളവ നീക്കം ചെയ്യാം.';
			case 'info.place_title': return 'എല്ലാവർക്കും അനുയോജ്യം';
			case 'info.place_desc': return 'വിവിധ ഭാഷകൾക്കും ഉപകരണങ്ങൾക്കുമായി തയ്യാറാക്കിയത്.';
			case 'info.footer': return 'നിങ്ങളുടെ ബുദ്ധിശക്തി. നിങ്ങളുടെ ഉപകരണം. നിങ്ങളുടെ നിയന്ത്രണം.';
			case 'info.setup': return 'സജ്ജമാക്കാം';
			case 'languageSelection.appBar': return 'ഭാഷാ തിരഞ്ഞെടുപ്പ്';
			case 'languageSelection.title': return 'നിങ്ങളുടെ ഭാഷ തിരഞ്ഞെടുക്കുക';
			case 'languageSelection.subtitle': return 'നിങ്ങളുടെ ഇന്റർഫേസിനായി ഭാഷ തിരഞ്ഞെടുക്കുക.';
			case 'languageSelection.back': return 'പിന്നിലേക്ക്';
			case 'languageSelection.continueBtn': return 'തുടരുക';
			case 'pillars.appBar': return 'പില്ലർ തിരഞ്ഞെടുപ്പ്';
			case 'pillars.title': return 'നിങ്ങളുടെ പില്ലറുകൾ തിരഞ്ഞെടുക്കുക';
			case 'pillars.subtitle': return 'നിങ്ങൾ ശ്രദ്ധ കേന്ദ്രീകരിക്കാൻ ആഗ്രഹിക്കുന്ന പ്രധാന കാര്യങ്ങൾ തിരഞ്ഞെടുക്കുക.';
			case 'pillars.general': return 'പൊതുവായത്';
			case 'pillars.operational': return 'പ്രവർത്തനക്ഷമം';
			case 'pillars.personal': return 'ব্যക്തിഗത ഉപദേശം';
			case 'pillars.workplace': return 'തൊഴിലിടം';
			case 'pillars.culture': return 'സംസ്കാരവും കുടുംബവും';
			case 'pillars.journal': return 'ദിനചര്യ കുറിപ്പുകൾ';
			case 'pillars.back': return 'പിന്നിലേക്ക്';
			case 'pillars.continueBtn': return 'തുടരുക';
			case 'modelDownload.title1': return 'BrahmAI-യെ\nനിങ്ങളുടെ അടുത്തേക്ക് ';
			case 'modelDownload.title2': return 'കൊണ്ടുവരുന്നു.';
			case 'modelDownload.subtitle': return 'ഒറ്റത്തവണ മാത്രം. ഇതിനുശേഷം, ഞങ്ങൾ നിങ്ങളുടെ ഡാറ്റ ഒരിക്കലും സ്പർശിക്കില്ല.';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'തയ്യാറാണ്';
			case 'modelDownload.validating': return 'പരിശോധിക്കുന്നു...';
			case 'modelDownload.langs': return '14 ഭാഷകൾ';
			case 'modelDownload.toks': return '~18 tok/s';
			case 'modelDownload.ttft': return '~140 ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'പിശക്: ${error}';
			case 'modelDownload.retry': return 'വീണ്ടും ശ്രമിക്കുക';
			case 'modelDownload.open': return 'തുറക്കാം';
			case 'modelDownload.download': return 'ഡൗൺലോഡ്';
			case 'modelDownload.later': return 'പിന്നീട് സജ്ജമാക്കുക';
			case 'modelDownload.continueSub': return 'മോഡൽ ഡൗൺലോഡ് ചെയ്യാതെ തുടരുക. നിങ്ങൾ തയ്യാറാകുമ്പോൾ ഒരെണ്ണം ചേർക്കാം';
			case 'library_v2.subtitle': return 'നിങ്ങളുടെ AI വിഭവങ്ങൾ മാനേജ് ചെയ്യുക';
			case 'library_v2.language_title': return 'ഭാഷ';
			case 'library_v2.language_desc': return 'നിങ്ങളുടെ ഭാഷകൾ നിയന്ത്രിക്കുക';
			case 'library_v2.model_title': return 'മോഡൽ';
			case 'library_v2.model_desc': return 'AI മോഡലുകൾ മാനേജ് ചെയ്യുക';
			case 'library_v2.saved_title': return 'സേവ് ചെയ്തവ';
			case 'library_v2.saved_desc': return 'നിങ്ങളുടെ പ്രോംപ്റ്റ് ലൈബ്രറി';
			case 'library_v2.skills_title': return 'നൈപുണ്യങ്ങൾ';
			case 'library_v2.skills_desc': return 'AI കഴിവുകൾ';
			case 'biometric.vault': return 'വോൾട്ട് സുരക്ഷ';
			case 'biometric.setupTitle': return 'സുരക്ഷിത ലോക്ക് സജ്ജീകരണം';
			case 'biometric.setupSub': return 'നിങ്ങളുടെ പ്രിയപ്പെട്ട രീതി ഉപയോഗിച്ച് നിങ്ങളുടെ വോൾട്ട് സുരക്ഷിതമാക്കുക.';
			case 'biometric.deviceTitle': return 'ബയോമെട്രിക്സ്';
			case 'biometric.deviceSub': return 'വിരലടയാളം ഉപയോഗിക്കുക';
			case 'biometric.pinTitle': return 'പിൻ കോഡ്';
			case 'biometric.pinSub': return '4 അക്ക പിൻ സജ്ജമാക്കുക';
			case 'biometric.dialogTitle': return 'അനുമതി നൽകുക';
			case 'biometric.dialogSub': return 'ZiqeX തുറക്കാൻ വിരലടയാളം ഉപയോഗിക്കുക';
			case 'biometric.cancel': return 'റദ്ദാക്കുക';
			case 'biometric.allow': return 'അനുവദിക്കുക';
			case 'security_screen.appBar': return 'ആപ്പ് സെക്യൂരിറ്റി';
			case 'security_screen.global_protection': return 'ഗ്ലോബൽ പ്രൊട്ടക്ഷൻ';
			case 'security_screen.app_lock': return 'ആപ്പ് ലോക്ക്';
			case 'security_screen.app_lock_sub': return 'ZiqeX തുറക്കാൻ ഓതന്റിക്കേഷൻ ആവശ്യമാണ്';
			case 'security_screen.auth_methods': return 'ഓതന്റിക്കേഷൻ രീതികൾ';
			case 'security_screen.biometrics_title': return 'ഡിവൈസ് ബയോമെട്രിക്സ്';
			case 'security_screen.biometrics_sub': return 'നിങ്ങളുടെ ഫിംഗർപ്രിന്റ് അല്ലെങ്കിൽ മുഖം ഉപയോഗിച്ച് തൽക്ഷണം അൺലോക്ക് ചെയ്യുക';
			case 'security_screen.pin_title': return 'ZiqeX പിൻ';
			case 'security_screen.pin_active': return 'പിൻ സജീവമാണ്';
			case 'security_screen.pin_setup': return 'ആപ്പ് അൺലോക്ക് ചെയ്യാൻ 4 അക്കങ്ങളുള്ള ഒരു തനതായ കോഡ് സജ്ജമാക്കുക';
			case 'security_screen.warning_title': return 'തെറ്റായ ശ്രമങ്ങൾ പരിധി കവിഞ്ഞു';
			case 'security_screen.warning_sub': return 'തെറ്റായ പിൻ 10 തവണ നൽകിയാൽ, ZiqeX സ്വയമേവ റീസെറ്റ് ചെയ്യപ്പെടും. ഈ ഉപകരണത്തിൽ സംരക്ഷിച്ചിട്ടുള്ള എല്ലാ ഡാറ്റയും ശാശ്വതമായി ഇല്ലാതാക്കപ്പെടും';
			case 'security_screen.incomplete_title': return 'സെക്യൂരിറ്റി സെറ്റപ്പ് അപൂർണ്ണമാണ്';
			case 'security_screen.incomplete_content': return 'നിങ്ങൾ ആപ്പ് ലോക്ക് പ്രവർത്തനക്ഷമമാക്കി, പക്ഷേ പിൻ അല്ലെങ്കിൽ ബയോമെട്രിക്സ് സജ്ജീകരിച്ചിട്ടില്ല. ഒരു രീതി കോൺഫിഗർ ചെയ്യുന്നത് വരെ ആപ്പ് ലോക്ക് പ്രവർത്തനരഹിതമായിരിക്കും.';
			case 'security_screen.got_it': return 'മനസ്സിലായി';
			case 'data.appBar': return 'ഡാറ്റ മാനേജ്‌മെന്റ്';
			case 'data.summary': return 'ശേഖരണ വിവരങ്ങൾ';
			case 'data.totalUsed': return 'ഉപയോഗിച്ചത്: ';
			case 'data.legendModel': return 'മോഡലുകൾ';
			case 'data.legendFree': return 'ശൂന്യമായ ഇടം';
			case 'data.mgmt': return 'മോഡൽ മാനേജ്‌മെന്റ്';
			case 'data.deleteModels': return 'മോഡലുകൾ നീക്കം ചെയ്യുക';
			case 'data.deleteModelsSub': return 'ഉപകരണത്തിലെ മോഡൽ വിവരങ്ങൾ പൂർണ്ണമായും ഒഴിവാക്കുക.';
			case 'data.selectDelete': return 'നീക്കം ചെയ്യേണ്ടവ തിരഞ്ഞെടുക്കാം';
			case 'data.autoDelete': return 'പഴയവ ഓട്ടോ-ഡിലീറ്റ് ചെയ്യുക:';
			case 'data.autoDeleteSub': return 'എല്ലാ ചാറ്റ് മോഡുകൾക്കും ഇത് ബാധകമാണ്.';
			case 'data.modes': return 'മോഡുകൾ';
			case 'data.noData': return 'ചാറ്റുകൾ ലഭ്യമല്ല';
			case 'data.deleteAll': return 'എല്ലാ ഡാറ്റയും ഡിലീറ്റ് ചെയ്യുക';
			case 'data.authReq': return 'വീണ്ടും ലോഗിൻ ചെയ്യേണ്ടതുണ്ട്';
			case 'data.viewChats': return 'കാണുക';
			case 'data.deleteAllPillar': return 'ഡിലീറ്റ്';
			case 'data.space': return 'ഇടം:';
			case 'data.activeInstances': return 'സജീവമായവ:';
			case 'pin_setup.title_setup': return '4-അക്ക പിൻ സജ്ജമാക്കുക';
			case 'pin_setup.subtitle_setup': return 'ആപ്പ് ആക്സസ് ചെയ്യുന്നതിന് ഒരു സുരക്ഷിത കോഡ് സൃഷ്ടിക്കുക';
			case 'pin_setup.title_confirm': return 'പിൻ സ്ഥിരീകരിക്കുക';
			case 'pin_setup.subtitle_confirm': return 'സ്ഥിരീകരിക്കുന്നതിന് നിങ്ങളുടെ 4-അക്ക കോഡ് വീണ്ടും നൽകുക';
			case 'pin_setup.title_verify': return 'നിലവിലെ പിൻ നൽകുക';
			case 'pin_setup.subtitle_verify': return 'തുടരുന്നതിന് നിങ്ങളുടെ നിലവിലുള്ള കോഡ് നൽകുക';
			case 'pin_setup.error_mismatch': return 'പിന്നുകൾ പൊരുത്തപ്പെടുന്നില്ല. വീണ്ടും ശ്രമിക്കുക.';
			case 'pin_setup.error_incorrect': return 'തെറ്റായ പിൻ. ദയവായി വീണ്ടും ശ്രമിക്കുക.';
			case 'pin_setup.snack_success': return 'പിൻ വിജയകരമായി സജ്ਜമാക്കി';
			case 'pin_mgmt.appBar': return 'ആപ്പ്-നിർദ്ദിഷ്ട പിൻ';
			case 'pin_mgmt.change_title': return 'പിൻ മാറ്റുക';
			case 'pin_mgmt.change_sub': return 'നിങ്ങളുടെ 4-അക്ക ZiqeX സുരക്ഷാ കോഡ് പുതുക്കുക';
			case 'pin_mgmt.remove_title': return 'പിൻ ഒഴിവാക്കുക';
			case 'pin_mgmt.remove_sub': return 'ZiqeX-നായുള്ള പിൻ ആക്‌സസ് ഓഫാക്കുക';
			case 'pin_mgmt.snack_removed': return 'പിൻ വിജയകരമായി ഒഴിവാക്കി';
			case 'lang_legacy.title1': return 'ഏത് ഭാഷയാണ്\n';
			case 'lang_legacy.title2': return 'സ്വന്തമായി തോന്നുന്നത്?';
			case 'lang_legacy.subtitle': return 'നിങ്ങളുടെ മാതൃഭാഷയിൽ ശബ്‌ദവും ടെക്‌സ്‌റ്റും മറുപടികളും. എപ്പോൾ വേണമെങ്കിലും മാറ്റാം.';
			case 'lang_legacy.first_reply': return 'ആദ്യ മറുപടി ഇങ്ങനെയായിരിക്കും';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - നിങ്ങളുടെ ലിപിയിൽ എഴുതുകയും സംസാരിക്കുകയും ചെയ്യുന്നു';
			case 'lang_legacy.continueBtn': return 'തുടരുക';
			default: return null;
		}
	}
}

extension on _StringsMr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'नमस्कार';
			case 'mind_today': return 'आज तुमच्या मनात काय आहे?';
			case 'on_device_only': return 'केवळ या डिव्हाइसवर';
			case 'offline': return 'ऑफलाइन';
			case 'start_something': return 'काहीतरी सुरू करा';
			case 'ask_anything': return 'काहीही विचारा';
			case 'ask_anything_sub': return 'आरोग्य · कायदेशीर · वैयक्तिक · काम';
			case 'voice_mode': return 'व्हॉइस मोड';
			case 'voice_mode_sub': return 'तुमच्या भाषेत बोला';
			case 'ask_image': return 'प्रतिमेवरून विचारा';
			case 'ask_image_sub': return 'फॉर्म, लेबले, स्क्रिप्ट';
			case 'panchang': return 'पंचांग';
			case 'panchang_sub': return 'आजची तिथी आणि मुहूर्त';
			case 'ephemeral': return 'अल्पायुषी';
			case 'ephemeral_sub': return 'कोणत्याही खुणांशिवाय बोला';
			case 'recent': return 'अलीकडील';
			case 'home': return 'होम';
			case 'chat': return 'चॅट';
			case 'library': return 'लायब्ररी';
			case 'you': return 'तुम्ही';
			case 'settings_pref': return 'प्रोफाइल सेटिंग्ज';
			case 'preferences': return 'पसंती आणि सुरक्षा';
			case 'language': return 'भाषा';
			case 'security': return 'सुरक्षा';
			case 'security_sub': return 'अॅप लॉक · 2FA';
			case 'privacy_tiers': return 'गोपनीयता मोड';
			case 'privacy_tiers_sub': return '१ सक्रिय \'ZiqeX ऐकण्याचा मोड\'';
			case 'storage_purge': return 'डेटा आणि धारणा';
			case 'storage_purge_sub': return 'डिव्हाइसवर १८४ KB';
			case 'ephemeral_mode': return 'गुप्त चॅट';
			case 'about': return 'सिस्टम माहिती';
			case 'reset_prototype': return 'प्रोटोटाइप रीसेट करा';
			case 'built_in_india': return 'भारतात निर्मित। जगासाठी.';
			case 'library_sub': return 'प्रत्येक मॉडेल · प्रत्येक मेमरी · या डिव्हाइसवर';
			case 'on_this_device': return 'या डिव्हाइसवर';
			case 'active': return 'सक्रिय';
			case 'add': return '+ जोडा';
			case 'storage_used': return 'वापरलेले स्टोरेज';
			case 'health_question': return 'आरोग्य विषयक प्रश्न';
			case 'family': return 'कुटुंब';
			case 'work': return 'काम';
			case 'just_thinking': return 'फक्त विचार करत आहे';
			case 'profile.access': return 'प्रवेश';
			case 'profile.privacy': return 'गोपनीयता';
			case 'profile.system': return 'सिस्टम';
			case 'profile.security_active': return 'सुरक्षा सक्रिय';
			case 'profile.security_inactive': return 'सुरक्षा निष्क्रिय';
			case 'profile.dark_mode': return 'डार्क मोड';
			case 'profile.dark_mode_sub': return 'प्रकाश आणि गडद कार्यक्षेत्र थीम दरम्यान स्विच करा';
			case 'profile.data_mgmt': return 'चॅट डेटा व्यवस्थापन आणि धारणा';
			case 'profile.data_mgmt_sub': return 'तुमचा संवाद इतिहास व्यवस्थापित करा';
			case 'profile.app_lock': return 'अॅप लॉक';
			case 'profile.app_lock_sub': return 'तुमचा फिंगरप्रिंट, चेहरा किंवा पिनसह ZiqeX सुरक्षित करा';
			case 'profile.incognito_sub': return 'इतिहासात जतन न करता चॅट करा. चॅटमधून बाहेर पडल्यानंतर परत मिळवता येणार नाही';
			case 'profile.version': return 'V0.1 • सार्वभौम • ऑन-डिव्हाइस';
			case 'welcome.meet': return 'ZiqeX ला भेटा';
			case 'welcome.at_edge': return 'टोकावर बुद्धिमत्ता (Edge)';
			case 'welcome.private': return 'खाजगी and एज एआय\nZenteiQ द्वारे';
			case 'welcome.begin': return 'ऑनबोर्डिंग सुरू करा';
			case 'info.title': return 'तुमच्या भोवती डिझाइन केलेली बुद्धिमत्ता';
			case 'info.subtitle': return 'अनुभवात तयार केलेली गोपनीयता, निवड आणि नियंत्रणासह उपयुक्त AI.';
			case 'info.privacy_title': return 'गोपनीयता प्रथम';
			case 'info.privacy_desc': return 'ZiqeX बुद्धिमत्ता आणि तुमची माहिती तुमच्या डिव्हाइसच्या जवळ ठेवण्यासाठी डिझाइन केले आहे.';
			case 'info.hand_title': return 'तुमच्या हातात बुद्धिमत्ता';
			case 'info.hand_desc': return 'दैनंदिन बुद्धिमत्ता, थेट तुमच्या डिव्हाइसवर उपलब्ध.';
			case 'info.control_title': return 'तुमचा डेटा. तुमचे नियंत्रण.';
			case 'info.control_desc': return 'काय ठेवायचे ते निवडा, जे साठवले आहे ते व्यवस्थापित करा आणि ज्याची तुम्हाला आता गरज नाही ते हटवा.';
			case 'info.place_title': return 'प्रत्येक ठिकाणासाठी डिझाइन केलेले';
			case 'info.place_desc': return 'विविध भाषा, उपकरणे आणि लोक तंत्रज्ञान वापरण्याच्या पद्धतींसाठी तयार केलेले.';
			case 'info.footer': return 'तुमची बुद्धिमत्ता. तुमचे डिव्हाइस. तुमचे नियंत्रण.';
			case 'info.setup': return 'तुमचे ZiqeX सेट अप करा';
			case 'languageSelection.appBar': return 'भाषा निवड';
			case 'languageSelection.title': return 'तुमची भाषा निवडा';
			case 'languageSelection.subtitle': return 'तुमच्या इंटरफेससाठी भाषा निवडा.';
			case 'languageSelection.back': return 'मागे';
			case 'languageSelection.continueBtn': return 'सुरू ठेवा';
			case 'pillars.appBar': return 'स्तंभ निवड';
			case 'pillars.title': return 'तुमचे स्तंभ निवडा';
			case 'pillars.subtitle': return 'तुम्ही ज्या मुख्य क्षमतांवर लक्ष केंद्रित करू इच्छिता त्या निवडा.';
			case 'pillars.general': return 'सामान्य';
			case 'pillars.operational': return 'कार्यरत';
			case 'pillars.personal': return 'वैयक्तिक सल्ला';
			case 'pillars.workplace': return 'कामाची जागा';
			case 'pillars.culture': return 'संस्कृती आणि कुटुंब';
			case 'pillars.journal': return 'दैनंदिन रोजनिशी';
			case 'pillars.back': return 'मागे';
			case 'pillars.continueBtn': return 'सुरू ठेवा';
			case 'modelDownload.title1': return 'BrahmAI-ला\nतुमच्याकडे ';
			case 'modelDownload.title2': return 'घेऊन येत आहोत.';
			case 'modelDownload.subtitle': return 'एकदाच. यानंतर, आम्ही तुमच्या डेटाला कधीही स्पर्श करणार नाही.';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'तयार';
			case 'modelDownload.validating': return 'तपासणी होत आहे...';
			case 'modelDownload.langs': return '14 भाषा';
			case 'modelDownload.toks': return '~18 tok/s';
			case 'modelDownload.ttft': return '~140 ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'त्रुटी: ${error}';
			case 'modelDownload.retry': return 'पुन्हा प्रयत्न करा';
			case 'modelDownload.open': return 'BrahmAI उघडा';
			case 'modelDownload.download': return 'मॉडेल डाउनलोड करा';
			case 'modelDownload.later': return 'नंतर सेटअप करा';
			case 'modelDownload.continueSub': return 'मॉडेल डाउनलोड न करता पुढे जा. तुम्ही तयार असाल तेव्हा एक जोडू शकता';
			case 'library_v2.subtitle': return 'तुमची AI संसाधने व्यवस्थापित करा';
			case 'library_v2.language_title': return 'भाषा';
			case 'library_v2.language_desc': return 'तुमच्या पसंतीच्या भाषा निवडा आणि व्यवस्थापित करा';
			case 'library_v2.model_title': return 'मॉडेल';
			case 'library_v2.model_desc': return 'उपलब्ध AI मॉडेल्स शोधा आणि व्यवस्थापित करा';
			case 'library_v2.saved_title': return 'जतन केलेले';
			case 'library_v2.saved_desc': return 'तुमची प्रॉम्प्ट लायब्ररी';
			case 'library_v2.skills_title': return 'कौशल्ये';
			case 'library_v2.skills_desc': return 'AI क्षमता';
			case 'biometric.vault': return 'तिजोरी सुरक्षा';
			case 'biometric.setupTitle': return 'सुरक्षित लॉक सेटअप';
			case 'biometric.setupSub': return 'तुमच्या पसंतीच्या प्रमाणीकरण पद्धतीसह तुमची तिजोरी सुरक्षित करा.';
			case 'biometric.deviceTitle': return 'डिव्हाइस बायोमेट्रिक्स';
			case 'biometric.deviceSub': return 'FaceID किंवा फिंगरप्रिंट वापरा';
			case 'biometric.pinTitle': return 'अॅप-विशिष्ट पिन';
			case 'biometric.pinSub': return 'एक अनन्य ४-अंकी कोड सेट करा';
			case 'biometric.dialogTitle': return 'बायोमेट्रिक प्रवेशाची परवानगी द्या';
			case 'biometric.dialogSub': return 'ZiqeX अनलॉक करण्यासाठी तुमचा फिंगरप्रिंट किंवा डिव्हाइस फेस रिकग्निशन वापरा';
			case 'biometric.cancel': return 'रद्द करा';
			case 'biometric.allow': return 'बायोमेट्रिक्सला अनुमती द्या';
			case 'security_screen.appBar': return 'ॲप सुरक्षा';
			case 'security_screen.global_protection': return 'जागतिक संरक्षण';
			case 'security_screen.app_lock': return 'ॲप लॉक';
			case 'security_screen.app_lock_sub': return 'ZiqeX उघडण्यासाठी प्रमाणीकरण आवश्यक आहे';
			case 'security_screen.auth_methods': return 'प्रमाणीकरण पद्धती';
			case 'security_screen.biometrics_title': return 'डिव्हाइस बायोमेट्रिक्स';
			case 'security_screen.biometrics_sub': return 'तुमच्या फिंगरप्रिंट किंवा चेहऱ्याने त्वरित अनलॉक करा';
			case 'security_screen.pin_title': return 'ZiqeX पिन';
			case 'security_screen.pin_active': return 'पिन सक्रिय आहे';
			case 'security_screen.pin_setup': return 'ॲप अनलॉक करण्यासाठी एक अद्वितीय ४-अंकी कोड सेट करा';
			case 'security_screen.warning_title': return 'खूप जास्त चुकीचे प्रयत्न';
			case 'security_screen.warning_sub': return 'चुकीचा पिन १० वेळा टाकल्यास, ZiqeX आपोआप रीसेट होईल. या डिव्हाइसवर जतन केलेला सर्व डेटा कायमचा हटवला जाईल';
			case 'security_screen.incomplete_title': return 'सुरक्षा सेटअप अपूर्ण';
			case 'security_screen.incomplete_content': return 'तुम्ही ॲप लॉक सक्षम केले आहे पण पिन किंवा बायोमेट्रिक्स सेट केलेले नाही. जोपर्यंत एखादी पद्धत कॉन्फिगर केली जात नाही तोपर्यंत ॲप लॉक अक्षम केले जाईल.';
			case 'security_screen.got_it': return 'समजले';
			case 'data.appBar': return 'डेटा व्यवस्थापन आणि\nधारणा';
			case 'data.summary': return 'स्टोरेज सारांश';
			case 'data.totalUsed': return 'एकूण वापरलेले: ';
			case 'data.legendModel': return 'मॉडेल वेट';
			case 'data.legendFree': return 'मोकळी जागा';
			case 'data.mgmt': return 'मॉडेल व्यवस्थापन';
			case 'data.deleteModels': return 'सर्व डाउनलोड केलेले मॉडेल हटवा';
			case 'data.deleteModelsSub': return 'या डिव्हाइसवरून सर्व स्थानिक मॉडेल वेट आणि फाइन-ट्यून्ड पॅरामीटर्स पूर्णपणे काढून टाका.';
			case 'data.selectDelete': return 'हटवण्यासाठी मॉडेल निवडा';
			case 'data.autoDelete': return 'यापेक्षा जुने चॅट आपोआप हटवा:';
			case 'data.autoDeleteSub': return 'हा बदल सर्व अनलिंक केलेल्या संवाद मोड्सवर लागू होतो.';
			case 'data.modes': return 'मोड्स';
			case 'data.noData': return 'कोणताही सक्रिय चॅट डेटा नाही';
			case 'data.deleteAll': return 'सर्व डेटा हटवा';
			case 'data.authReq': return 'अॅप लॉक पुन: प्रमाणीकरण आवश्यक आहे';
			case 'data.viewChats': return 'चॅट पहा';
			case 'data.deleteAllPillar': return 'सर्व हटवा';
			case 'data.space': return 'जागा:';
			case 'data.activeInstances': return 'सक्रिय इंस्टन्स:';
			case 'pin_setup.title_setup': return '४-अंकी पिन सेट करा';
			case 'pin_setup.subtitle_setup': return 'अ‍ॅप अ‍ॅक्सेस करण्यासाठी सुरक्षित कोड तयार करा';
			case 'pin_setup.title_confirm': return 'पिनची पुष्टी करा';
			case 'pin_setup.subtitle_confirm': return 'सत्यापित करण्यासाठी तुमचा ४-अंकी कोड पुन्हा प्रविष्ट करा';
			case 'pin_setup.title_verify': return 'सध्याचा पिन प्रविष्ट करा';
			case 'pin_setup.subtitle_verify': return 'पुढे चालू ठेवण्यासाठी तुमचा अस्तित्वातील कोड प्रविष्ट करा';
			case 'pin_setup.error_mismatch': return 'पिन जुळत नाहीत. पुन्हा प्रयत्न करा.';
			case 'pin_setup.error_incorrect': return 'चुकीचा पिन. कृपया पुन्हा प्रयत्न करा.';
			case 'pin_setup.snack_success': return 'पिन यशस्वीरित्या सेट झाला';
			case 'pin_mgmt.appBar': return 'अ‍ॅप-विशिष्ट पिन';
			case 'pin_mgmt.change_title': return 'पिन बदला';
			case 'pin_mgmt.change_sub': return 'तुमचा ४-अंकी ZiqeX सुरक्षा कोड अपडेट करा';
			case 'pin_mgmt.remove_title': return 'पिन काढून टाका';
			case 'pin_mgmt.remove_sub': return 'ZiqeX साठी पिन अ‍ॅक्सेस बंद करा';
			case 'pin_mgmt.snack_removed': return 'पिन यशस्वीरित्या काढून टाकला';
			case 'lang_legacy.title1': return 'कोणती भाषा\n';
			case 'lang_legacy.title2': return 'घरच्यासारखी वाटते?';
			case 'lang_legacy.subtitle': return 'तुमच्या मातृभाषेत व्हॉइस, टेक्स्ट आणि उत्तरे. कधीही बदला.';
			case 'lang_legacy.first_reply': return 'पहिले उत्तर असे असेल';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - तुमच्या लिपीमध्ये लिहिलेले आणि बोललेले';
			case 'lang_legacy.continueBtn': return 'चालू ठेवा';
			default: return null;
		}
	}
}

extension on _StringsOr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'ନମସ୍କାର';
			case 'mind_today': return 'ଆଜି ଆପଣଙ୍କ ମନରେ କ’ଣ ଅଛି?';
			case 'on_device_only': return 'କେବଳ ଏହି ଡିଭାଇସରେ';
			case 'offline': return 'ଅଫଲାଇନ୍';
			case 'start_something': return 'କିଛି ନୂଆ ଆରମ୍ଭ କରନ୍ତୁ';
			case 'ask_anything': return 'ଯାହା କିଛି ପଚାରନ୍ତୁ';
			case 'ask_anything_sub': return 'ସ୍ୱାସ୍ଥ୍ୟ · ଆଇନଗତ · ବ୍ୟକ୍ତିଗତ · କାର୍ଯ୍ୟ';
			case 'voice_mode': return 'ଭଏସ୍ ମୋଡ୍';
			case 'voice_mode_sub': return 'ଆପଣଙ୍କ ଭାଷାରେ କଥା ହୁଅନ୍ତୁ';
			case 'ask_image': return 'ଛବିରୁ ପଚାରନ୍ତୁ';
			case 'ask_image_sub': return 'ଫର୍ମ, ଲେବଲ୍, ସ୍କ୍ରିପ୍ଟ';
			case 'panchang': return 'ପଞ୍ଜିକା';
			case 'panchang_sub': return 'ଆଜିର ତିଥି ଓ ମୁହୂର୍ତ୍ତ';
			case 'ephemeral': return 'କ୍ଷଣସ୍ଥାୟୀ';
			case 'ephemeral_sub': return 'କୌଣସି ଚିହ୍ନ ନରଖି କଥା ହୁଅନ୍ତୁ';
			case 'recent': return 'ସାମ୍ପ୍ରତିକ';
			case 'home': return 'ହୋମ୍';
			case 'chat': return 'ଚାଟ୍';
			case 'library': return 'ଲାଇବ୍ରେରୀ';
			case 'you': return 'ଆପଣ';
			case 'settings_pref': return 'ପ୍ରୋଫାଇଲ୍ ସେଟିଂସମୂହ';
			case 'preferences': return 'ପସନ୍ଦ ଏବଂ ସୁରକ୍ଷା';
			case 'language': return 'ଭାଷା';
			case 'security': return 'ସୁରକ୍ଷା';
			case 'security_sub': return 'ଆପ୍ ଲକ୍ · 2FA';
			case 'privacy_tiers': return 'ଗୋପନୀୟତା ମୋଡ୍';
			case 'privacy_tiers_sub': return '୧ଟି ସକ୍ରିୟ \'ZiqeX ଶୁଣିବା ମୋଡ୍\'';
			case 'storage_purge': return 'ଡାଟା ଏବଂ ସଂରକ୍ଷଣ';
			case 'storage_purge_sub': return 'ଡିଭାଇସରେ ୧୮୪ KB';
			case 'ephemeral_mode': return 'ଗୋପନୀୟ ଚାଟ୍';
			case 'about': return 'ସିଷ୍ਟମ୍ ସୂଚନା';
			case 'reset_prototype': return 'ପ୍ରୋଟୋଟାଇପ୍ ରିସେଟ୍ କରନ୍ତୁ';
			case 'built_in_india': return 'ଭାରତରେ ନିର୍ମିତ। ବିଶ୍ୱ ପାଇଁ।';
			case 'library_sub': return 'ପ୍ରତ୍ୟେକ ମଡେଲ୍ · ପ୍ରତ୍ୟେକ ସ୍ମୃତି · ଏହି ଡିଭାଇସରେ';
			case 'on_this_device': return 'ଏହି ଡିଭାଇସରେ';
			case 'active': return 'ସକ୍ରିୟ';
			case 'add': return '+ ଯୋଡନ୍ତୁ';
			case 'storage_used': return 'ବ୍ୟବହୃତ ଷ୍ଟୋରେଜ୍';
			case 'health_question': return 'ସ୍ୱାସ୍ଥ୍ୟ ପ୍ରଶ୍ନ';
			case 'family': return 'ପରିବାର';
			case 'work': return 'କାର୍ଯ୍ୟ';
			case 'just_thinking': return 'କେବଳ ଭାବୁଛି';
			case 'profile.access': return 'ପ୍ରବେଶ';
			case 'profile.privacy': return 'ଗୋପନୀୟତା';
			case 'profile.system': return 'ସିଷ୍ଟମ୍';
			case 'profile.security_active': return 'ସୁରକ୍ଷା ସକ୍ରିୟ';
			case 'profile.security_inactive': return 'ସୁରକ୍ଷା ନିଷ୍କ୍ରିୟ';
			case 'profile.dark_mode': return 'ଡାର୍କ ମୋଡ୍';
			case 'profile.dark_mode_sub': return 'ଆଲୋକ ଏବଂ ଅନ୍ଧକାର କାର୍ଯ୍ୟକ୍ଷେତ୍ର ଥିମ୍ ମଧ୍ୟରେ ପରିବର୍ତ୍ତନ କରନ୍ତୁ';
			case 'profile.data_mgmt': return 'ଚାଟ୍ ଡାଟା ପରିଚାଳନା ଏବଂ ସଂରକ୍ଷଣ';
			case 'profile.data_mgmt_sub': return 'ଆପଣଙ୍କର ବାର୍ତ୍ତାଳାପ ଇତିହାସ ପରିଚାଳନା କରନ୍ତୁ';
			case 'profile.app_lock': return 'ଆପ୍ ଲକ୍';
			case 'profile.app_lock_sub': return 'ଆପଣଙ୍କର ଆଙ୍ଗୁଠି ଚିହ୍ନ, ମୁହଁ କିମ୍ବା ପିନ୍ ସହିତ ZiqeX କୁ ସୁରକ୍ଷିત କରନ୍ତୁ';
			case 'profile.incognito_sub': return 'ଇତିହାସରେ ସଞ୍ચୟ ନକରି ଚାଟ୍ କରନ୍ତୁ। ଚାଟ୍ ରୁ ବାହାରିବା ପରେ ପୁନରୁଦ୍ଧାର କରାଯାଇପାରିବ ନାହିଁ';
			case 'profile.version': return 'V0.1 • ସାର୍ବଭୌମ • ଅନ୍-ଡିଭାଇସ୍';
			case 'welcome.meet': return 'ZiqeX ସହିତ ପରିଚିତ ହୁଅନ୍ତୁ';
			case 'welcome.at_edge': return 'ଏଜ୍ ରେ ବୁଦ୍ଧିମତା';
			case 'welcome.private': return 'ବ୍ୟକ୍ତିଗତ ଏବଂ ଏଜ୍ AI\nZenteiQ ଦ୍ୱାରା';
			case 'welcome.begin': return 'ଅନବୋର୍ଡିଂ ଆରମ୍ଭ କରନ୍ତୁ';
			case 'info.title': return 'ଆପଣଙ୍କ ଚାରିପାଖରେ ଡିଜାଇନ୍ କରାଯାଇଥିବା ବୁଦ୍ଧିମତା';
			case 'info.subtitle': return 'ଅନୁଭୂତିରେ ନିର୍ମିତ ଗୋପନୀୟତା, ପସନ୍ଦ ଏବଂ ନିୟନ୍ତ୍ରଣ ସହିତ ଉପଯୋଗୀ AI।';
			case 'info.privacy_title': return 'ପ୍ରଥମେ ଗୋପନୀୟତା';
			case 'info.privacy_desc': return 'ZiqeX ବୁଦ୍ଧିମତା ଏବଂ ଆପଣଙ୍କ ସୂଚନାକୁ ଆପଣଙ୍କ ଡିଭାଇସ୍ ନିକଟରେ ରଖିବା ପାଇଁ ଡିଜାଇନ୍ କରାଯାଇଛି।';
			case 'info.hand_title': return 'ଆପଣଙ୍କ ହାତରେ ବୁଦ୍ଧିମତା';
			case 'info.hand_desc': return 'ଦୈନନ୍ଦିନ ବୁଦ୍ଧିମତା, ସିଧାସଳଖ ଆପଣଙ୍କ ଡିଭାଇସରେ ଉପଲବ୍ધ।';
			case 'info.control_title': return 'ଆପଣଙ୍କର ଡାଟା। ଆପଣଙ୍କର ନିୟନ୍ତ୍ରଣ।';
			case 'info.control_desc': return 'କ’ଣ ରଖାଯିବ ତାହା ବାଛନ୍ତୁ, ସଂରକ୍ଷିତ ହୋଇଥିବା ଜିନିଷକୁ ପରିଚାଳନା କରନ୍ତୁ ଏବଂ ଯାହା ଆପଣଙ୍କର ଆବଶ୍ୟକ ନାହିଁ ତାହାକୁ ଡିଲିଟ୍ କରନ୍ତୁ।';
			case 'info.place_title': return 'ପ୍ରତ୍ୟେକ ସ୍ଥାନ ପାଇଁ ଡିଜାଇନ୍ କରାଯାଇଛି';
			case 'info.place_desc': return 'ବିଭିନ୍ନ ଭାଷା, ଡିଭାଇସ୍ ଏବଂ ଲୋକମାନଙ୍କର ପ୍ରଯୁକ୍ତିବିଦ୍ୟା ବ୍ୟବହାର କରିବାର ଶୈଳୀ ପାଇଁ ନିର୍ମିତ।';
			case 'info.footer': return 'ଆପଣଙ୍କର ବୁଦ୍ଧିମତା। ଆପଣଙ୍କର ଡିଭାଇସ୍। ଆପଣଙ୍କର ନିୟନ୍ତ୍ରଣ।';
			case 'info.setup': return 'ଆପଣଙ୍କର ZiqeX ସେଟ୍ ଅପ୍ କରନ୍ତୁ';
			case 'languageSelection.appBar': return 'ଭାଷା ଚୟନ';
			case 'languageSelection.title': return 'ଆପଣଙ୍କର ଭାଷା ବାଛନ୍ତୁ';
			case 'languageSelection.subtitle': return 'ଆପଣଙ୍କର ଇଣ୍ଟରଫେସ୍ ପାଇଁ ଭାଷା ଚୟନ କରନ୍ତୁ।';
			case 'languageSelection.back': return 'ପଛକୁ';
			case 'languageSelection.continueBtn': return 'ଜାରି ରଖନ୍ତୁ';
			case 'pillars.appBar': return 'ସ୍ତମ୍ଭ ଚୟନ';
			case 'pillars.title': return 'ଆପଣଙ୍କର ସ୍ତମ୍ଭଗୁଡିକ ଚୟନ କରନ୍ତୁ';
			case 'pillars.subtitle': return 'ଆପଣ କେଉଁ ମୂଳ କ୍ଷମତା ଉପରେ ଧ୍ୟାନ ଦେବାକୁ ଚାହୁଁଛନ୍ତି ତାହା ବାଛନ୍ତୁ।';
			case 'pillars.general': return 'ସାଧାରଣ';
			case 'pillars.operational': return 'କାର୍ଯ୍ୟକ୍ଷମ';
			case 'pillars.personal': return 'ବ୍ୟକ୍ତିଗତ ପରାମର୍ଶ';
			case 'pillars.workplace': return 'କର୍ମକ୍ଷେତ୍ର';
			case 'pillars.culture': return 'ସଂସ୍କୃତି ଏବଂ ପରିବାର';
			case 'pillars.journal': return 'ଦୈନନ୍ଦିନ ଡାଏରୀ';
			case 'pillars.back': return 'ପଛକୁ';
			case 'pillars.continueBtn': return 'ଜାରି ରଖନ୍ତୁ';
			case 'modelDownload.title1': return 'BrahmAI-କୁ\nଆପଣଙ୍କ ନିକଟକୁ ';
			case 'modelDownload.title2': return 'ଆଣୁଛୁ।';
			case 'modelDownload.subtitle': return 'ଏକକାଳୀନ। ଏହା ପରେ, ଆମେ ଆପଣଙ୍କ ତଥ୍ୟକୁ କଦାପି ସ୍ପର୍ଶ କରିବୁ ନାହିଁ।';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'ପ୍ରସ୍ତୁତ';
			case 'modelDownload.validating': return 'ଯାଞ୍ଚ କରାଯାଉଛି...';
			case 'modelDownload.langs': return '୧୪ଟି ଭାଷା';
			case 'modelDownload.toks': return '~୧୮ tok/s';
			case 'modelDownload.ttft': return '~୧୪୦ ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'ତ୍ରୁଟି: ${error}';
			case 'modelDownload.retry': return 'ପୁନର୍ବାର ଚେଷ୍ਟା କରନ୍ତୁ';
			case 'modelDownload.open': return 'BrahmAI ଖୋଲନ୍ତୁ';
			case 'modelDownload.download': return 'ମଡେଲ୍ ଡାଉନଲୋଡ୍ କରନ୍ତୁ';
			case 'modelDownload.later': return 'ପରେ ସେଟଅପ୍ କରନ୍ତୁ';
			case 'modelDownload.continueSub': return 'ମଡେଲ୍ ଡାଉନଲୋଡ୍ ନକରି ଆଗକୁ ବଢନ୍ତୁ। ଆପଣ ପ୍ରସ୍ତୁତ ହେଲେ ଗୋଟିଏ ଯୋଡିପାରିବେ';
			case 'library_v2.subtitle': return 'ଆପଣଙ୍କର AI ସମ୍ବଳ ପରିଚାଳନା କରନ୍ତୁ';
			case 'library_v2.language_title': return 'ଭାଷା';
			case 'library_v2.language_desc': return 'ଆପଣଙ୍କର ପସନ୍ଦର ଭାଷା ବାଛନ୍ତୁ ଏବଂ ପରିଚାଳନା କରନ୍ତୁ';
			case 'library_v2.model_title': return 'ମଡେଲ୍';
			case 'library_v2.model_desc': return 'ଉପଲବ୍ଧ AI ମଡେଲଗୁଡିକୁ ଅନୁସନ୍ଧାନ ଏବଂ ପରିଚାଳନା କରନ୍ତୁ';
			case 'library_v2.saved_title': return 'ସଂରକ୍ଷିତ';
			case 'library_v2.saved_desc': return 'ଆପଣଙ୍କର ପ୍ରମ୍ପ୍ଟ ଲାଇବ୍ରେରୀ';
			case 'library_v2.skills_title': return 'ଦକ୍ଷତା';
			case 'library_v2.skills_desc': return 'AI କ୍ଷମତା';
			case 'biometric.vault': return 'ଭଲ୍ଟ ସୁରକ୍ଷା';
			case 'biometric.setupTitle': return 'ସୁରକ୍ଷିତ ଲକ୍ ସେଟଅପ୍';
			case 'biometric.setupSub': return 'ଆପଣଙ୍କର ପସନ୍ଦର ପ୍ରାମାଣିକିକରଣ ପଦ୍ଧତି ସହିତ ଆପଣଙ୍କର ଭଲ୍ଟକୁ ସୁରକ୍ଷିତ କରନ୍ତୁ |';
			case 'biometric.deviceTitle': return 'ଡିଭାଇସ୍ ବାୟୋମେଟ୍ରିକ୍ସ';
			case 'biometric.deviceSub': return 'FaceID କିମ୍ବା ଫିଙ୍ଗରପ୍ରିଣ୍ଟ ବ୍ୟବહાર କରନ୍ତୁ';
			case 'biometric.pinTitle': return 'ଆପ୍-ନିର୍ଦ୍ଦିଷ୍ଟ ପିନ୍';
			case 'biometric.pinSub': return 'ଏକ ଅନନ୍ୟ 4-ଅଙ୍କ ବିଶିષ્ટ କୋଡ୍ ସେଟ୍ କରନ୍ତୁ';
			case 'biometric.dialogTitle': return 'ବାୟୋମେଟ୍ରିକ୍ ଆକ୍ସେସ୍ ଅନୁମତି ଦିଅନ୍ତୁ';
			case 'biometric.dialogSub': return 'ZiqeX କୁ ଅନଲକ୍ କରିବାକୁ ଆପଣଙ୍କର ଫିଙ୍ગରପ୍ରିଣ୍ଟ କିମ୍ବା ଡିଭାଇସ୍ ଫେସ୍ ଚିହ୍ନଟ ବ୍ୟବହାର କରନ୍ତୁ';
			case 'biometric.cancel': return 'ବାତିଲ୍ କରନ୍ତୁ';
			case 'biometric.allow': return 'ବାୟୋମେଟ୍ରିକ୍ସ ଅନୁମତି ଦିଅନ୍ତୁ';
			case 'security_screen.appBar': return 'ଆପ୍ ସୁରକ୍ଷା';
			case 'security_screen.global_protection': return 'ଗ୍ଲୋବାଲ୍ ସୁରକ୍ଷା';
			case 'security_screen.app_lock': return 'ଆପ୍ ଲକ୍';
			case 'security_screen.app_lock_sub': return 'ZiqeX ଖୋଲିବା ପାଇଁ ପ୍ରମାଣୀକରଣ ଆବଶ୍ୟକ';
			case 'security_screen.auth_methods': return 'ପ୍ରମାଣୀକରଣ ପଦ୍ଧତି';
			case 'security_screen.biometrics_title': return 'ଡିଭାଇସ୍ ବାୟୋମେଟ୍ରିକ୍ସ';
			case 'security_screen.biometrics_sub': return 'ଆପଣଙ୍କର ଫିଙ୍ଗرପ୍ରିଣ୍ଟ କିମ୍ବା ମୁହଁ ସହିତ ତୁରନ୍ତ ଅନଲକ୍ କରନ୍ତୁ';
			case 'security_screen.pin_title': return 'ZiqeX ପିନ୍';
			case 'security_screen.pin_active': return 'ପିନ୍ ସକ୍ରିୟ ଅଛି';
			case 'security_screen.pin_setup': return 'ଆପ୍ ଅନଲକ୍ କରିବା ପାଇଁ ଏକ ସ୍ୱତନ୍ତ୍ର 4-ଅଙ୍କ ବିଶିଷ୍ਟ କୋଡ୍ ସେଟ୍ କରନ୍ତୁ';
			case 'security_screen.warning_title': return 'ଅତ୍ୟଧିକ ଭୁଲ୍ ପ୍ରୟାସ';
			case 'security_screen.warning_sub': return 'ଯଦି ଭୁଲ୍ ପିନ୍ 10 ଥର ଏଣ୍ଟର୍ କରାଯାଏ, ତେବେ ZiqeX ସ୍ୱୟଂଚାଳିତ ଭାବରେ ରିସେଟ୍ ହୋଇଯିବ | ଏହି ଡିଭାଇସରେ ସଂରକ୍ଷିତ ସମସ୍ତ ତଥ୍ୟ ସ୍ଥାୟୀ ଭାବରେ ବିଲୁପ୍ତ ହୋଇଯିବ';
			case 'security_screen.incomplete_title': return 'ସୁରକ୍ଷା ସେଟଅପ୍ ଅସମ୍ପୂର୍ଣ୍ଣ';
			case 'security_screen.incomplete_content': return 'ଆପଣ ଆପ୍ ଲକ୍ ସକ୍ଷମ କରିଛନ୍ତି କିନ୍ତୁ ପିନ୍ କିମ୍ବା ବାୟୋମେଟ୍ରିକ୍ସ ସେଟ୍ କରିନାହାଁନ୍ତି | କୌଣସି ପଦ୍ଧତି ବିନ୍ୟାସ ନହେବା ପର୍ଯ୍ୟନ୍ତ ଆପ୍ ଲକ୍ ଅକ୍ଷମ ରହିବ |';
			case 'security_screen.got_it': return 'ବୁଝିଲି';
			case 'data.appBar': return 'ଡାଟା ପରିଚାଳନା ଏବଂ\nସଂରକ୍ଷଣ';
			case 'data.summary': return 'ଷ୍ଟୋରେଜ୍ ସାରାଂଶ';
			case 'data.totalUsed': return 'ମୋଟ ବ୍ୟବହୃତ: ';
			case 'data.legendModel': return 'ମଡେଲ୍ ଓଜନ';
			case 'data.legendFree': return 'ଖାଲି ସ୍ଥାନ';
			case 'data.mgmt': return 'ମଡେଲ୍ ପରିଚାଳନା';
			case 'data.deleteModels': return 'ସମସ୍ତ ଡାଉନଲୋଡ୍ ହୋଇଥିବା ମଡେଲଗୁଡିକ ଡିଲିଟ୍ କରନ୍ତୁ';
			case 'data.deleteModelsSub': return 'ଏହି ଡିଭਾਈସରୁ ସମସ୍ତ ସ୍ଥାନୀୟ ମଡେଲ୍ ଓଜନ ଏବଂ ପାରାମିଟରଗୁଡିକ ସମ୍ପୂର୍ଣ୍ଣ ରୂପେ ବାହାର କରନ୍ତୁ |';
			case 'data.selectDelete': return 'ଡିଲିଟ୍ କରିବାକୁ ମଡେଲଗୁଡିକ ଚୟନ କରନ୍ତୁ';
			case 'data.autoDelete': return 'ଏହାଠାରୁ ପୁରୁଣା ଚାଟ୍ ଗୁଡିକୁ ଅଟୋ-ଡିଲିଟ୍ କରନ୍ତୁ:';
			case 'data.autoDeleteSub': return 'ଏହି ସେଟିଂ ସମସ୍ତ ଅଲିଙ୍କ୍ ହୋଇଥିବା ବାର୍ତ୍ତାଳାପ ମୋଡ୍ ପାଇଁ ପ୍ରଯୁଜ୍ୟ |';
			case 'data.modes': return 'ମୋଡ୍ ଗୁଡିକ';
			case 'data.noData': return 'କୌଣସି ସକ୍ରିୟ ଚାଟ୍ ଡାଟା ନାହିଁ';
			case 'data.deleteAll': return 'ସମସ୍ତ ଡାଟା ଡିଲିଟ୍ କରନ୍ତୁ';
			case 'data.authReq': return 'ଆପ୍ ଲକ୍ ପୁନ-ପ୍ରାମାଣିକିକରଣ ଆବଶ୍ୟକ କରେ';
			case 'data.viewChats': return 'ଚାଟ୍ ଦେଖନ୍ତୁ';
			case 'data.deleteAllPillar': return 'ସବୁ ଡିଲିଟ୍ କରନ୍ତୁ';
			case 'data.space': return 'ସ୍ଥାନ:';
			case 'data.activeInstances': return 'ସକ୍ରିୟ ଇନଷ୍ଟାନ୍ସ:';
			case 'pin_setup.title_setup': return '୪-ଅଙ୍କ ବିଶିଷ୍ଟ ପିନ୍ ସେଟ୍ କରନ୍ତୁ';
			case 'pin_setup.subtitle_setup': return 'ଆପ୍ ଆକ୍ସେସ୍ କରିବା ପାଇଁ ଏକ ସୁରକ୍ଷିତ କୋଡ୍ ସୃଷ୍ଟି କରନ୍ତୁ';
			case 'pin_setup.title_confirm': return 'ପିନ୍ ନିଶ୍ଚିତ କରନ୍ତୁ';
			case 'pin_setup.subtitle_confirm': return 'ଯାଞ୍ଚ କରିବା ପାଇଁ ଆପଣଙ୍କର ୪-ଅଙ୍କ ବିଶିଷ୍ଟ କୋଡ୍ ପୁନର୍ବାର ପ୍ରବେଶ କରନ୍ତୁ';
			case 'pin_setup.title_verify': return 'ବର୍ତ୍ତମାନର ପିନ୍ ପ୍ରବେଶ କରନ୍ତୁ';
			case 'pin_setup.subtitle_verify': return 'ଜାରି ରଖିବା ପାଇଁ ଆପଣଙ୍କର ବିଦ୍ୟମାନ କୋଡ୍ ପ୍ରବେଶ କରନ୍ତୁ';
			case 'pin_setup.error_mismatch': return 'ପିନ୍ ମେଳ ହେଉନାହିଁ | ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ |';
			case 'pin_setup.error_incorrect': return 'ଭୁଲ୍ ପିନ୍ | ଦୟାକରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ |';
			case 'pin_setup.snack_success': return 'ପିନ୍ ସଫଳତାର ସହିତ ସେଟ୍ ହୋଇଛି';
			case 'pin_mgmt.appBar': return 'ଆପ୍-ନିର୍ଦ୍ଦିଷ୍ଟ ପିନ୍';
			case 'pin_mgmt.change_title': return 'ପିନ୍ ପରିବର୍ତ୍ତନ କରନ୍ତୁ';
			case 'pin_mgmt.change_sub': return 'ଆପଣଙ୍କର ୪-ଅଙ୍କ ବିଶିଷ୍ଟ ZiqeX ସୁରକ୍ଷା କୋଡ୍ ଅପଡେਟ୍ କରନ୍ତୁ';
			case 'pin_mgmt.remove_title': return 'ପିନ୍ ହଟାନ୍ତୁ';
			case 'pin_mgmt.remove_sub': return 'ZiqeX ପାଇଁ ପିନ୍ ଆକ୍ସେସ୍ ବନ୍ଦ କରନ୍ତୁ';
			case 'pin_mgmt.snack_removed': return 'ପିନ୍ ସଫଳତାର ସହିତ ହଟାଗଲା';
			case 'lang_legacy.title1': return 'କେଉଁ ଭାଷା\n';
			case 'lang_legacy.title2': return 'ନିଜର ପରି ଲାଗେ?';
			case 'lang_legacy.subtitle': return 'ଆପଣଙ୍କ ମାତୃଭାଷାରେ ସ୍ୱର, ପାଠ୍ୟ ଏବଂ ଉତ୍ତର | ଯେକୌଣସି ସମୟରେ ପରିବର୍ତ୍ତନ କରନ୍ତୁ |';
			case 'lang_legacy.first_reply': return 'ପ୍ରଥਮ ଉତ୍ତର ଏହିପରି ହେବ';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - ଆପଣଙ୍କ ଲିପିରେ ଲିଖିତ ଏବଂ କଥିତ';
			case 'lang_legacy.continueBtn': return 'ଜାରି ରଖନ୍ତୁ';
			default: return null;
		}
	}
}

extension on _StringsPa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'ਸਤਿ ਸ੍ਰੀ ਅਕਾਲ';
			case 'mind_today': return 'ਅੱਜ ਤੁਹਾਡੇ ਮਨ ਵਿੱਚ ਕੀ ਹੈ?';
			case 'on_device_only': return 'ਸਿਰਫ਼ ਇਸ ਡਿਵਾਈਸ \'ਤੇ';
			case 'offline': return 'ਆਫ਼ਲਾਈਨ';
			case 'start_something': return 'ਕੁਝ ਸ਼ੁਰੂ ਕਰੋ';
			case 'ask_anything': return 'ਕੁਝ ਵੀ ਪੁੱਛੋ';
			case 'ask_anything_sub': return 'ਸਿਹਤ · ਕਾਨੂੰਨੀ · ਨਿੱਜੀ · ਕੰਮ';
			case 'voice_mode': return 'ਵੌਇਸ ਮੋਡ';
			case 'voice_mode_sub': return 'ਆਪਣੀ ਭਾਸ਼ਾ ਵਿੱਚ ਬੋਲੋ';
			case 'ask_image': return 'ਤਸਵੀਰ ਤੋਂ ਪੁੱਛੋ';
			case 'ask_image_sub': return 'ਫਾਰਮ, ਲੇਬਲ, ਸਕ੍ਰਿਪਟਾਂ';
			case 'panchang': return 'ਪੰਚਾਂਗ';
			case 'panchang_sub': return 'ਅੱਜ ਦੀ ਤਿਥੀ ਅਤੇ ਮੁਹੂਰਤ';
			case 'ephemeral': return 'ਥੋੜ੍ਹੇ ਸਮੇਂ ਲਈ';
			case 'ephemeral_sub': return 'ਬਿਨਾਂ ਕਿਸੇ ਨਿਸ਼ਾਨ ਦੇ ਬੋਲੋ';
			case 'recent': return 'ਹਾਲੀਆ';
			case 'home': return 'ਹੋਮ';
			case 'chat': return 'ਚੈਟ';
			case 'library': return 'ਲਾਈਬ੍ਰੇਰੀ';
			case 'you': return 'ਤੁਸੀਂ';
			case 'settings_pref': return 'ਪ੍ਰੋਫਾਈਲ ਸੈਟਿੰਗਾਂ';
			case 'preferences': return 'ਪਸੰਦਾਂ ਅਤੇ ਸੁਰੱਖਿਆ';
			case 'language': return 'ਭਾਸ਼ਾ';
			case 'security': return 'ਸੁਰੱਖਿਆ';
			case 'security_sub': return 'ਐਪ ਲੌਕ · 2FA';
			case 'privacy_tiers': return 'ਪ੍ਰਾਈਵੇਸੀ ਮੋਡ';
			case 'privacy_tiers_sub': return '1 ਸਰਗਰਮ \'ZiqeX ਲਿਸਨਿੰਗ ਮੋਡ\'';
			case 'storage_purge': return 'ਡੇਟਾ ਅਤੇ ਸਟੋਰੇਜ';
			case 'storage_purge_sub': return 'ਡਿਵਾਈਸ \'ਤੇ 184 KB';
			case 'ephemeral_mode': return 'ਗੁਪਤ ਚੈਟ';
			case 'about': return 'ਸਿਸਟਮ ਜਾਣਕਾਰੀ';
			case 'reset_prototype': return 'ਪ੍ਰੋਟੋਟਾਈਪ ਰੀਸੈਟ ਕਰੋ';
			case 'built_in_india': return 'ਭਾਰਤ ਵਿੱਚ ਬਣਿਆ। ਦੁਨੀਆ ਲਈ।';
			case 'library_sub': return 'ਹਰ ਮਾਡਲ · ਹਰ ਯਾਦ · ਇਸ ਡਿਵਾਈਸ \'ਤੇ';
			case 'on_this_device': return 'ਇਸ ਡਿਵਾਈਸ \'ਤੇ';
			case 'active': return 'ਸਰਗਰਮ';
			case 'add': return '+ ਜੋੜੋ';
			case 'storage_used': return 'ਵਰਤੀ ਗਈ ਸਟੋਰੇਜ';
			case 'health_question': return 'ਸਿਹਤ ਸਬੰਧੀ ਸਵਾਲ';
			case 'family': return 'ਪਰਿਵਾਰ';
			case 'work': return 'ਕੰਮ';
			case 'just_thinking': return 'ਬਸ ਸੋਚ ਰਿਹਾ ਹਾਂ';
			case 'profile.access': return 'ਪਹੁੰਚ';
			case 'profile.privacy': return 'ਪ੍ਰਾਈਵੇਸੀ';
			case 'profile.system': return 'ਸਿਸਟਮ';
			case 'profile.security_active': return 'ਸੁਰੱਖਿਆ ਸਰਗਰਮ ਹੈ';
			case 'profile.security_inactive': return 'ਸੁਰੱਖਿਆ ਸਰਗਰਮ ਨਹੀਂ ਹੈ';
			case 'profile.dark_mode': return 'ਡਾਰਕ ਮੋਡ';
			case 'profile.dark_mode_sub': return 'ਲਾਈਟ ਅਤੇ ਡਾਰਕ ਵਰਕਸਪੇਸ ਥੀਮ ਦੇ ਵਿਚਕਾਰ ਬਦਲੋ';
			case 'profile.data_mgmt': return 'ਚੈਟ ਡੇਟਾ ਪ੍ਰਬੰਧਨ ਅਤੇ ਸਟੋਰੇਜ';
			case 'profile.data_mgmt_sub': return 'ਆਪਣੀ ਗੱਲਬਾਤ ਦੀ ਹਿਸਟਰੀ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ';
			case 'profile.app_lock': return 'ਐਪ ਲੌਕ';
			case 'profile.app_lock_sub': return 'ਆਪਣੇ ਫਿੰਗਰਪ੍ਰਿੰਟ, ਚਿਹਰੇ ਜਾਂ ਪਿਨ ਨਾਲ ZiqeX ਨੂੰ ਸੁਰੱਖਿਅਤ ਕਰੋ';
			case 'profile.incognito_sub': return 'ਹਿਸਟਰੀ ਵਿੱਚ ਸੁਰੱਖਿਅਤ ਕੀਤੇ ਬਿਨਾਂ ਚੈਟ ਕਰੋ। ਚੈਟ ਤੋਂ ਬਾਹਰ ਆਉਣ ਤੋਂ ਬਾਅਦ ਵਾਪਸ ਨਹੀਂ ਲਿਆਂਦਾ ਜਾ ਸਕਦਾ';
			case 'profile.version': return 'V0.1 • ਪ੍ਰਭੂਸੱਤਾ • ਆਨ-ਡਿਵਾਈਸ';
			case 'welcome.meet': return 'ZiqeX ਨੂੰ ਮਿਲੋ';
			case 'welcome.at_edge': return 'ਕਿਨਾਰੇ \'ਤੇ ਬੁੱਧੀ (Edge)';
			case 'welcome.private': return 'ਨਿੱਜੀ ਅਤੇ ਐਜ AI\nZenteiQ ਦੁਆਰਾ';
			case 'welcome.begin': return 'ਆਨਬੋਰਡਿੰਗ ਸ਼ੁਰੂ ਕਰੋ';
			case 'info.title': return 'ਤੁਹਾਡੇ ਆਲੇ-ਦੁਆਲੇ ਤਿਆਰ ਕੀਤੀ ਗਈ ਬੁੱਧੀ';
			case 'info.subtitle': return 'ਪ੍ਰਾਈਵੇਸੀ, ਪਸੰਦ ਅਤੇ ਨਿਯੰਤਰਣ ਦੇ ਨਾਲ ਉਪਯੋਗੀ AI।';
			case 'info.privacy_title': return 'ਪ੍ਰਾਈਵੇਸੀ ਪਹਿਲਾਂ';
			case 'info.privacy_desc': return 'ZiqeX ਬੁੱਧੀ ਅਤੇ ਤੁਹਾਡੀ ਜਾਣਕਾਰੀ ਨੂੰ ਤੁਹਾਡੇ ਡਿਵਾਈਸ ਦੇ ਨੇੜੇ ਰੱਖਣ ਲਈ ਤਿਆਰ ਕੀਤਾ ਗਿਆ ਹੈ।';
			case 'info.hand_title': return 'ਤੁਹਾਡੇ ਹੱਥ ਵਿੱਚ ਬੁੱਧੀ';
			case 'info.hand_desc': return 'ਰੋਜ਼ਾਨਾ ਦੀ ਬੁੱਧੀ, ਸਿੱਧਾ ਤੁਹਾਡੇ ਡਿਵਾਈਸ \'ਤੇ ਉਪਲਬਧ।';
			case 'info.control_title': return 'ਤੁਹਾਡਾ ਡੇਟਾ। ਤੁਹਾਡਾ ਨਿਯੰਤਰਣ।';
			case 'info.control_desc': return 'ਚੁਣੋ ਕਿ ਕੀ ਰੱਖਣਾ ਹੈ, ਜੋ ਸਟੋਰ ਕੀਤਾ ਗਿਆ ਹੈ ਉਸਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ, ਅਤੇ ਜਿਸਦੀ ਤੁਹਾਨੂੰ ਹੁਣ ਲੋੜ ਨਹੀਂ ਹੈ ਉਸਨੂੰ ਮਿਟਾਓ।';
			case 'info.place_title': return 'ਹਰ ਜਗ੍ਹਾ ਲਈ ਤਿਆਰ ਕੀਤਾ ਗਿਆ';
			case 'info.place_desc': return 'ਵੱਖ-ਵੱਖ ਭਾਸ਼ਾਵਾਂ, ਡਿਵਾਈਸਾਂ ਅਤੇ ਲੋਕਾਂ ਦੇ ਤਕਨਾਲੋਜੀ ਦੀ ਵਰਤੋਂ ਕਰਨ ਦੇ ਤਰੀਕਿਆਂ ਲਈ ਬਣਾਇਆ ਗਿਆ।';
			case 'info.footer': return 'ਤੁਹਾਡੀ ਬੁੱਧੀ. ਤੁਹਾਡਾ ਡਿਵਾਈਸ. ਤੁਹਾਡਾ ਨਿਯੰਤਰਣ।';
			case 'info.setup': return 'ਆਪਣਾ ZiqeX ਸੈੱਟ ਅੱਪ ਕਰੋ';
			case 'languageSelection.appBar': return 'ਭਾਸ਼ਾ ਦੀ ਚੋਣ';
			case 'languageSelection.title': return 'ਆਪਣੀ ਭਾਸ਼ਾ ਚੁਣੋ';
			case 'languageSelection.subtitle': return 'ਆਪਣੇ ਇੰਟਰਫੇਸ ਲਈ ਭਾਸ਼ਾ ਚੁਣੋ।';
			case 'languageSelection.back': return 'ਪਿੱਛੇ';
			case 'languageSelection.continueBtn': return 'ਜਾਰੀ ਰੱਖੋ';
			case 'pillars.appBar': return 'ਪਿੱਲਰਾਂ ਦੀ ਚੋਣ';
			case 'pillars.title': return 'ਆਪਣੇ ਪਿੱਲਰ ਚੁਣੋ';
			case 'pillars.subtitle': return 'ਉਹ ਮੁੱਖ ਸਮਰੱਥਾਵਾਂ ਚੁਣੋ ਜਿਨ੍ਹਾਂ \'ਤੇ ਤੁਸੀਂ ਧਿਆਨ ਕੇਂਦਰਿਤ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ।';
			case 'pillars.general': return 'ਆਮ';
			case 'pillars.operational': return 'ਕਾਰਜਸ਼ੀਲ';
			case 'pillars.personal': return 'ਨਿੱਜੀ ਸਲਾਹ';
			case 'pillars.workplace': return 'ਕੰਮ ਵਾਲੀ ਥਾਂ';
			case 'pillars.culture': return 'ਸੱਭਿਆਚਾਰ ਅਤੇ ਪਰਿਵਾਰ';
			case 'pillars.journal': return 'ਰੋਜ਼ਾਨਾ ਡਾਇਰੀ';
			case 'pillars.back': return 'ਪਿੱਛੇ';
			case 'pillars.continueBtn': return 'ਜਾਰੀ ਰੱਖੋ';
			case 'modelDownload.title1': return 'BrahmAI-ਨੂੰ\nਤੁਹਾਡੇ ਕੋਲ ';
			case 'modelDownload.title2': return 'ਲਿਆ ਰਹੇ ਹਾਂ।';
			case 'modelDownload.subtitle': return 'ਇੱਕ ਵਾਰ। ਇਸ ਤੋਂ ਬਾਅਦ, ਅਸੀਂ ਤੁਹਾਡੇ ਡੇਟਾ ਨੂੰ ਕਦੇ ਵੀ ਹੱਥ ਨਹੀਂ ਲਗਾਵਾਂਗੇ।';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'ਤਿਆਰ';
			case 'modelDownload.validating': return 'ਪੁਸ਼ਟੀ ਕੀਤੀ ਜਾ ਰਹੀ ਹੈ...';
			case 'modelDownload.langs': return '14 ਭਾਸ਼ਾਵਾਂ';
			case 'modelDownload.toks': return '~18 tok/s';
			case 'modelDownload.ttft': return '~140 ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'ਗਲਤੀ: ${error}';
			case 'modelDownload.retry': return 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';
			case 'modelDownload.open': return 'BrahmAI ਖੋਲ੍ਹੋ';
			case 'modelDownload.download': return 'ਮਾਡਲ ਡਾਊਨਲੋਡ ਕਰੋ';
			case 'modelDownload.later': return 'ਬਾਅਦ ਵਿੱਚ ਸੈੱਟਅੱਪ ਕਰੋ';
			case 'modelDownload.continueSub': return 'ਮਾਡਲ ਡਾਊਨਲੋਡ ਕੀਤੇ ਬਿਨਾਂ ਜਾਰੀ ਰੱਖੋ। ਜਦੋਂ ਤੁਸੀਂ ਤਿਆਰ ਹੋਵੋ ਤਾਂ ਇੱਕ ਜੋੜ ਸਕਦੇ ਹੋ';
			case 'library_v2.subtitle': return 'ਆਪਣੇ AI ਸਰੋਤਾਂ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ';
			case 'library_v2.language_title': return 'ਭਾਸ਼ਾ';
			case 'library_v2.language_desc': return 'ਆਪਣੀਆਂ ਪਸੰਦੀਦਾ ਭਾਸ਼ਾਵਾਂ ਚੁਣੋ ਅਤੇ ਪ੍ਰਬੰਧਿਤ ਕਰੋ';
			case 'library_v2.model_title': return 'ਮਾਡਲ';
			case 'library_v2.model_desc': return 'ਉਪਲਬਧ AI ਮਾਡਲਾਂ ਦੀ ਖੋਜ ਅਤੇ ਪ੍ਰਬੰਧਨ ਕਰੋ';
			case 'library_v2.saved_title': return 'ਸੁਰੱਖਿਅਤ';
			case 'library_v2.saved_desc': return 'ਤੁਹਾਡੀ ਪ੍ਰੋਂਪਟ ਲਾਇਬ੍ਰੇਰੀ';
			case 'library_v2.skills_title': return 'ਹੁਨਰ';
			case 'library_v2.skills_desc': return 'AI ਸਮਰੱਥਾਵਾਂ';
			case 'biometric.vault': return 'ਵੌਲਟ ਸੁਰੱਖਿਆ';
			case 'biometric.setupTitle': return 'ਸੁਰੱਖਿਅਤ ਲੌਕ ਸੈੱਟਅੱਪ';
			case 'biometric.setupSub': return 'ਆਪਣੀ ਪਸੰਦੀਦਾ ਪ੍ਰਮਾਣਿਕਤਾ ਵਿਧੀ ਨਾਲ ਆਪਣੇ ਵੌਲਟ ਨੂੰ ਸੁਰੱਖਿਅਤ ਕਰੋ।';
			case 'biometric.deviceTitle': return 'ਡਿਵਾਈਸ ਬਾਇਓਮੈਟ੍ਰਿਕਸ';
			case 'biometric.deviceSub': return 'FaceID ਜਾਂ ਫਿੰਗਰਪ੍ਰਿੰਟ ਦੀ ਵਰਤੋਂ ਕਰੋ';
			case 'biometric.pinTitle': return 'ਐਪ-ਵਿਸ਼ੇਸ਼ ਪਿਨ';
			case 'biometric.pinSub': return 'ਇੱਕ ਵਿਲੱਖਣ 4-ਅੰਕਾਂ ਵਾਲਾ ਕੋਡ ਸੈੱਟ ਕਰੋ';
			case 'biometric.dialogTitle': return 'ਬਾਇਓਮੈਟ੍ਰਿਕ ਪਹੁੰਚ ਦੀ ਆਗਿਆ ਦਿਓ';
			case 'biometric.dialogSub': return 'ZiqeX ਨੂੰ ਅਨਲੌਕ ਕਰਨ ਲਈ ਆਪਣੇ ਫਿੰਗਰਪ੍ਰਿੰਟ ਜਾਂ ਡਿਵਾਈਸ ਫੇਸ ਰਿਕੋਗਨੀਸ਼ਨ ਦੀ ਵਰਤੋਂ ਕਰੋ';
			case 'biometric.cancel': return 'ਰੱਦ ਕਰੋ';
			case 'biometric.allow': return 'ਬਾਇਓਮੈਟ੍ਰਿਕਸ ਦੀ ਆਗਿਆ ਦਿਓ';
			case 'security_screen.appBar': return 'ਐਪ ਸੁਰੱਖਿਆ';
			case 'security_screen.global_protection': return 'ਗਲੋਬਲ ਸੁਰੱਖਿਆ';
			case 'security_screen.app_lock': return 'ਐਪ ਲਾਕ';
			case 'security_screen.app_lock_sub': return 'ZiqeX ਖੋਲ੍ਹਣ ਲਈ ਪ੍ਰਮਾਣੀਕਰਨ ਦੀ ਲੋੜ ਹੈ';
			case 'security_screen.auth_methods': return 'ਪ੍ਰਮਾਣੀਕਰਨ ਵਿਧੀਆਂ';
			case 'security_screen.biometrics_title': return 'ਡਿਵਾਈਸ ਬਾਇਓਮੈਟ੍ਰਿਕਸ';
			case 'security_screen.biometrics_sub': return 'ਆਪਣੇ ਫਿੰਗਰਪ੍ਰਿੰਟ ਜਾਂ ਚਿਹਰੇ ਨਾਲ ਤੁਰੰਤ ਅਨਲਾਕ ਕਰੋ';
			case 'security_screen.pin_title': return 'ZiqeX ਪਿੰਨ';
			case 'security_screen.pin_active': return 'ਪਿੰਨ ਸਰਗਰਮ ਹੈ';
			case 'security_screen.pin_setup': return 'ਐਪ ਨੂੰ ਅਨਲਾਕ ਕਰਨ ਲਈ ਇੱਕ ਵਿਲੱਖਣ 4-ਅੰਕਾਂ ਵਾਲਾ ਕੋਡ ਸੈੱਟ ਕਰੋ';
			case 'security_screen.warning_title': return 'ਬਹੁਤ ਜ਼ਿਆਦਾ ਗਲਤ ਕੋਸ਼ਿਸ਼ਾਂ';
			case 'security_screen.warning_sub': return 'ਜੇਕਰ ਗਲਤ ਪਿੰਨ 10 ਵਾਰ ਦਰਜ ਕੀਤਾ ਜਾਂਦਾ ਹੈ, ਤਾਂ ZiqeX ਆਪਣੇ ਆਪ ਰੀਸੈਟ ਹੋ ਜਾਵੇਗਾ। ਇਸ ਡਿਵਾਈਸ \'ਤੇ ਸੁਰੱਖਿਅਤ ਕੀਤਾ ਸਾਰਾ ਡਾਟਾ ਪੱਕੇ ਤੌਰ \'ਤੇ ਮਿਟਾ ਦਿੱਤਾ ਜਾਵੇਗਾ';
			case 'security_screen.incomplete_title': return 'ਸੁਰੱਖਿਆ ਸੈੱਟਅੱਪ ਅਧੂਰਾ';
			case 'security_screen.incomplete_content': return 'ਤੁਸੀਂ ਐਪ ਲਾਕ ਨੂੰ ਚਾਲੂ ਕਰ ਦਿੱਤਾ ਹੈ ਪਰ ਪਿੰਨ ਜਾਂ ਬਾਇਓਮੈਟ੍ਰਿਕਸ ਸੈੱਟ ਨਹੀਂ ਕੀਤਾ ਹੈ। ਐਪ ਲਾਕ ਉਦੋਂ ਤੱਕ ਬੰਦ ਰਹੇਗਾ ਜਦੋਂ ਤੱਕ ਕੋਈ ਤਰੀਕਾ ਸੈੱਟ ਨਹੀਂ ਕੀਤਾ ਜਾਂਦਾ।';
			case 'security_screen.got_it': return 'ਠੀਕ ਹੈ';
			case 'data.appBar': return 'ਡੇਟਾ ਪ੍ਰਬੰਧਨ ਅਤੇ\nਸਟੋਰੇਜ';
			case 'data.summary': return 'ਸਟੋਰੇਜ ਸੰਖੇਪ';
			case 'data.totalUsed': return 'ਕੁੱਲ ਵਰਤੀ ਗਈ: ';
			case 'data.legendModel': return 'ਮਾਡਲ ਵੇਟ';
			case 'data.legendFree': return 'ਖਾਲੀ ਥਾਂ';
			case 'data.mgmt': return 'ਮਾਡਲ ਪ੍ਰਬੰਧਨ';
			case 'data.deleteModels': return 'ਸਾਰੇ ਡਾਊਨਲੋਡ ਕੀਤੇ ਮਾਡਲ ਮਿਟਾਓ';
			case 'data.deleteModelsSub': return 'ਇਸ ਡਿਵਾਈਸ ਤੋਂ ਸਾਰੇ ਸਥਾਨਕ ਮਾਡਲ ਵੇਟ ਅਤੇ ਪੈਰਾਮੀਟਰਾਂ ਨੂੰ ਪੂਰੀ ਤਰ੍ਹਾਂ ਹਟਾਓ।';
			case 'data.selectDelete': return 'ਮਿਟਾਉਣ ਲਈ ਮਾਡਲ ਚੁਣੋ';
			case 'data.autoDelete': return 'ਇਸ ਤੋਂ ਪੁਰਾਣੀਆਂ ਚੈਟਾਂ ਆਪਣੇ ਆਪ ਮਿਟਾਓ:';
			case 'data.autoDeleteSub': return 'ਇਹ ਸੈਟਿੰਗ ਸਾਰੇ ਅਨਲਿੰਕਡ ਗੱਲਬਾਤ ਮੋਡਾਂ \'ਤੇ ਲਾਗੂ ਹੁੰਦੀ ਹੈ।';
			case 'data.modes': return 'ਮੋਡ';
			case 'data.noData': return 'ਕੋਈ ਸਰਗਰਮ ਚੈਟ ਡੇਟਾ ਨਹੀਂ';
			case 'data.deleteAll': return 'ਸਾਰਾ ਡੇਟਾ ਮਿਟਾਓ';
			case 'data.authReq': return 'ਐਪ ਲੌਕ ਰੀ-ਪ੍ਰਮਾਣਿਕਤਾ ਦੀ ਲੋੜ ਹੈ';
			case 'data.viewChats': return 'ਚੈਟ ਦੇਖੋ';
			case 'data.deleteAllPillar': return 'ਸਭ ਮਿਟਾਓ';
			case 'data.space': return 'ਥਾਂ:';
			case 'data.activeInstances': return 'ਸਰਗਰਮ ਇੰਸਟੈਂਸ:';
			case 'pin_setup.title_setup': return '4-ਅੰਕਾਂ ਦਾ ਪਿੰਨ ਸੈੱਟ ਕਰੋ';
			case 'pin_setup.subtitle_setup': return 'ਐਪ ਤੱਕ ਪਹੁੰਚ ਕਰਨ ਲਈ ਇੱਕ ਸੁਰੱਖਿਅਤ ਕੋਡ ਬਣਾਓ';
			case 'pin_setup.title_confirm': return 'ਪਿੰਨ ਦੀ ਪੁਸ਼ਟੀ ਕਰੋ';
			case 'pin_setup.subtitle_confirm': return 'ਪੁਸ਼ਟੀ ਕਰਨ ਲਈ ਆਪਣਾ 4-ਅੰਕਾਂ ਵਾਲਾ ਕੋਡ ਦੁਬਾਰਾ ਦਰਜ ਕਰੋ';
			case 'pin_setup.title_verify': return 'ਮੌਜੂਦਾ ਪਿੰਨ ਦਰਜ ਕਰੋ';
			case 'pin_setup.subtitle_verify': return 'ਜਾਰੀ ਰੱਖਣ ਲਈ ਆਪਣਾ ਮੌਜੂਦਾ ਕੋਡ ਦਰਜ ਕਰੋ';
			case 'pin_setup.error_mismatch': return 'ਪਿੰਨ ਮੇਲ ਨਹੀਂ ਖਾਂਦੇ। ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';
			case 'pin_setup.error_incorrect': return 'ਗਲਤ ਪਿੰਨ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';
			case 'pin_setup.snack_success': return 'ਪਿੰਨ ਸਫਲਤਾਪੂਰਵਕ ਸੈੱਟ ਕੀਤਾ ਗਿਆ';
			case 'pin_mgmt.appBar': return 'ਐਪ-ਵਿਸ਼ੇਸ਼ ਪਿੰਨ';
			case 'pin_mgmt.change_title': return 'ਪਿੰਨ ਬਦਲੋ';
			case 'pin_mgmt.change_sub': return 'ਆਪਣਾ 4-ਅੰਕਾਂ ਵਾਲਾ ZiqeX ਸੁਰੱਖਿਆ ਕੋਡ ਅਪਡੇਟ ਕਰੋ';
			case 'pin_mgmt.remove_title': return 'ਪਿੰਨ ਹਟਾਓ';
			case 'pin_mgmt.remove_sub': return 'ZiqeX ਲਈ ਪਿੰਨ ਪਹੁੰਚ ਬੰਦ ਕਰੋ';
			case 'pin_mgmt.snack_removed': return 'ਪਿੰਨ ਸਫਲਤਾਪੂਰਵਕ ਹਟਾ ਦਿੱਤਾ ਗਿਆ';
			case 'lang_legacy.title1': return 'ਕਿਹੜੀ ਭਾਸ਼ਾ\n';
			case 'lang_legacy.title2': return 'ਆਪਣੀ ਲੱਗਦੀ ਹੈ?';
			case 'lang_legacy.subtitle': return 'ਤੁਹਾਡੀ ਮਾਤ੍ਰ ਭਾਸ਼ਾ ਵਿੱਚ ਆਵਾਜ਼, ਟੈਕਸਟ ਅਤੇ ਜਵਾਬ। ਕਿਸੇ ਵੀ ਸਮੇਂ ਬਦਲੋ।';
			case 'lang_legacy.first_reply': return 'ਪਹਿਲਾ ਜਵਾਬ ਇਹ ਹੋਵੇਗਾ';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - ਤੁਹਾਡੀ ਲਿਪੀ ਵਿੱਚ ਲਿਖਿਆ ਅਤੇ ਬੋਲਿਆ ਗਿਆ';
			case 'lang_legacy.continueBtn': return 'ਜਾਰੀ ਰੱਖੋ';
			default: return null;
		}
	}
}

extension on _StringsTa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'வணக்கம்';
			case 'mind_today': return 'இன்று என்ன மனதில் இருக்கிறது?';
			case 'on_device_only': return 'இந்த சாதனத்தில் மட்டுமே';
			case 'offline': return 'ஆகப்லைன்';
			case 'start_something': return 'தொடங்குங்கள்';
			case 'ask_anything': return 'எதையும் கேளுங்கள்';
			case 'ask_anything_sub': return 'உடல்நலம் · சட்டம் · தனிப்பட்டது · வேலை';
			case 'voice_mode': return 'குரல் வழியாக';
			case 'voice_mode_sub': return 'உங்கள் மொழியில் பேசுங்கள்';
			case 'ask_image': return 'படத்திலிருந்து கேளுங்கள்';
			case 'ask_image_sub': return 'படிவம், லேபிள், எழுத்து';
			case 'panchang': return 'பஞ்சாங்கம்';
			case 'panchang_sub': return 'இன்றைய திதியும் முகூர்த்தமும்';
			case 'ephemeral': return 'தற்காலிகம்';
			case 'ephemeral_sub': return 'எந்தத் தடயமும் இல்லாமல்';
			case 'recent': return 'சமீபத்தியவை';
			case 'home': return 'முகப்பு';
			case 'chat': return 'அரட்டை';
			case 'library': return 'நூலகம்';
			case 'you': return 'நீங்கள்';
			case 'settings_pref': return 'அமைப்புகள் · விருப்பத்தேர்வுகள் · பற்றி';
			case 'preferences': return 'விருப்பத்தேர்வுகள்';
			case 'language': return 'மொழி';
			case 'security': return 'பாதுகாப்பு';
			case 'security_sub': return 'ஆப் லாக் · 2FA';
			case 'privacy_tiers': return 'தனியuரிமை அடுக்குகள்';
			case 'privacy_tiers_sub': return '2 செயலில் உள்ளன · ZiqeXAI எப்படி கேட்கிறது';
			case 'storage_purge': return 'சேமிப்பு மற்றும் நீக்கம்';
			case 'storage_purge_sub': return 'சாதனத்தில் 184 KB';
			case 'ephemeral_mode': return 'தற்காலிக முறை';
			case 'about': return 'பற்றி';
			case 'reset_prototype': return 'மாதிரியை மீட்டமைக்கவும்';
			case 'built_in_india': return 'இந்தியாவில் உருவாக்கப்பட்டது. உலகிற்காக.';
			case 'library_sub': return 'ஒவ்வொரு மாதிரியும் · ஒவ்வொரு நினைவகமும் · இந்த சாதனத்தில்';
			case 'on_this_device': return 'இந்த சாதனத்தில்';
			case 'active': return 'செயலில்';
			case 'add': return '+ சேர்க்க';
			case 'storage_used': return 'பயன்படுத்தப்பட்ட சேமிப்பு';
			case 'health_question': return 'சுகாதார கேள்வி';
			case 'family': return 'குடும்பம்';
			case 'work': return 'வேலை';
			case 'just_thinking': return 'சும்மா யோசிக்கிறேன்';
			case 'profile.access': return 'அணுகல்';
			case 'profile.privacy': return 'தனியுரிமை';
			case 'profile.system': return 'அமைப்பு';
			case 'profile.security_active': return 'பாதுகாப்பு செயலில் உள்ளது';
			case 'profile.security_inactive': return 'பாதுகாப்பு செயலிழந்துள்ளது';
			case 'profile.dark_mode': return 'இருண்ட பயன்முறை';
			case 'profile.dark_mode_sub': return 'ஒளி மற்றும் இருண்ட தீம்களுக்கு இடையே மாறவும்';
			case 'profile.data_mgmt': return 'தரவு மேலாண்மை';
			case 'profile.data_mgmt_sub': return 'அரட்டை வரலாற்றை நிர்வகிக்கவும்';
			case 'profile.app_lock': return 'ஆப் லாக்';
			case 'profile.app_lock_sub': return 'கைரேகை, முகம் அல்லது பின் (PIN) மூலம் பாதுகாக்கவும்';
			case 'profile.incognito_sub': return 'வரலாற்றில் சேமிக்காமல் அரட்டை அடிக்கவும். மீட்டெடுக்க முடியாது';
			case 'profile.version': return 'V0.1 • இறையாண்மை • சாதனத்தில்';
			case 'welcome.meet': return 'ZiqeX-ஐ சந்திக்கவும்';
			case 'welcome.at_edge': return 'எட்ஜில் உள்ள நுண்ணறிவு';
			case 'welcome.private': return 'தனியார் எட்ஜ் AI\nZenteiQ வழங்கியது';
			case 'welcome.begin': return 'தொடங்கலாம்';
			case 'info.title': return 'உங்களுக்கான நுண்ணறிவு';
			case 'info.subtitle': return 'தனியுரிமை மற்றும் முழு கட்டுப்பாட்டுடன் கூடிய AI அனுபவம்.';
			case 'info.privacy_title': return 'தனியுரிமை முதலில்';
			case 'info.privacy_desc': return 'உங்கள் தகவல்கள் உங்கள் சாதனத்திலேயே பாதுகாப்பாக இருக்கும்.';
			case 'info.hand_title': return 'கைக்குள் நுண்ணறிவு';
			case 'info.hand_desc': return 'தினசரி தேவைகளுக்கான நுண்ணறிவு உங்கள் சாதனத்திலேயே கிடைக்கும்.';
			case 'info.control_title': return 'முழு கட்டுப்பாடு';
			case 'info.control_desc': return 'தேவையானவற்றை வைத்துக்கொண்டு வேண்டாதவற்றை நீக்கலாம்.';
			case 'info.place_title': return 'அனைவருக்கும் ஏற்றது';
			case 'info.place_desc': return 'வெவ்வேறு மொழிகள் மற்றும் சாதனங்களுக்காக உருவாக்கப்பட்டது.';
			case 'info.footer': return 'உங்கள் நுண்ணறிவு. உங்கள் சாதனம். உங்கள் கட்டுப்பாடு.';
			case 'info.setup': return 'அமைப்பைத் தொடங்கவும்';
			case 'languageSelection.appBar': return 'மொழி தேர்வு';
			case 'languageSelection.title': return 'உங்கள் மொழியைத் தேர்ந்தெடுக்கவும்';
			case 'languageSelection.subtitle': return 'உங்கள் இடைமுகத்திற்கான மொழியைத் தேர்ந்தெடுக்கவும்.';
			case 'languageSelection.back': return 'பின்னால்';
			case 'languageSelection.continueBtn': return 'தொடரவும்';
			case 'pillars.appBar': return 'தூண்கள் தேர்வு';
			case 'pillars.title': return 'உங்கள் தூண்களைத் தேர்ந்தெடுக்கவும்';
			case 'pillars.subtitle': return 'நீங்கள் கவனம் செலுத்த விரும்பும் முக்கிய திறன்களைத் தேர்ந்தெடுக்கவும்.';
			case 'pillars.general': return 'பொதுவானது';
			case 'pillars.operational': return 'செயல்பாட்டு';
			case 'pillars.personal': return 'தனிப்பட்ட ஆலோசனை';
			case 'pillars.workplace': return 'பணியிடம்';
			case 'pillars.culture': return 'கலாச்சாரம் மற்றும் குடும்பம்';
			case 'pillars.journal': return 'தினசரி இதழ்';
			case 'pillars.back': return 'பின்னால்';
			case 'pillars.continueBtn': return 'தொடரவும்';
			case 'modelDownload.title1': return 'BrahmAI-ஐ\nஉங்களுக்கு ';
			case 'modelDownload.title2': return 'கொண்டு வருகிறோம்.';
			case 'modelDownload.subtitle': return 'ஒரு முறை மட்டும். இதற்குப் பிறகு, உங்கள் தரவை நாங்கள் தொட மாட்டோம்.';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'தயார்';
			case 'modelDownload.validating': return 'சரிபார்க்கப்படுகிறது...';
			case 'modelDownload.langs': return '14 மொழிகள்';
			case 'modelDownload.toks': return '~18 tok/s';
			case 'modelDownload.ttft': return '~140 ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'பிழை: ${error}';
			case 'modelDownload.retry': return 'மீண்டும் முயற்சிக்கவும்';
			case 'modelDownload.open': return 'திறக்கவும்';
			case 'modelDownload.download': return 'பதிவிறக்கவும்';
			case 'modelDownload.later': return 'பிறகு அமைக்கவும்';
			case 'modelDownload.continueSub': return 'பதிவிறக்காமல் தொடரவும். நீங்கள் தயாராக இருக்கும்போது ஒன்றைச் சேர்க்கலாம்';
			case 'library_v2.subtitle': return 'AI வளங்களை நிர்வகிக்கவும்';
			case 'library_v2.language_title': return 'மொழி';
			case 'library_v2.language_desc': return 'மொழிகளைத் தேர்ந்தெடுத்து நிர்வகிக்கவும்';
			case 'library_v2.model_title': return 'மாதிரி';
			case 'library_v2.model_desc': return 'AI மாதிரிகளை ஆராய்ந்து நிர்வகிக்கவும்';
			case 'library_v2.saved_title': return 'சேமிக்கப்பட்டது';
			case 'library_v2.saved_desc': return 'உங்கள் ப்ராம்ப்ட் நூலகம்';
			case 'library_v2.skills_title': return 'திறன்கள்';
			case 'library_v2.skills_desc': return 'AI திறன்கள்';
			case 'biometric.vault': return 'பெட்டக பாதுகாப்பு';
			case 'biometric.setupTitle': return 'பாதுகாப்பான லாக்';
			case 'biometric.setupSub': return 'விரும்பிய முறையில் உங்கள் பெட்டகத்தைப் பாதுகாக்கவும்.';
			case 'biometric.deviceTitle': return 'பயோமெட்ரிக்ஸ்';
			case 'biometric.deviceSub': return 'FaceID அல்லது கைரேகை';
			case 'biometric.pinTitle': return 'பின் (PIN) குறியீடு';
			case 'biometric.pinSub': return '4-இலக்க குறியீட்டை அமைக்கவும்';
			case 'biometric.dialogTitle': return 'அனுமதி';
			case 'biometric.dialogSub': return 'ZiqeX ஐத் திறக்க உங்கள் கைரேகை அல்லது முகத்தை பயன்படுத்தவும்';
			case 'biometric.cancel': return 'ரத்து';
			case 'biometric.allow': return 'அனுமதி';
			case 'security_screen.appBar': return 'செயலி பாதுகாப்பு';
			case 'security_screen.global_protection': return 'உலகளாவிய பாதுகாப்பு';
			case 'security_screen.app_lock': return 'செயலி பூட்டு';
			case 'security_screen.app_lock_sub': return 'ZiqeX ஐத் திறக்க அங்கீகாரம் தேவை';
			case 'security_screen.auth_methods': return 'அங்கீகார முறைகள்';
			case 'security_screen.biometrics_title': return 'சாதன பயோமெட்ரிக்ஸ்';
			case 'security_screen.biometrics_sub': return 'உங்கள் கைரேகை அல்லது முகத்தைக் கொண்டு உடனடியாகத் திறக்கவும்';
			case 'security_screen.pin_title': return 'ZiqeX பின்';
			case 'security_screen.pin_active': return 'பின் செயல்பாட்டில் உள்ளது';
			case 'security_screen.pin_setup': return 'செயலியைத் திறக்க ஒரு தனித்துவமான 4 இலக்க குறியீட்டை அமைக்கவும்';
			case 'security_screen.warning_title': return 'அதிகப்படியான தவறான முயற்சிகள்';
			case 'security_screen.warning_sub': return 'தவறான பின் 10 முறை உள்ளிடப்பட்டால், ZiqeX தானாகவே மீட்டமைக்கப்படும். இந்த சாதனத்தில் சேமிக்கப்பட்ட அனைத்து தரவுகளும் நிரந்தரமாக நீக்கப்படும்';
			case 'security_screen.incomplete_title': return 'பாதுகாப்பு அமைப்பு முழுமையடையவில்லை';
			case 'security_screen.incomplete_content': return 'நீங்கள் செயலி பூட்டை இயக்கியுள்ளீர்கள், ஆனால் பின் அல்லது பயோமெட்ரிக்ஸை அமைக்கவில்லை. ஒரு முறை கட்டமைக்கப்படும் வரை செயலி பூட்டு முடக்கப்படும்.';
			case 'security_screen.got_it': return 'புரிந்தது';
			case 'data.appBar': return 'தரவு மேலாண்மை';
			case 'data.summary': return 'சேமிப்பக சுருக்கம்';
			case 'data.totalUsed': return 'பயன்படுத்தப்பட்டது: ';
			case 'data.legendModel': return 'மாடல் எடைகள்';
			case 'data.legendFree': return 'வெற்று இடம்';
			case 'data.mgmt': return 'மாடல் மேலாண்மை';
			case 'data.deleteModels': return 'அனைத்தையும் நீக்கு';
			case 'data.deleteModelsSub': return 'மாடல் எடைகளை சாதனத்திலிருந்து முழுமையாக அகற்றவும்.';
			case 'data.selectDelete': return 'நீக்க வேண்டியவற்றைத் தேர்ந்தெடுக்கவும்';
			case 'data.autoDelete': return 'தானாக நீக்கு:';
			case 'data.autoDeleteSub': return 'அனைத்து அரட்டை முறைகளுக்கும் பொருந்தும்.';
			case 'data.modes': return 'முறைகள்';
			case 'data.noData': return 'தகவல்கள் இல்லை';
			case 'data.deleteAll': return 'அனைத்தையும் நீக்கு';
			case 'data.authReq': return 'மீண்டும் அங்கீகாரம் தேவை';
			case 'data.viewChats': return 'பார்';
			case 'data.deleteAllPillar': return 'நீக்கு';
			case 'data.space': return 'இடம்:';
			case 'data.activeInstances': return 'நிகழ்வுகள்:';
			case 'pin_setup.title_setup': return '4-இலக்க PIN-ஐ அமைக்கவும்';
			case 'pin_setup.subtitle_setup': return 'பயன்பாட்டை அணுக பாதுகாப்பான குறியீட்டை உருவாக்கவும்';
			case 'pin_setup.title_confirm': return 'PIN-ஐ உறுதிப்படுத்தவும்';
			case 'pin_setup.subtitle_confirm': return 'சரிபார்க்க உங்கள் 4-இலக்க குறியீட்டை மீண்டும் உள்ளிடவும்';
			case 'pin_setup.title_verify': return 'தற்போதைய PIN-ஐ உள்ளிடவும்';
			case 'pin_setup.subtitle_verify': return 'தொடர உங்கள் தற்போதைய குறியீட்டை உள்ளிடவும்';
			case 'pin_setup.error_mismatch': return 'PIN-கள் பொருந்தவில்லை. மீண்டும் முயற்சிக்கவும்.';
			case 'pin_setup.error_incorrect': return 'தவறான PIN. மீண்டும் முயற்சிக்கவும்.';
			case 'pin_setup.snack_success': return 'PIN வெற்றிகரமாக அமைக்கப்பட்டது';
			case 'pin_mgmt.appBar': return 'செயலி சார்ந்த PIN';
			case 'pin_mgmt.change_title': return 'PIN-ஐ மாற்றவும்';
			case 'pin_mgmt.change_sub': return 'உங்கள் 4-இலக்க ZiqeX பாதுகாப்புக் குறியீட்டைப் புதுப்பிக்கவும்';
			case 'pin_mgmt.remove_title': return 'PIN-ஐ அகற்றவும்';
			case 'pin_mgmt.remove_sub': return 'ZiqeX க்கான PIN அணுகலை முடக்கவும்';
			case 'pin_mgmt.snack_removed': return 'PIN வெற்றிகரமாக அகற்றப்பட்டது';
			case 'lang_legacy.title1': return 'எந்த மொழி\n';
			case 'lang_legacy.title2': return 'சொந்த உணர்வைத் தருகிறது?';
			case 'lang_legacy.subtitle': return 'உங்கள் தாய்மொழியில் குரல், உரை மற்றும் பதில்கள். எப்போது வேண்டுமானாலும் மாற்றிக்கொள்ளலாம்.';
			case 'lang_legacy.first_reply': return 'முதல் பதில் இவ்வாறு இருக்கும்';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - உங்கள் எழுத்துருவில் எழுதப்பட்டு பேசப்படும்';
			case 'lang_legacy.continueBtn': return 'தொடரவும்';
			default: return null;
		}
	}
}

extension on _StringsTe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'నమస్కారం';
			case 'mind_today': return 'ఈరోజు మీ మనస్సులో ఏముంది?';
			case 'on_device_only': return 'ఈ పరికరంలో మాత్రమే';
			case 'offline': return 'ఆఫ్‌లైన్';
			case 'start_something': return 'ప్రారంభించండి';
			case 'ask_anything': return 'ఏదైనా అడగండి';
			case 'ask_anything_sub': return 'ఆరోగ్యం · చట్టపరమైన · వ్యక్తిగత · పని';
			case 'voice_mode': return 'వాయిస్ మోడ్';
			case 'voice_mode_sub': return 'మీ భాషలో మాట్లాడండి';
			case 'ask_image': return 'చిత్రాన్ని అడగండి';
			case 'ask_image_sub': return 'ఫారమ్‌లు, లేబుల్‌లు, స్క్రిప్ట్‌లు';
			case 'panchang': return 'పంచాంగం';
			case 'panchang_sub': return 'నేటి తిథి & ముహూర్తం';
			case 'ephemeral': return 'ఎఫెమెరల్';
			case 'ephemeral_sub': return 'జాడ లేకుండా మాట్లాడండి';
			case 'recent': return 'ఇటీవలి';
			case 'home': return 'హోమ్';
			case 'chat': return 'చాట్';
			case 'library': return 'లైబ్రరీ';
			case 'you': return 'మీరు';
			case 'settings_pref': return 'ప్రొఫైల్ సెట్టింగ్‌లు';
			case 'preferences': return 'ప్రాధాన్యతలు మరియు భద్రత';
			case 'language': return 'భాష';
			case 'security': return 'భద్రత';
			case 'security_sub': return 'యాప్ లాక్ · 2FA';
			case 'privacy_tiers': return 'గోప్యతా మోడ్';
			case 'privacy_tiers_sub': return '1 యాక్టివ్ \'ZiqeX లిజనింగ్ మోడ్\'';
			case 'storage_purge': return 'డేటా మరియు నిలుపుదల';
			case 'storage_purge_sub': return 'పరికరంలో 184 KB';
			case 'ephemeral_mode': return 'ఇన్కాగ్నిటో చాట్';
			case 'about': return 'సిస్టమ్ సమాచారం';
			case 'reset_prototype': return 'ప్రోటోటోపిని రీసెట్ చేయండి';
			case 'built_in_india': return 'భారతదేశంలో నిర్మించబడింది. ప్రపంచం కోసం.';
			case 'library_sub': return 'ప్రతి మోడల్ · ప్రతి మెమరీ · ఈ పరికరంలో';
			case 'on_this_device': return 'ఈ పరికరంలో';
			case 'active': return 'యాక్టివ్';
			case 'add': return '+ జోడించు';
			case 'storage_used': return 'ఉపయోగించిన స్టోరేజ్';
			case 'health_question': return 'ఆరోగ్య ప్రశ్న';
			case 'family': return 'కుటుంబం';
			case 'work': return 'పని';
			case 'just_thinking': return 'ఊరికే ఆలోచిస్తున్నాను';
			case 'profile.access': return 'యాక్సెస్';
			case 'profile.privacy': return 'గోప్యత';
			case 'profile.system': return 'సిస్టమ్';
			case 'profile.security_active': return 'భద్రత యాక్టివ్‌గా ఉంది';
			case 'profile.security_inactive': return 'భద్రత యాక్టివ్‌గా లేదు';
			case 'profile.dark_mode': return 'డార్క్ మోడ్';
			case 'profile.dark_mode_sub': return 'లైట్ మరియు డార్క్ వర్క్‌స్పేస్ థీమ్‌ల మధ్య మారండి';
			case 'profile.data_mgmt': return 'చాట్ డేటా నిర్వహణ మరియు నిలుపుదల';
			case 'profile.data_mgmt_sub': return 'మీ సంభాషణ చరిత్రను నిర్వహించండి';
			case 'profile.app_lock': return 'యాప్ లాక్';
			case 'profile.app_lock_sub': return 'మీ వేలిముద్ర, ముఖం లేదా పిన్ ద్వారా ZiqeXను సురక్షితం చేయండి';
			case 'profile.incognito_sub': return 'చరిత్రలో సేవ్ చేయకుండా చాట్ చేయండి. చాట్ నుండి నిష్క్రమించిన తర్వాత తిరిగి పొందలేరు';
			case 'profile.version': return 'V0.1 • సార్వభౌమ • ఆన్-డివైస్';
			case 'welcome.meet': return 'ZiqeXని కలవండి';
			case 'welcome.at_edge': return 'ఎడ్జ్ వద్ద ఇంటెలిజెన్స్';
			case 'welcome.private': return 'ప్రైవేట్ మరియు ఎడ్జ్ AI\nZenteiQ ద్వారా';
			case 'welcome.begin': return 'ప్రారంభించండి';
			case 'info.title': return 'మీ చుట్టూ రూపొందించబడిన ఇంటెలిజెన్స్';
			case 'info.subtitle': return 'గోప్యత, ఎంపిక మరియు అనుభవంలో నిర్మించిన నియంత్రణతో ఉపయోగకరమైన AI.';
			case 'info.privacy_title': return 'ముందుగా గోప్యత';
			case 'info.privacy_desc': return 'ZiqeX ఇంటెలిజెన్స్ మరియు మీ సమాచారాన్ని మీ పరికరానికి దగ్గరగా ఉంచడానికి రూపొందించబడింది.';
			case 'info.hand_title': return 'మీ చేతిలో ఇంటెలిజెన్స్';
			case 'info.hand_desc': return 'రోజువారీ ఇంటెలిజెన్స్, నేరుగా మీ పరికరంలో అందుబాటులో ఉంటుంది.';
			case 'info.control_title': return 'మీ డేటా. మీ నియంత్రణ.';
			case 'info.control_desc': return 'దేనిని ఉంచుకోవాలో ఎంచుకోండి, నిల్వ చేయబడిన దానిని నిర్వహించండి మరియు మీకు అవసరం లేని వాటిని తొలగించండి.';
			case 'info.place_title': return 'ప్రతి ప్రదేశం కోసం రూపొందించబడింది';
			case 'info.place_desc': return 'విభిన్న భాషలు, పరికరాలు మరియు ప్రజలు సాంకేతికతను ఉపయోగించే మార్గాల కోసం నిర్మించబడింది.';
			case 'info.footer': return 'మీ ఇంటెలిజెన్స్. మీ పరికరం. మీ నియంత్రణ.';
			case 'info.setup': return 'మీ ZiqeXని సెటప్ చేయండి';
			case 'languageSelection.appBar': return 'భాష ఎంపిక';
			case 'languageSelection.title': return 'మీ భాషను ఎంచుకోండి';
			case 'languageSelection.subtitle': return 'మీ ఇంటర్ఫేస్ కోసం భాషను ఎంచుకోండి.';
			case 'languageSelection.back': return 'వెనుకకు';
			case 'languageSelection.continueBtn': return 'కొనసాగించండి';
			case 'pillars.appBar': return 'స్తంభాల ఎంపిక';
			case 'pillars.title': return 'మీ స్తంభాలను ఎంచుకోండి';
			case 'pillars.subtitle': return 'మీరు దృష్టి పెట్టాలనుకుంటున్న ప్రధాన సామర్థ్యాలను ఎంచుకోండి.';
			case 'pillars.general': return 'సాధారణం';
			case 'pillars.operational': return 'కార్యాచరణ';
			case 'pillars.personal': return 'వ్యక్తిగత సలహా';
			case 'pillars.workplace': return 'పని ప్రదేశం';
			case 'pillars.culture': return 'సంస్కృతి మరియు కుటుంబం';
			case 'pillars.journal': return 'రోజువారీ జర్నల్';
			case 'pillars.back': return 'వెనుకకు';
			case 'pillars.continueBtn': return 'కొనసాగించండి';
			case 'modelDownload.title1': return 'BrahmAI-ని\nమీ ముందుకు ';
			case 'modelDownload.title2': return 'తీసుకొస్తున్నాము.';
			case 'modelDownload.subtitle': return 'ఒక్కసారి మాత్రమే. దీని తర్వాత, మేము మీ డేటాను ఎప్పుడూ తాకము.';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'సిద్ధంగా ఉంది';
			case 'modelDownload.validating': return 'ధృవీకరిస్తున్నాము...';
			case 'modelDownload.langs': return '14 భాషలు';
			case 'modelDownload.toks': return '~18 tok/s';
			case 'modelDownload.ttft': return '~140 ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'లోపం: ${error}';
			case 'modelDownload.retry': return 'మళ్ళీ ప్రయత్నించండి';
			case 'modelDownload.open': return 'BrahmAIని తెరవండి';
			case 'modelDownload.download': return 'మోడల్‌ను డౌన్‌లోడ్ చేయండి';
			case 'modelDownload.later': return 'తర్వాత సెటప్ చేయండి';
			case 'modelDownload.continueSub': return 'మోడల్‌ను డౌన్‌లోడ్ చేయకుండా కొనసాగించండి. మీరు సిద్ధంగా ఉన్నప్పుడు ఒకదాన్ని జోడించవచ్చు';
			case 'library_v2.subtitle': return 'మీ AI వనరులను నిర్వహించండి';
			case 'library_v2.language_title': return 'భాష';
			case 'library_v2.language_desc': return 'మీకు నచ్చిన భాషలను ఎంచుకోండి మరియు నిర్వహించండి';
			case 'library_v2.model_title': return 'మోడల్';
			case 'library_v2.model_desc': return 'అందుబాటులో ఉన్న AI మోడల్‌లను అన్వేషించండి మరియు నిర్వహించండి';
			case 'library_v2.saved_title': return 'సేవ్ చేయబడింది';
			case 'library_v2.saved_desc': return 'మీ ప్రాంప్ట్ లైబ్రరీ';
			case 'library_v2.skills_title': return 'నైపుణ్యాలు';
			case 'library_v2.skills_desc': return 'AI సామర్థ్యాలు';
			case 'biometric.vault': return 'వాల్ట్ భద్రత';
			case 'biometric.setupTitle': return 'సురక్షిత లాక్ సెటప్';
			case 'biometric.setupSub': return 'మీకు ఇష్టమైన ప్రమాణీకరణ పద్ధతితో మీ వాల్ట్‌ను రక్షించుకోండి.';
			case 'biometric.deviceTitle': return 'డివైస్ బయోమెట్రిక్స్';
			case 'biometric.deviceSub': return 'FaceID లేదా వేలిముద్రను ఉపయోగించండి';
			case 'biometric.pinTitle': return 'యాప్-నిర్దిష్ట పిన్';
			case 'biometric.pinSub': return 'ఒక ప్రత్యేకమైన 4-అంకెల కోడ్‌ను సెట్ చేయండి';
			case 'biometric.dialogTitle': return 'బయోమెట్రిక్ యాక్సెస్‌ను అనుమతించండి';
			case 'biometric.dialogSub': return 'ZiqeXని అన్‌లాక్ చేయడానికి మీ వేలిముద్ర లేదా డివైస్ ఫేస్ రికగ్నిషన్‌ని ఉపయోగించండి';
			case 'biometric.cancel': return 'రద్దు చేయి';
			case 'biometric.allow': return 'బయోమెట్రిక్స్‌ను అనుమతించు';
			case 'security_screen.appBar': return 'యాప్ భద్రత';
			case 'security_screen.global_protection': return 'గ్లోబల్ ప్రొటెక్షన్';
			case 'security_screen.app_lock': return 'యాప్ లాక్';
			case 'security_screen.app_lock_sub': return 'ZiqeX తెరవడానికి ప్రమాణీకరణ అవసరం';
			case 'security_screen.auth_methods': return 'ప్రమాణీకరణ పద్ధతులు';
			case 'security_screen.biometrics_title': return 'పరికర బయోమెట్రిక్స్';
			case 'security_screen.biometrics_sub': return 'మీ వేలిముద్ర లేదా ముఖంతో తక్షణమే అన్‌లాక్ చేయండి';
			case 'security_screen.pin_title': return 'ZiqeX పిన్';
			case 'security_screen.pin_active': return 'పిన్ యాక్టివ్‌గా ఉంది';
			case 'security_screen.pin_setup': return 'యాప్‌ను అన్‌లాక్ చేయడానికి ప్రత్యేకమైన 4-అంకెల కోడ్‌ను సెట్ చేయండి';
			case 'security_screen.warning_title': return 'చాలా తప్పుడు ప్రయత్నాలు';
			case 'security_screen.warning_sub': return 'తప్పుడు పిన్ 10 సార్లు నమోదు చేస్తే, ZiqeX స్వయంచాలకంగా రీసెట్ చేయబడుతుంది. ఈ పరికరంలో సేవ్ చేయబడిన మొత్తం డేటా శాశ్వతంగా తొలగించబడుతుంది';
			case 'security_screen.incomplete_title': return 'సెక్యూరిటీ సెటప్ అసంపూర్తిగా ఉంది';
			case 'security_screen.incomplete_content': return 'మీరు యాప్ లాక్‌ని ప్రారంభించారు కానీ పిన్ లేదా బయోమెట్రిక్స్‌ని సెట్ చేయలేదు. ఒక పద్ధతి కాన్ఫిగర్ చేయబడే వరకు యాప్ లాక్ నిలిపివేయబడుతుంది.';
			case 'security_screen.got_it': return 'సరే';
			case 'data.appBar': return 'డేటా నిర్వహణ మరియు\nనిలుపుదల';
			case 'data.summary': return 'స్టోరేజ్ సారాంశం';
			case 'data.totalUsed': return 'మొత్తం ఉపయోగించినది: ';
			case 'data.legendModel': return 'మోడల్ వెయిట్స్';
			case 'data.legendFree': return 'ఖాళీ స్థలం';
			case 'data.mgmt': return 'మోడల్ నిర్వహణ';
			case 'data.deleteModels': return 'డೌน์โหลด చేసిన అన్ని మోడళ్లను తొలగించు';
			case 'data.deleteModelsSub': return 'ఈ పరికరం నుండి అన్ని స్థానిక మోడల్ వెయిట్స్ మరియు పారామితులను పూర్తిగా తొలగించండి.';
			case 'data.selectDelete': return 'తొలగించడానికి మోడళ్లను ఎంచుకోండి';
			case 'data.autoDelete': return 'దీనికంటే పాత చాట్‌లను ఆటోమేటిక్‌గా తొలగించు:';
			case 'data.autoDeleteSub': return 'ఈ సెట్టింగ్ అన్ని అన్‌లింక్డ్ సంభాషణ మోడ్‌లకు వర్తిస్తుంది.';
			case 'data.modes': return 'మోడ్స్';
			case 'data.noData': return 'యాక్టివ్ చాట్ డేటా లేదు';
			case 'data.deleteAll': return 'మొత్తం డేటాను తొలగించు';
			case 'data.authReq': return 'యాప్ లాక్ మళ్లీ ప్రమాణీకరణ అవసరం';
			case 'data.viewChats': return 'చాట్‌లను చూడండి';
			case 'data.deleteAllPillar': return 'అన్నీ తొలగించు';
			case 'data.space': return 'స్థలం:';
			case 'data.activeInstances': return 'యాక్టివ్ ఇన్‌స్టాన్స్:';
			case 'pin_setup.title_setup': return '4-అంకెల పిన్ సెట్ చేయండి';
			case 'pin_setup.subtitle_setup': return 'యాప్‌ని యాక్సెస్ చేయడానికి సురక్షితమైన కోడ్‌ని సృష్టించండి';
			case 'pin_setup.title_confirm': return 'పిన్‌ని ధృవీకరించండి';
			case 'pin_setup.subtitle_confirm': return 'ధృవీకరించడానికి మీ 4-అంకెల కోడ్‌ని మళ్లీ నమోదు చేయండి';
			case 'pin_setup.title_verify': return 'ప్రస్తుత పిన్‌ని నమోదు చేయండి';
			case 'pin_setup.subtitle_verify': return 'కొనసాగించడానికి మీ ప్రస్తుత కోడ్‌ని నమోదు చేయండి';
			case 'pin_setup.error_mismatch': return 'పిన్‌లు సరిపోలలేదు. మళ్లీ ప్రయత్నించండి.';
			case 'pin_setup.error_incorrect': return 'తప్పు పిన్. దయచేసి మళ్లీ ప్రయత్నించండి.';
			case 'pin_setup.snack_success': return 'పిన్ విజయవంతంగా సెట్ చేయబడింది';
			case 'pin_mgmt.appBar': return 'యాప్-నిర్దిష్ట పిన్';
			case 'pin_mgmt.change_title': return 'పిన్ మార్చండి';
			case 'pin_mgmt.change_sub': return 'మీ 4-అంకెల ZiqeX భద్రతా కోడ్‌ను అప్‌డేట్ చేయండి';
			case 'pin_mgmt.remove_title': return 'పిన్‌ని తొలగించండి';
			case 'pin_mgmt.remove_sub': return 'ZiqeX కోసం పిన్ యాక్సెస్‌ని ఆఫ్ చేయండి';
			case 'pin_mgmt.snack_removed': return 'పిన్ విజయవంతంగా తొలగించబడింది';
			case 'lang_legacy.title1': return 'ఏ భాష\n';
			case 'lang_legacy.title2': return 'సొంతం అనిపిస్తుంది?';
			case 'lang_legacy.subtitle': return 'మీ మాతృభాషలో వాయిస్, టెక్స్ట్ మరియు ప్రత్యుత్తరాలు. ఎప్పుడైనా మారండి.';
			case 'lang_legacy.first_reply': return 'మొదటి సమాధానం ఇలా ఉంటుంది';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - మీ లిపిలో వ్రాయబడినది మరియు మాట్లాడబడేది';
			case 'lang_legacy.continueBtn': return 'కొనసాగించండి';
			default: return null;
		}
	}
}

extension on _StringsUr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'سلام';
			case 'languageSelection.title': return 'اپنی زبان منتخب کریں';
			case 'languageSelection.subtitle': return 'اپنے انٹرفیس کے لیے زبان منتخب کریں۔';
			case 'modelDownload.title1': return 'BrahmAI-کو\nآپ کے پاس ';
			case 'modelDownload.title2': return 'لا رہے ہیں۔';
			case 'modelDownload.subtitle': return 'ایک بار۔ اس کے بعد، ہم آپ کے ڈیٹا کو دوبارہ کبھی نہیں چھوئیں گے۔';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'تیار';
			case 'modelDownload.validating': return 'تصدیق ہو رہی ہے...';
			case 'modelDownload.langs': return '14 زبانیں';
			case 'modelDownload.toks': return '~18 tok/s';
			case 'modelDownload.ttft': return '~140 ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'خرابی: ${error}';
			case 'modelDownload.retry': return 'دوبارہ کوشش کریں';
			case 'modelDownload.open': return 'BrahmAI کھولیں';
			case 'modelDownload.download': return 'ماڈل ڈاؤن لوڈ کریں';
			case 'modelDownload.later': return 'بعد میں سیٹ اپ کریں';
			case 'modelDownload.continueSub': return 'ماڈل ڈاؤن لوڈ کیے بغیر جاری رکھیں۔ جب آپ تیار ہوں تو آپ ایک شامل کر سکتے ہیں';
			case 'security_screen.appBar': return 'ایپ سیکیورٹی';
			case 'security_screen.global_protection': return 'عالمی تحفظ';
			case 'security_screen.app_lock': return 'ایپ لاک';
			case 'security_screen.app_lock_sub': return 'ZiqeX کھولنے کے لیے تصدیق درکار ہے';
			case 'security_screen.auth_methods': return 'تصدیق کے طریقے';
			case 'security_screen.biometrics_title': return 'ڈیوائس بائیو میٹرکس';
			case 'security_screen.biometrics_sub': return 'اپنے فنگر پرنٹ یا چہرے سے فوری طور پر ان لاک کریں';
			case 'security_screen.pin_title': return 'ZiqeX پن';
			case 'security_screen.pin_active': return 'پن فعال ہے';
			case 'security_screen.pin_setup': return 'ایپ کو ان لاک کرنے کے لیے ایک منفرد 4 ہندسوں کا کوڈ سیٹ کریں';
			case 'security_screen.warning_title': return 'بہت زیادہ غلط کوششیں';
			case 'security_screen.warning_sub': return 'اگر غلط پن 10 بار درج کیا جاتا ہے تو ZiqeX خود بخود ری سیٹ ہو جائے گا۔ اس ڈیوائس پر محفوظ تمام ڈیٹا مستقل طور بر حذف کر دیا جائے گا';
			case 'security_screen.incomplete_title': return 'سیکیورٹی سیٹ اپ نامکمل';
			case 'security_screen.incomplete_content': return 'آپ نے ایپ لاک فعال کر دیا ہے لیکن پن یا بائیو میٹرکس سیٹ نہیں کیا ہے۔ ایپ لاک اس وقت تک غیر فعال رہے گا جب تک کہ کوئی طریقہ کنفیگر نہیں کیا جاتا۔';
			case 'security_screen.got_it': return 'ٹھیک ہے';
			case 'pin_setup.title_setup': return '4 ہندسوں کا پن سیٹ کریں';
			case 'pin_setup.subtitle_setup': return 'ایپ تک رسائی کے لیے ایک محفوظ کوڈ بنائیں';
			case 'pin_setup.title_confirm': return 'پن کی تصدیق کریں';
			case 'pin_setup.subtitle_confirm': return 'تصدیق کے لیے اپنا 4 ہندسوں کا کوڈ دوبارہ درج کریں';
			case 'pin_setup.title_verify': return 'موجودہ پن درج کریں';
			case 'pin_setup.subtitle_verify': return 'جاری رکھنے کے لیے اپنا موجودہ کوڈ درج کریں';
			case 'pin_setup.error_mismatch': return 'پن مطابقت نہیں رکھتے۔ دوبارہ کوشش کریں۔';
			case 'pin_setup.error_incorrect': return 'غلط پن۔ براہ کرم دوبارہ کوشش کریں۔';
			case 'pin_setup.snack_success': return 'پن کامیابی کے ساتھ سیٹ ہو گیا';
			case 'pin_mgmt.appBar': return 'ایپ کے لیے مخصوص پن';
			case 'pin_mgmt.change_title': return 'پن تبدیل کریں';
			case 'pin_mgmt.change_sub': return 'اپنا 4 ہندسوں والا ZiqeX سیکیورٹی کوڈ اپ ڈیٹ کریں';
			case 'pin_mgmt.remove_title': return 'پن ختم کریں';
			case 'pin_mgmt.remove_sub': return 'ZiqeX کے لیے پن تک رسائی بند کریں';
			case 'pin_mgmt.snack_removed': return 'پن کامیابی کے ساتھ ختم کر دیا گیا';
			case 'lang_legacy.title1': return 'کون سی زبان\n';
			case 'lang_legacy.title2': return 'اپنی سی لگتی ہے؟';
			case 'lang_legacy.subtitle': return 'آپ کی مادری زبان میں آواز، متن اور جوابات۔ کسی بھی وقت تبدیل کریں۔';
			case 'lang_legacy.first_reply': return 'پہلا جواب یہ ہوگا';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - آپ کے رسم الخط میں لکھا اور بولا گیا';
			case 'lang_legacy.continueBtn': return 'جاری رکھیں';
			default: return null;
		}
	}
}
