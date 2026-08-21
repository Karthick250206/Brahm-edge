/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 13
/// Strings: 2477 (190 per locale)
///
/// Built on 2026-08-21 at 11:17 UTC

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
	late final _StringsModelMgmtEn model_mgmt = _StringsModelMgmtEn._(_root);
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
	String get journal => 'Defence';
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
	String get pillars_title => 'Pillars';
	String get pillars_desc => 'Core intelligence domains';
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

// Path: model_mgmt
class _StringsModelMgmtEn {
	_StringsModelMgmtEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get appBar => 'Model Management';
	String get subtitle => 'Configure local edge AI language models';
	String get status_loaded => 'LOADED';
	String get status_unloaded => 'UNLOADED';
	String get status_loading => 'LOADING...';
	String size({required Object size}) => 'Size: ${size}';
	String get load => 'Load';
	String get unload => 'Unload';
	String get download => 'Download';
	String get delete => 'Delete';
	String get brahm_2b_desc => 'Ultra-fast compact edge model designed for low-latency text completion and chat on mobile devices.';
	String get brahm_5b_desc => 'Balanced reasoning model offering enhanced task accuracy and complex instructional performance.';
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
	@override String get ask_image => 'ছবিৰ বিষয়ে সোধক';
	@override String get ask_image_sub => 'ফৰ্ম · লেবেল · লিখনী';
	@override String get panchang => 'পঞ্জিকা';
	@override String get panchang_sub => 'আজিৰ তিথি আৰু মুহূৰ্ত';
	@override String get ephemeral => 'অস্থায়ী';
	@override String get ephemeral_sub => 'কোনো চিন নেৰাখাকৈ কথা পাতক';
	@override String get recent => 'শেহতীয়া';
	@override String get home => 'হোম';
	@override String get chat => 'চাট';
	@override String get library => 'লাইব্ৰেৰী';
	@override String get you => 'আপুনি';
	@override String get settings_pref => 'প্ৰফাইল ছেটিংছ';
	@override String get preferences => 'পছন্দসমূহ';
	@override String get language => 'ভাষা';
	@override String get security => 'সুৰক্ষা';
	@override String get security_sub => 'এপ লক · 2FA';
	@override String get privacy_tiers => 'গোপনীয়তাৰ স্তৰ';
	@override String get privacy_tiers_sub => '২টা সক্ৰিয় · ZiqeX-এ কেনেকৈ শুনে';
	@override String get storage_purge => 'ষ্টোৰেজ আৰু তথ্য মচি পেলোৱা';
	@override String get storage_purge_sub => 'ডিভাইচত ১৮৪ KB';
	@override String get ephemeral_mode => 'অস্থায়ী মোড';
	@override String get about => 'এপৰ বিষয়ে';
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
	@override String get just_thinking => 'মাত্ৰ ভাবি আছোঁ';
	@override late final _StringsProfileAs profile = _StringsProfileAs._(_root);
	@override late final _StringsWelcomeAs welcome = _StringsWelcomeAs._(_root);
	@override late final _StringsInfoAs info = _StringsInfoAs._(_root);
	@override late final _StringsLanguageSelectionAs languageSelection = _StringsLanguageSelectionAs._(_root);
	@override late final _StringsPillarsAs pillars = _StringsPillarsAs._(_root);
	@override late final _StringsModelDownloadAs modelDownload = _StringsModelDownloadAs._(_root);
	@override late final _StringsLibraryV2As library_v2 = _StringsLibraryV2As._(_root);
	@override late final _StringsBiometricAs biometric = _StringsBiometricAs._(_root);
	@override late final _StringsSecurityScreenAs security_screen = _StringsSecurityScreenAs._(_root);
	@override late final _StringsPinSetupAs pin_setup = _StringsPinSetupAs._(_root);
	@override late final _StringsPinMgmtAs pin_mgmt = _StringsPinMgmtAs._(_root);
	@override late final _StringsLangLegacyAs lang_legacy = _StringsLangLegacyAs._(_root);
	@override late final _StringsModelMgmtAs model_mgmt = _StringsModelMgmtAs._(_root);
}

// Path: profile
class _StringsProfileAs extends _StringsProfileEn {
	_StringsProfileAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get access => 'প্ৰৱেশাধিকাৰ';
	@override String get privacy => 'গোপনীয়তা';
	@override String get system => 'ছিষ্টেম';
	@override String get security_active => 'সুৰক্ষা সক্ৰিয় আছে';
	@override String get security_inactive => 'সুৰক্ষা নিষ্ক্ৰিয় আছে';
	@override String get dark_mode => 'ডাৰ্ক মোড';
	@override String get dark_mode_sub => 'লাইট আৰু ডাৰ্ক থিমৰ মাজত সলনি কৰক';
	@override String get data_mgmt => 'তথ্য ব্যৱস্থাপনা';
	@override String get data_mgmt_sub => 'আপোনাৰ চাটৰ ইতিহাস পৰিচালনা কৰক';
	@override String get app_lock => 'এপ লক';
	@override String get app_lock_sub => 'আঙুলিৰ ছাপ, মুখ বা PIN-ৰ জৰিয়তে ZiqeX সুৰক্ষিত কৰক';
	@override String get incognito_sub => 'ইতিহাসত সংৰক্ষণ নকৰাকৈ চাট কৰক। ওলাই যোৱাৰ পিছত ইয়াক পুনৰুদ্ধাৰ কৰিব নোৱাৰি';
	@override String get version => 'V0.1 • সাৰ্বভৌম • ডিভাইচত';
}

// Path: welcome
class _StringsWelcomeAs extends _StringsWelcomeEn {
	_StringsWelcomeAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX-ক লগ পাওক';
	@override String get at_edge => 'এজত বুদ্ধিমত্তা';
	@override String get private => 'ব্যক্তিগত এজ AI\nZenteiQ-ৰ দ্বাৰা';
	@override String get begin => 'আৰম্ভ কৰক';
}

// Path: info
class _StringsInfoAs extends _StringsInfoEn {
	_StringsInfoAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপোনাৰ বাবে নিৰ্মিত বুদ্ধিমত্তা';
	@override String get subtitle => 'গোপনীয়তা, পছন্দ আৰু সম্পূৰ্ণ নিয়ন্ত্ৰণৰ সৈতে এক উপযোগী AI অভিজ্ঞতা।';
	@override String get privacy_title => 'গোপনীয়তাক প্ৰথম স্থান';
	@override String get privacy_desc => 'ZiqeX-ক আপোনাৰ তথ্য আৰু বুদ্ধিমত্তা আপোনাৰ ডিভাইচতে সুৰক্ষিত ৰাখিবলৈ ডিজাইন কৰা হৈছে।';
	@override String get hand_title => 'আপোনাৰ হাতত বুদ্ধিমত্তা';
	@override String get hand_desc => 'দৈনন্দিন প্ৰয়োজনৰ বাবে বুদ্ধিমত্তা, পোনপটীয়াকৈ আপোনাৰ ডিভাইচত উপলব্ধ।';
	@override String get control_title => 'আপোনাৰ তথ্য। আপোনাৰ নিয়ন্ত্ৰণ।';
	@override String get control_desc => 'কি ৰাখিব লাগে বাছনি কৰক, সংৰক্ষিত তথ্য পৰিচালনা কৰক আৰু যাৰ আৰু প্ৰয়োজন নাই সেয়া মচি পেলাওক।';
	@override String get place_title => 'সকলোৰে বাবে নিৰ্মিত';
	@override String get place_desc => 'বিভিন্ন ভাষা, ডিভাইচ আৰু মানুহে প্ৰযুক্তি ব্যৱহাৰ কৰা বিভিন্ন ধৰণৰ প্ৰয়োজনীয়তাৰ বাবে নিৰ্মিত।';
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
	@override String get subtitle => 'আপোনাৰ ইণ্টাৰফেচৰ বাবে ভাষা বাছনি কৰক।';
	@override String get back => 'পিছলৈ';
	@override String get continueBtn => 'আগবাঢ়ক';
}

// Path: pillars
class _StringsPillarsAs extends _StringsPillarsEn {
	_StringsPillarsAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'পিলাৰ বাছনি';
	@override String get title => 'আপোনাৰ পিলাৰসমূহ বাছনি কৰক';
	@override String get subtitle => 'আপুনি গুৰুত্ব দিব বিচৰা মুখ্য ক্ষমতাসমূহ বাছনি কৰক।';
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
	@override String get title1 => 'BrahmAI-ক\nআপোনাৰ ডিভাইচলৈ ';
	@override String get title2 => 'আনি আছোঁ।';
	@override String get subtitle => 'এয়া মাত্ৰ এবাৰহে কৰিব লাগিব। ইয়াৰ পিছত আমি আপোনাৰ তথ্য কেতিয়াও স্পৰ্শ নকৰোঁ।';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'প্ৰস্তুত';
	@override String get validating => 'যাচাই কৰা হৈছে...';
	@override String get langs => '১৪টা ভাষা';
	@override String get toks => '~১৮ tok/s';
	@override String get ttft => '~১৪০ ms TTFT';
	@override String error({required Object error}) => 'ত্ৰুটি: ${error}';
	@override String get retry => 'পুনৰ চেষ্টা কৰক';
	@override String get open => 'খোলক';
	@override String get download => 'ডাউনলোড কৰক';
	@override String get later => 'পিছত ছেট আপ কৰক';
	@override String get continueSub => 'মডেল ডাউনলোড নকৰাকৈ আগবাঢ়ক। আপুনি সাজু হ\'লে পিছত এটা যোগ কৰিব পাৰিব';
}

// Path: library_v2
class _StringsLibraryV2As extends _StringsLibraryV2En {
	_StringsLibraryV2As._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'আপোনাৰ AI সম্পদসমূহ পৰিচালনা কৰক';
	@override String get language_title => 'ভাষা';
	@override String get language_desc => 'ভাষাসমূহ বাছনি আৰু পৰিচালনা কৰক';
	@override String get model_title => 'মডেল';
	@override String get model_desc => 'AI মডেলসমূহ অন্বেষণ আৰু পৰিচালনা কৰক';
	@override String get saved_title => 'সংৰক্ষিত';
	@override String get saved_desc => 'আপোনাৰ প্ৰম্পট লাইব্ৰেৰী';
	@override String get skills_title => 'দক্ষতা';
	@override String get skills_desc => 'AI ক্ষমতাসমূহ';
	@override String get pillars_title => 'পিলাৰ';
	@override String get pillars_desc => 'মুখ্য ক্ষমতা';
}

// Path: biometric
class _StringsBiometricAs extends _StringsBiometricEn {
	_StringsBiometricAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get vault => 'ভল্ট সুৰক্ষা';
	@override String get setupTitle => 'সুৰক্ষিত লক ছেট আপ কৰক';
	@override String get setupSub => 'আপোনাৰ পছন্দৰ প্ৰমাণীকৰণ পদ্ধতিৰে আপোনাৰ ভল্ট সুৰক্ষিত কৰক।';
	@override String get deviceTitle => 'ডিভাইচ বায়োমেট্ৰিক্স';
	@override String get deviceSub => 'Face ID বা আঙুলিৰ ছাপ';
	@override String get pinTitle => 'PIN ক\'ড';
	@override String get pinSub => 'এটা অনন্য ৪-অংকৰ ক\'ড ছেট কৰক';
	@override String get dialogTitle => 'বায়োমেট্ৰিক প্ৰৱেশৰ অনুমতি দিয়ক';
	@override String get dialogSub => 'ZiqeX আনলক কৰিবলৈ আপোনাৰ আঙুলিৰ ছাপ বা মুখ চিনাক্তকৰণ ব্যৱহাৰ কৰক';
	@override String get cancel => 'বাতিল কৰক';
	@override String get allow => 'অনুমতি দিয়ক';
}

// Path: security_screen
class _StringsSecurityScreenAs extends _StringsSecurityScreenEn {
	_StringsSecurityScreenAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'এপ সুৰক্ষা';
	@override String get global_protection => 'সামগ্ৰিক সুৰক্ষা';
	@override String get app_lock => 'এপ লক';
	@override String get app_lock_sub => 'ZiqeX খুলিবলৈ প্ৰমাণীকৰণৰ প্ৰয়োজন';
	@override String get auth_methods => 'প্ৰমাণীকৰণ পদ্ধতিসমূহ';
	@override String get biometrics_title => 'ডিভাইচ বায়োমেট্ৰিক্স';
	@override String get biometrics_sub => 'আপোনাৰ আঙুলিৰ ছাপ বা মুখৰ জৰিয়তে তৎক্ষণাত আনলক কৰক';
	@override String get pin_title => 'ZiqeX PIN';
	@override String get pin_active => 'PIN সক্ৰিয় আছে';
	@override String get pin_setup => 'এপটো আনলক কৰিবলৈ এটা অনন্য ৪-অংকৰ PIN ছেট কৰক';
	@override String get warning_title => 'অত্যধিক ভুল প্ৰচেষ্টা';
	@override String get warning_sub => 'যদি ভুল PIN ১০ বাৰ দিয়া হয়, তেন্তে ZiqeX স্বয়ংক্ৰিয়ভাৱে ৰিছেট হ\'ব। এই ডিভাইচত সংৰক্ষিত সকলো তথ্য স্থায়ীভাৱে মচি পেলোৱা হ\'ব';
	@override String get incomplete_title => 'সুৰক্ষা ছেটআপ অসম্পূৰ্ণ';
	@override String get incomplete_content => 'আপুনি এপ লক সক্ৰিয় কৰিছে, কিন্তু PIN বা বায়োমেট্ৰিক্স ছেট কৰা নাই। কোনো এটা পদ্ধতি ছেট নকৰালৈকে এপ লক নিষ্ক্ৰিয় হৈ থাকিব।';
	@override String get got_it => 'বুজিলোঁ';
}

// Path: pin_setup
class _StringsPinSetupAs extends _StringsPinSetupEn {
	_StringsPinSetupAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '৪-অংকৰ PIN ছেট কৰক';
	@override String get subtitle_setup => 'এপটো ব্যৱহাৰ কৰিবলৈ এটা সুৰক্ষিত ক\'ড তৈয়াৰ কৰক';
	@override String get title_confirm => 'PIN নিশ্চিত কৰক';
	@override String get subtitle_confirm => 'যাচাই কৰিবলৈ আপোনাৰ ৪-অংকৰ PIN আকৌ লিখক';
	@override String get title_verify => 'বৰ্তমানৰ PIN লিখক';
	@override String get subtitle_verify => 'আগবাঢ়িবলৈ আপোনাৰ বৰ্তমানৰ PIN লিখক';
	@override String get error_mismatch => 'PIN দুটা মিল খোৱা নাই। পুনৰ চেষ্টা কৰক।';
	@override String get error_incorrect => 'ভুল PIN। পুনৰ চেষ্টা কৰক।';
	@override String get snack_success => 'PIN সফলতাৰে ছেট কৰা হ\'ল';
}

// Path: pin_mgmt
class _StringsPinMgmtAs extends _StringsPinMgmtEn {
	_StringsPinMgmtAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'এপ PIN';
	@override String get change_title => 'PIN সলনি কৰক';
	@override String get change_sub => 'আপোনাৰ ৪-অংকৰ ZiqeX সুৰক্ষা ক\'ড আপডেট কৰক';
	@override String get remove_title => 'PIN আঁতৰাওক';
	@override String get remove_sub => 'ZiqeX-ৰ বাবে PIN ব্যৱহাৰ বন্ধ কৰক';
	@override String get snack_removed => 'PIN সফলতাৰে আঁতৰোৱা হ\'ল';
}

// Path: lang_legacy
class _StringsLangLegacyAs extends _StringsLangLegacyEn {
	_StringsLangLegacyAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'কোনটো ভাষা\n';
	@override String get title2 => 'আপোনাৰ নিজৰ যেন লাগে?';
	@override String get subtitle => 'আপোনাৰ মাতৃভাষাত কণ্ঠ, লিখনী আৰু উত্তৰ লাভ কৰক। যিকোনো সময়তে ভাষা সলনি কৰিব পাৰে।';
	@override String get first_reply => 'প্ৰথম উত্তৰটো এনেকুৱা হ\'ব';
	@override String script_info({required Object lang}) => '${lang} - আপোনাৰ লিপিত লিখা আৰু কোৱা হ\'ব';
	@override String get continueBtn => 'আগবাঢ়ক';
}

// Path: model_mgmt
class _StringsModelMgmtAs extends _StringsModelMgmtEn {
	_StringsModelMgmtAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'মডেল ব্যৱস্থাপনা';
	@override String get subtitle => 'স্থানীয় এজ AI ভাষা মডেলসমূহ কনফিগাৰ কৰক';
	@override String get status_loaded => 'লোড কৰা হৈছে';
	@override String get status_unloaded => 'লোড কৰা হোৱা নাই';
	@override String get status_loading => 'লোড হৈ আছে...';
	@override String size({required Object size}) => 'আকাৰ: ${size}';
	@override String get load => 'লোড কৰক';
	@override String get unload => 'আনলোড কৰক';
	@override String get download => 'ডাউনলোড';
	@override String get delete => 'মচি পেলাওক';
	@override String get brahm_2b_desc => 'ম\'বাইল ডিভাইচত কম লেটেন্সি টেক্সট কমপ্লিশ্যন আৰু চ্যাটৰ বাবে ডিজাইন কৰা অতি-দ্ৰুত কমপ্যাক্ট এজ মডেল।';
	@override String get brahm_5b_desc => 'উন্নত টাস্ক নিখুঁততা আৰু জটিল নিৰ্দেশনামূলক প্ৰদৰ্শন আগবڑھোৱা সন্তুলিত ৰিজনিং মডেল।';
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
	@override String get mind_today => 'আজ আপনার মনে কী চলছে?';
	@override String get on_device_only => 'শুধুমাত্র এই ডিভাইসে';
	@override String get offline => 'অফলাইন';
	@override String get start_something => 'কিছু শুরু করুন';
	@override String get ask_anything => 'যেকোনো কিছু জিজ্ঞাসা করুন';
	@override String get ask_anything_sub => 'স্বাস্থ্য · আইনি · ব্যক্তিগত · কাজ';
	@override String get voice_mode => 'ভয়েস মোড';
	@override String get voice_mode_sub => 'আপনার ভাষায় কথা বলুন';
	@override String get ask_image => 'ছবি সম্পর্কে জিজ্ঞাসা করুন';
	@override String get ask_image_sub => 'ফর্ম · লেবেল · লেখা';
	@override String get panchang => 'পঞ্জিকা';
	@override String get panchang_sub => 'আজকের তিথি ও মুহূর্ত';
	@override String get ephemeral => 'সাময়িক';
	@override String get ephemeral_sub => 'কোনো চিহ্ন না রেখে চ্যাট করুন';
	@override String get recent => 'সাম্প্রতিক';
	@override String get home => 'হোম';
	@override String get chat => 'চ্যাট';
	@override String get library => 'লাইব্রেরি';
	@override String get you => 'আপনি';
	@override String get settings_pref => 'প্রোফাইল সেটিংস';
	@override String get preferences => 'পছন্দসমূহ';
	@override String get language => 'ভাষা';
	@override String get security => 'নিরাপত্তা';
	@override String get security_sub => 'অ্যাপ লক · 2FA';
	@override String get privacy_tiers => 'গোপনীয়তার স্তর';
	@override String get privacy_tiers_sub => '২টি সক্রিয় · ZiqeX কীভাবে শোনে';
	@override String get storage_purge => 'স্টোরেজ ও ডেটা মুছে ফেলা';
	@override String get storage_purge_sub => 'ডিভাইসে ১৮৪ KB';
	@override String get ephemeral_mode => 'সাময়িক মোড';
	@override String get about => 'অ্যাপ সম্পর্কে';
	@override String get reset_prototype => 'প্রোটোটাইপ রিসেট করুন';
	@override String get built_in_india => 'ভারতে নির্মিত। বিশ্বের জন্য।';
	@override String get library_sub => 'প্রতিটি মডেল · প্রতিটি মেমোরি · এই ডিভাইসে';
	@override String get on_this_device => 'এই ডিভাইসে';
	@override String get active => 'সক্রিয়';
	@override String get add => '+ যোগ করুন';
	@override String get storage_used => 'ব্যবহৃত স্টোরেজ';
	@override String get health_question => 'স্বাস্থ্য সম্পর্কিত প্রশ্ন';
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
	@override late final _StringsModelMgmtBn model_mgmt = _StringsModelMgmtBn._(_root);
}

// Path: profile
class _StringsProfileBn extends _StringsProfileEn {
	_StringsProfileBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get access => 'অ্যাক্সেস';
	@override String get privacy => 'গোপনীয়তা';
	@override String get system => 'সিস্টেম';
	@override String get security_active => 'নিরাপত্তা সক্রিয় আছে';
	@override String get security_inactive => 'নিরাপত্তা নিষ্ক্রিয় আছে';
	@override String get dark_mode => 'ডার্ক মোড';
	@override String get dark_mode_sub => 'লাইট ও ডার্ক থিমের মধ্যে পরিবর্তন করুন';
	@override String get data_mgmt => 'ডেটা ব্যবস্থাপনা';
	@override String get data_mgmt_sub => 'আপনার চ্যাটের ইতিহাস পরিচালনা করুন';
	@override String get app_lock => 'অ্যাপ লক';
	@override String get app_lock_sub => 'আঙুলের ছাপ, মুখ বা PIN দিয়ে ZiqeX সুরক্ষিত করুন';
	@override String get incognito_sub => 'ইতিহাসে সংরক্ষণ না করেই চ্যাট করুন। বেরিয়ে যাওয়ার পরে এটি পুনরুদ্ধার করা যাবে না';
	@override String get version => 'V0.1 • সার্বভৌম • ডিভাইসে';
}

// Path: welcome
class _StringsWelcomeBn extends _StringsWelcomeEn {
	_StringsWelcomeBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX-এর সঙ্গে পরিচিত হন';
	@override String get at_edge => 'এজে বুদ্ধিমত্তা';
	@override String get private => 'ব্যক্তিগত এজ AI\nZenteiQ দ্বারা';
	@override String get begin => 'শুরু করুন';
}

// Path: info
class _StringsInfoBn extends _StringsInfoEn {
	_StringsInfoBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার জন্য তৈরি বুদ্ধিমত্তা';
	@override String get subtitle => 'গোপনীয়তা, পছন্দ এবং সম্পূর্ণ নিয়ন্ত্রণসহ একটি কার্যকর AI অভিজ্ঞতা।';
	@override String get privacy_title => 'গোপনীয়তা সবার আগে';
	@override String get privacy_desc => 'ZiqeX আপনার তথ্য এবং বুদ্ধিমত্তাকে আপনার ডিভাইসেই সুরক্ষিত রাখার জন্য ডিজাইন করা হয়েছে।';
	@override String get hand_title => 'আপনার হাতের মুঠোয় বুদ্ধিমত্তা';
	@override String get hand_desc => 'দৈনন্দিন প্রয়োজনের বুদ্ধিমত্তা, সরাসরি আপনার ডিভাইসে উপলব্ধ।';
	@override String get control_title => 'আপনার ডেটা। আপনার নিয়ন্ত্রণ।';
	@override String get control_desc => 'কী রাখবেন তা বেছে নিন, সংরক্ষিত ডেটা পরিচালনা করুন এবং যার আর প্রয়োজন নেই তা মুছে ফেলুন।';
	@override String get place_title => 'সবার জন্য তৈরি';
	@override String get place_desc => 'বিভিন্ন ভাষা, ডিভাইস এবং মানুষ যেভাবে প্রযুক্তি ব্যবহার করেন, সেই বিভিন্ন প্রয়োজনের কথা মাথায় রেখে তৈরি।';
	@override String get footer => 'আপনার বুদ্ধিমত্তা। আপনার ডিভাইস। আপনার নিয়ন্ত্রণ।';
	@override String get setup => 'আপনার ZiqeX সেট আপ করুন';
}

// Path: languageSelection
class _StringsLanguageSelectionBn extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ভাষা নির্বাচন';
	@override String get title => 'আপনার ভাষা বেছে নিন';
	@override String get subtitle => 'আপনার ইন্টারফেসের জন্য ভাষা নির্বাচন করুন।';
	@override String get back => 'পিছনে';
	@override String get continueBtn => 'চালিয়ে যান';
}

// Path: pillars
class _StringsPillarsBn extends _StringsPillarsEn {
	_StringsPillarsBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'পিলার নির্বাচন';
	@override String get title => 'আপনার পিলারগুলি বেছে নিন';
	@override String get subtitle => 'আপনি যে মূল সক্ষমতাগুলিতে মনোযোগ দিতে চান, সেগুলি বেছে নিন।';
	@override String get general => 'সাধারণ';
	@override String get operational => 'পরিচালনামূলক';
	@override String get personal => 'ব্যক্তিগত পরামর্শ';
	@override String get workplace => 'কর্মক্ষেত্র';
	@override String get culture => 'সংস্কৃতি ও পরিবার';
	@override String get journal => 'দৈনিক ডায়েরি';
	@override String get back => 'পিছনে';
	@override String get continueBtn => 'চালিয়ে যান';
}

// Path: modelDownload
class _StringsModelDownloadBn extends _StringsModelDownloadEn {
	_StringsModelDownloadBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI-কে\nআপনার ডিভাইসে ';
	@override String get title2 => 'নিয়ে আসছি।';
	@override String get subtitle => 'এটি একবারের সেটআপ। এরপর আমরা আর কখনও আপনার ডেটা অ্যাক্সেস করব না।';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'প্রস্তুত';
	@override String get validating => 'যাচাই করা হচ্ছে...';
	@override String get langs => '১৪টি ভাষা';
	@override String get toks => '~১৮ tok/s';
	@override String get ttft => '~১৪০ ms TTFT';
	@override String error({required Object error}) => 'ত্রুটি: ${error}';
	@override String get retry => 'আবার চেষ্টা করুন';
	@override String get open => 'খুলুন';
	@override String get download => 'ডাউনলোড করুন';
	@override String get later => 'পরে সেট আপ করুন';
	@override String get continueSub => 'মডেল ডাউনলোড না করেই চালিয়ে যান। প্রস্তুত হলে পরে একটি মডেল যোগ করতে পারেন';
}

// Path: library_v2
class _StringsLibraryV2Bn extends _StringsLibraryV2En {
	_StringsLibraryV2Bn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'আপনার AI সংস্থানগুলি পরিচালনা করুন';
	@override String get language_title => 'ভাষা';
	@override String get language_desc => 'ভাষা বেছে নিন ও পরিচালনা করুন';
	@override String get model_title => 'মডেল';
	@override String get model_desc => 'AI মডেলগুলি খুঁজে দেখুন ও পরিচালনা করুন';
	@override String get saved_title => 'সংরক্ষিত';
	@override String get saved_desc => 'আপনার প্রম্পট লাইব্রেরি';
	@override String get skills_title => 'দক্ষতা';
	@override String get skills_desc => 'AI সক্ষমতা';
	@override String get pillars_title => 'পিলার';
	@override String get pillars_desc => 'মূল বুদ্ধিমত্তা ক্ষেত্র';
}

// Path: biometric
class _StringsBiometricBn extends _StringsBiometricEn {
	_StringsBiometricBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get vault => 'ভল্ট নিরাপত্তা';
	@override String get setupTitle => 'নিরাপদ লক সেট আপ করুন';
	@override String get setupSub => 'আপনার পছন্দের প্রমাণীকরণ পদ্ধতি দিয়ে ভল্টটি সুরক্ষিত করুন।';
	@override String get deviceTitle => 'ডিভাইস বায়োমেট্রিক্স';
	@override String get deviceSub => 'Face ID বা আঙুলের ছাপ';
	@override String get pinTitle => 'PIN কোড';
	@override String get pinSub => 'একটি অনন্য ৪-সংখ্যার কোড সেট করুন';
	@override String get dialogTitle => 'বায়োমেট্রিক অ্যাক্সেসের অনুমতি দিন';
	@override String get dialogSub => 'ZiqeX আনলক করতে আপনার আঙুলের ছাপ বা মুখ শনাক্তকরণ ব্যবহার করুন';
	@override String get cancel => 'বাতিল করুন';
	@override String get allow => 'অনুমতি দিন';
}

// Path: security_screen
class _StringsSecurityScreenBn extends _StringsSecurityScreenEn {
	_StringsSecurityScreenBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'অ্যাপ নিরাপত্তা';
	@override String get global_protection => 'সামগ্রিক নিরাপত্তা';
	@override String get app_lock => 'অ্যাপ লক';
	@override String get app_lock_sub => 'ZiqeX খুলতে প্রমাণীকরণ প্রয়োজন';
	@override String get auth_methods => 'প্রমাণীকরণ পদ্ধতি';
	@override String get biometrics_title => 'ডিভাইস বায়োমেট্রিক্স';
	@override String get biometrics_sub => 'আপনার আঙুলের ছাপ বা মুখ দিয়ে দ্রুত আনলক করুন';
	@override String get pin_title => 'ZiqeX PIN';
	@override String get pin_active => 'PIN সক্রিয় আছে';
	@override String get pin_setup => 'অ্যাপ আনলক করতে একটি অনন্য ৪-সংখ্যার PIN সেট করুন';
	@override String get warning_title => 'অতিরিক্ত ভুল প্রচেষ্টা';
	@override String get warning_sub => 'ভুল PIN ১০ বার দেওয়া হলে ZiqeX স্বয়ংক্রিয়ভাবে রিসেট হবে। এই ডিভাইসে সংরক্ষিত সমস্ত ডেটা স্থায়ীভাবে মুছে ফেলা হবে';
	@override String get incomplete_title => 'নিরাপত্তা সেটআপ অসম্পূর্ণ';
	@override String get incomplete_content => 'আপনি অ্যাপ লক চালু করেছেন, কিন্তু PIN বা বায়োমেট্রিক্স সেট করেননি। কোনো একটি পদ্ধতি সেট না করা পর্যন্ত অ্যাপ লক নিষ্ক্রিয় থাকবে।';
	@override String get got_it => 'বুঝেছি';
}

// Path: data
class _StringsDataBn extends _StringsDataEn {
	_StringsDataBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ডেটা ব্যবস্থাপনা';
	@override String get summary => 'স্টোরেজের সারাংশ';
	@override String get totalUsed => 'মোট ব্যবহৃত: ';
	@override String get legendModel => 'মডেল ওয়েট';
	@override String get legendFree => 'খালি জায়গা';
	@override String get mgmt => 'মডেল ব্যবস্থাপনা';
	@override String get deleteModels => 'ডাউনলোড করা সব মডেল মুছে ফেলুন';
	@override String get deleteModelsSub => 'এই ডিভাইস থেকে সমস্ত স্থানীয় মডেল ওয়েট এবং ফাইন-টিউন করা প্যারামিটার সম্পূর্ণভাবে সরিয়ে দিন।';
	@override String get selectDelete => 'মুছে ফেলার জন্য মডেল নির্বাচন করুন';
	@override String get autoDelete => 'এর চেয়ে পুরোনো চ্যাট স্বয়ংক্রিয়ভাবে মুছুন:';
	@override String get autoDeleteSub => 'এই সেটিংটি সমস্ত আনলিঙ্কড কথোপকথন মোডে প্রযোজ্য।';
	@override String get modes => 'মোডসমূহ';
	@override String get noData => 'কোনো সক্রিয় চ্যাট ডেটা নেই';
	@override String get deleteAll => 'সমস্ত ডেটা মুছে ফেলুন';
	@override String get authReq => 'পুনরায় প্রমাণীকরণ প্রয়োজন';
	@override String get viewChats => 'চ্যাট দেখুন';
	@override String get deleteAllPillar => 'সব মুছে ফেলুন';
	@override String get space => 'জায়গা:';
	@override String get activeInstances => 'সক্রিয় ইনস্ট্যান্স:';
}

// Path: pin_setup
class _StringsPinSetupBn extends _StringsPinSetupEn {
	_StringsPinSetupBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '৪-সংখ্যার PIN সেট করুন';
	@override String get subtitle_setup => 'অ্যাপ অ্যাক্সেস করার জন্য একটি নিরাপদ কোড তৈরি করুন';
	@override String get title_confirm => 'PIN নিশ্চিত করুন';
	@override String get subtitle_confirm => 'যাচাই করতে আপনার ৪-সংখ্যার PIN আবার লিখুন';
	@override String get title_verify => 'বর্তমান PIN লিখুন';
	@override String get subtitle_verify => 'চালিয়ে যেতে আপনার বর্তমান PIN লিখুন';
	@override String get error_mismatch => 'PIN দুটি মেলেনি। আবার চেষ্টা করুন।';
	@override String get error_incorrect => 'ভুল PIN। আবার চেষ্টা করুন।';
	@override String get snack_success => 'PIN সফলভাবে সেট করা হয়েছে';
}

// Path: pin_mgmt
class _StringsPinMgmtBn extends _StringsPinMgmtEn {
	_StringsPinMgmtBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'অ্যাপ PIN';
	@override String get change_title => 'PIN পরিবর্তন করুন';
	@override String get change_sub => 'আপনার ৪-সংখ্যার ZiqeX নিরাপত্তা কোড আপডেট করুন';
	@override String get remove_title => 'PIN সরিয়ে দিন';
	@override String get remove_sub => 'ZiqeX-এর জন্য PIN অ্যাক্সেস বন্ধ করুন';
	@override String get snack_removed => 'PIN সফলভাবে সরিয়ে দেওয়া হয়েছে';
}

// Path: lang_legacy
class _StringsLangLegacyBn extends _StringsLangLegacyEn {
	_StringsLangLegacyBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'কোন ভাষাটি\n';
	@override String get title2 => 'আপনার নিজের মনে হয়?';
	@override String get subtitle => 'আপনার মাতৃভাষায় ভয়েস, টেক্সট এবং উত্তর পান। যেকোনো সময় পরিবর্তন করতে পারেন।';
	@override String get first_reply => 'প্রথম উত্তরটি হবে';
	@override String script_info({required Object lang}) => '${lang} - আপনার লিপিতে লেখা ও বলা হবে';
	@override String get continueBtn => 'চালিয়ে যান';
}

// Path: model_mgmt
class _StringsModelMgmtBn extends _StringsModelMgmtEn {
	_StringsModelMgmtBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'মডেল ম্যানেজমেন্ট';
	@override String get subtitle => 'স্থানীয় এজ AI ভাষা মডেল কনফিগার করুন';
	@override String get status_loaded => 'লোড হয়েছে';
	@override String get status_unloaded => 'লোড হয়নি';
	@override String get status_loading => 'লোড হচ্ছে...';
	@override String size({required Object size}) => 'আকার: ${size}';
	@override String get load => 'লোড করুন';
	@override String get unload => 'আনলোড করুন';
	@override String get download => 'ডাউনলোড';
	@override String get delete => 'মুছে ফেলুন';
	@override String get brahm_2b_desc => 'মোবাইল ডিভাইসে লো-লেটেন্সি টেক্সট কমপ্লিশন এবং চ্যাটের জন্য ডিজাইন করা অতি-দ্রুত কমপ্যাক্ট এজ মডেল।';
	@override String get brahm_5b_desc => 'উন্নত টাস্ক নির্ভুলতা এবং জটিল নির্দেশনামূলক কর্মক্ষমতা প্রদানকারী ভারসাম্যপূর্ণ রিজনিং মডেল।';
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
	@override String get mind_today => 'આજે તમારા મનમાં શું ચાલી રહ્યું છે?';
	@override String get on_device_only => 'માત્ર આ ઉપકરણ પર';
	@override String get offline => 'ઑફલાઇન';
	@override String get start_something => 'કંઈક શરૂ કરો';
	@override String get ask_anything => 'કંઈપણ પૂછો';
	@override String get ask_anything_sub => 'સ્વાસ્થ્ય · કાનૂની · વ્યક્તિગત · કામ';
	@override String get voice_mode => 'વૉઇસ મોડ';
	@override String get voice_mode_sub => 'તમારી ભાષામાં બોલો';
	@override String get ask_image => 'છબી વિશે પૂછો';
	@override String get ask_image_sub => 'ફોર્મ · લેબલ · લખાણ';
	@override String get panchang => 'પંચાંગ';
	@override String get panchang_sub => 'આજની તિથિ અને મુહૂર્ત';
	@override String get ephemeral => 'કામચલાઉ';
	@override String get ephemeral_sub => 'કોઈ નિશાન રાખ્યા વિના ચેટ કરો';
	@override String get recent => 'તાજેતરના';
	@override String get home => 'હોમ';
	@override String get chat => 'ચેટ';
	@override String get library => 'લાઇબ્રેરી';
	@override String get you => 'તમે';
	@override String get settings_pref => 'પ્રોફાઇલ સેટિંગ્સ';
	@override String get preferences => 'પસંદગીઓ';
	@override String get language => 'ભાષા';
	@override String get security => 'સુરક્ષા';
	@override String get security_sub => 'એપ લૉક · 2FA';
	@override String get privacy_tiers => 'ગોપનીયતાના સ્તરો';
	@override String get privacy_tiers_sub => '૨ સક્રિય · ZiqeX કેવી રીતે સાંભળે છે';
	@override String get storage_purge => 'સ્ટોરેજ અને ડેટા કાઢી નાખવું';
	@override String get storage_purge_sub => 'ઉપકરણ પર ૧૮૪ KB';
	@override String get ephemeral_mode => 'કામચલાઉ મોડ';
	@override String get about => 'એપ વિશે';
	@override String get reset_prototype => 'પ્રોટોટાઇપ રીસેટ કરો';
	@override String get built_in_india => 'ભારતમાં નિર્મિત. વિશ્વ માટે.';
	@override String get library_sub => 'દરેક મોડેલ · દરેક મેમરી · આ ઉપકરણ પર';
	@override String get on_this_device => 'આ ઉપકરણ પર';
	@override String get active => 'સક્રિય';
	@override String get add => '+ ઉમેરો';
	@override String get storage_used => 'વપરાયેલ સ્ટોરેજ';
	@override String get health_question => 'સ્વાસ્થ્ય સંબંધિત પ્રશ્ન';
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
	@override late final _StringsModelMgmtGu model_mgmt = _StringsModelMgmtGu._(_root);
}

// Path: profile
class _StringsProfileGu extends _StringsProfileEn {
	_StringsProfileGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get access => 'ઍક્સેસ';
	@override String get privacy => 'ગોપનીયતા';
	@override String get system => 'સિસ્ટમ';
	@override String get security_active => 'સુરક્ષા સક્રિય છે';
	@override String get security_inactive => 'સુરક્ષા નિષ્ક્રિય છે';
	@override String get dark_mode => 'ડાર્ક મોડ';
	@override String get dark_mode_sub => 'લાઇટ અને ડાર્ક થીમ વચ્ચે બદલો';
	@override String get data_mgmt => 'ડેટા વ્યવસ્થાપન';
	@override String get data_mgmt_sub => 'તમારા ચેટ ઇતિહાસનું સંચાલન કરો';
	@override String get app_lock => 'એપ લૉક';
	@override String get app_lock_sub => 'તમારી ફિંગરપ્રિન્ટ, ચહેરો અથવા PIN વડે ZiqeX ને સુરક્ષિત કરો';
	@override String get incognito_sub => 'ઇતિહાસમાં સાચવ્યા વિના ચેટ કરો. બહાર નીકળ્યા પછી તેને પુનઃપ્રાપ્ત કરી શકાશે નહીં';
	@override String get version => 'V0.1 • સાર્વભૌમ • ઉપકરણ પર';
}

// Path: welcome
class _StringsWelcomeGu extends _StringsWelcomeEn {
	_StringsWelcomeGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX ને મળો';
	@override String get at_edge => 'એજ પરની બુદ્ધિમત્તા';
	@override String get private => 'ખાનગી એજ AI\nZenteiQ દ્વારા';
	@override String get begin => 'શરૂ કરો';
}

// Path: info
class _StringsInfoGu extends _StringsInfoEn {
	_StringsInfoGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારા માટે રચાયેલી બુદ્ધિમત્તા';
	@override String get subtitle => 'ગોપનીયતા, પસંદગી અને સંપૂર્ણ નિયંત્રણ સાથેનો ઉપયોગી AI અનુભવ.';
	@override String get privacy_title => 'ગોપનીયતા પ્રથમ';
	@override String get privacy_desc => 'ZiqeX તમારી બુદ્ધિમત્તા અને માહિતીને તમારા ઉપકરણ પર જ સુરક્ષિત રાખવા માટે રચાયેલ છે.';
	@override String get hand_title => 'તમારા હાથમાં બુદ્ધિમત્તા';
	@override String get hand_desc => 'રોજિંદી જરૂરિયાતો માટેની બુદ્ધિમત્તા, સીધી તમારા ઉપકરણ પર ઉપલબ્ધ.';
	@override String get control_title => 'તમારો ડેટા. તમારું નિયંત્રણ.';
	@override String get control_desc => 'શું રાખવું તે પસંદ કરો, સાચવેલા ડેટાનું સંચાલન કરો અને જેની હવે જરૂર નથી તેને કાઢી નાખો.';
	@override String get place_title => 'દરેક માટે રચાયેલ';
	@override String get place_desc => 'વિવિધ ભાષાઓ, ઉપકરણો અને લોકો ટેક્નોલોજીનો ઉપયોગ કરે છે તે વિવિધ રીતોને ધ્યાનમાં રાખીને બનાવવામાં આવ્યું છે.';
	@override String get footer => 'તમારી બુદ્ધિમત્તા. તમારું ઉપકરણ. તમારું નિયંત્રણ.';
	@override String get setup => 'તમારું ZiqeX સેટ અપ કરો';
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
	@override String get appBar => 'પિલર પસંદગી';
	@override String get title => 'તમારા પિલર પસંદ કરો';
	@override String get subtitle => 'તમે જે મુખ્ય ક્ષમતાઓ પર ધ્યાન કેન્દ્રિત કરવા માંગો છો તે પસંદ કરો.';
	@override String get general => 'સામાન્ય';
	@override String get operational => 'પરિચાલનાત્મક';
	@override String get personal => 'વ્યક્તિગત સલાહ';
	@override String get workplace => 'કાર્યસ્થળ';
	@override String get culture => 'સંસ્કૃતિ અને પરિવાર';
	@override String get journal => 'દૈનિક ડાયરી';
	@override String get back => 'પાછળ';
	@override String get continueBtn => 'ચાલુ રાખો';
}

// Path: modelDownload
class _StringsModelDownloadGu extends _StringsModelDownloadEn {
	_StringsModelDownloadGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI ને\nતમારા ઉપકરણ પર ';
	@override String get title2 => 'લાવી રહ્યા છીએ.';
	@override String get subtitle => 'આ એક વખતનું સેટઅપ છે. ત્યાર પછી અમે તમારા ડેટાને ફરી ક્યારેય ઍક્સેસ કરીશું નહીં.';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'તૈયાર';
	@override String get validating => 'ચકાસણી થઈ રહી છે...';
	@override String get langs => '૧૪ ભાષાઓ';
	@override String get toks => '~18 tok/s';
	@override String get ttft => '~140 ms TTFT';
	@override String error({required Object error}) => 'ભૂલ: ${error}';
	@override String get retry => 'ફરી પ્રયાસ કરો';
	@override String get open => 'ખોલો';
	@override String get download => 'ડાઉનલોડ કરો';
	@override String get later => 'પછી સેટ અપ કરો';
	@override String get continueSub => 'મોડેલ ડાઉનલોડ કર્યા વિના આગળ વધો. જ્યારે તમે તૈયાર હોવ ત્યારે પછીથી એક મોડેલ ઉમેરી શકો છો';
}

// Path: library_v2
class _StringsLibraryV2Gu extends _StringsLibraryV2En {
	_StringsLibraryV2Gu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'તમારા AI સંસાધનોનું સંચાલન કરો';
	@override String get language_title => 'ભાષા';
	@override String get language_desc => 'ભાષાઓ પસંદ કરો અને તેનું સંચાલન કરો';
	@override String get model_title => 'મોડેલ';
	@override String get model_desc => 'ઉપલબ્ધ AI મોડેલ શોધો અને તેનું સંચાલન કરો';
	@override String get saved_title => 'સાચવેલા';
	@override String get saved_desc => 'તમારી પ્રોમ્પ્ટ લાઇબ્રેરી';
	@override String get skills_title => 'કૌશલ્યો';
	@override String get skills_desc => 'AI ક્ષમતાઓ';
	@override String get pillars_title => 'પિલર';
	@override String get pillars_desc => 'મુખ્ય બુદ્ધિ ક્ષેત્રો';
}

// Path: biometric
class _StringsBiometricGu extends _StringsBiometricEn {
	_StringsBiometricGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get vault => 'વૉલ્ટ સુરક્ષા';
	@override String get setupTitle => 'સુરક્ષિત લૉક સેટ અપ કરો';
	@override String get setupSub => 'તમારી પસંદગીની પ્રમાણીકરણ પદ્ધતિ વડે તમારા વૉલ્ટને સુરક્ષિત કરો.';
	@override String get deviceTitle => 'ઉપકરણ બાયોમેટ્રિક્સ';
	@override String get deviceSub => 'Face ID અથવા ફિંગરપ્રિન્ટનો ઉપયોગ કરો';
	@override String get pinTitle => 'PIN કોડ';
	@override String get pinSub => 'એક અનન્ય ૪-અંકનો કોડ સેટ કરો';
	@override String get dialogTitle => 'બાયોમેટ્રિક ઍક્સેસની મંજૂરી આપો';
	@override String get dialogSub => 'ZiqeX અનલૉક કરવા માટે તમારી ફિંગરપ્રિન્ટ અથવા ચહેરાની ઓળખનો ઉપયોગ કરો';
	@override String get cancel => 'રદ કરો';
	@override String get allow => 'મંજૂરી આપો';
}

// Path: security_screen
class _StringsSecurityScreenGu extends _StringsSecurityScreenEn {
	_StringsSecurityScreenGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'એપ સુરક્ષા';
	@override String get global_protection => 'સર્વાંગી સુરક્ષા';
	@override String get app_lock => 'એપ લૉક';
	@override String get app_lock_sub => 'ZiqeX ખોલવા માટે પ્રમાણીકરણ જરૂરી છે';
	@override String get auth_methods => 'પ્રમાણીકરણ પદ્ધતિઓ';
	@override String get biometrics_title => 'ઉપકરણ બાયોમેટ્રિક્સ';
	@override String get biometrics_sub => 'તમારી ફિંગરપ્રિન્ટ અથવા ચહેરા વડે તરત અનલૉક કરો';
	@override String get pin_title => 'ZiqeX PIN';
	@override String get pin_active => 'PIN સક્રિય છે';
	@override String get pin_setup => 'એપ અનલૉક કરવા માટે એક અનન્ય ૪-અંકનો PIN સેટ કરો';
	@override String get warning_title => 'ઘણા બધા ખોટા પ્રયાસો';
	@override String get warning_sub => 'જો ખોટો PIN ૧૦ વખત દાખલ કરવામાં આવે, તો ZiqeX આપમેળે રીસેટ થશે. આ ઉપકરણ પર સાચવેલો તમામ ડેટા કાયમી ધોરણે કાઢી નાખવામાં આવશે';
	@override String get incomplete_title => 'સુરક્ષા સેટઅપ અધૂરું છે';
	@override String get incomplete_content => 'તમે એપ લૉક સક્ષમ કર્યું છે, પરંતુ PIN અથવા બાયોમેટ્રિક્સ સેટ કર્યા નથી. કોઈ એક પદ્ધતિ ગોઠવવામાં ન આવે ત્યાં સુધી એપ લૉક નિષ્ક્રિય રહેશે.';
	@override String get got_it => 'સમજાઈ ગયું';
}

// Path: data
class _StringsDataGu extends _StringsDataEn {
	_StringsDataGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ડેટા વ્યવસ્થાપન અને\nરીટેન્શન';
	@override String get summary => 'સ્ટોરેજનો સારાંશ';
	@override String get totalUsed => 'કુલ વપરાયેલ: ';
	@override String get legendModel => 'મોડેલ વેઇટ્સ';
	@override String get legendFree => 'ખાલી જગ્યા';
	@override String get mgmt => 'મોડેલ વ્યવસ્થાપન';
	@override String get deleteModels => 'ડાઉનલોડ કરેલા બધા મોડેલ કાઢી નાખો';
	@override String get deleteModelsSub => 'આ ઉપકરણમાંથી તમામ સ્થાનિક મોડેલ વેઇટ્સ અને પેરામીટર્સ સંપૂર્ણપણે દૂર કરો.';
	@override String get selectDelete => 'કાઢી નાખવા માટે મોડેલ પસંદ કરો';
	@override String get autoDelete => 'આ સમય કરતાં જૂની ચેટ્સ આપમેળે કાઢી નાખો:';
	@override String get autoDeleteSub => 'આ સેટિંગ તમામ અનલિંક કરેલી વાતચીતની સ્થિતિઓ પર લાગુ થાય છે.';
	@override String get modes => 'મોડ્સ';
	@override String get noData => 'કોઈ સક્રિય ચેટ ડેટા નથી';
	@override String get deleteAll => 'બધો ડેટા કાઢી નાખો';
	@override String get authReq => 'ફરીથી પ્રમાણીકરણ જરૂરી છે';
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
	@override String get title_setup => '૪-અંકનો PIN સેટ કરો';
	@override String get subtitle_setup => 'એપ ઍક્સેસ કરવા માટે એક સુરક્ષિત કોડ બનાવો';
	@override String get title_confirm => 'PINની પુષ્ટિ કરો';
	@override String get subtitle_confirm => 'ચકાસવા માટે તમારો ૪-અંકનો PIN ફરીથી દાખલ કરો';
	@override String get title_verify => 'વર્તમાન PIN દાખલ કરો';
	@override String get subtitle_verify => 'ચાલુ રાખવા માટે તમારો વર્તમાન PIN દાખલ કરો';
	@override String get error_mismatch => 'PIN મેળ ખાતા નથી. ફરી પ્રયાસ કરો.';
	@override String get error_incorrect => 'ખોટો PIN. કૃપા કરીને ફરી પ્રયાસ કરો.';
	@override String get snack_success => 'PIN સફળતાપૂર્વક સેટ કરવામાં આવ્યો';
}

// Path: pin_mgmt
class _StringsPinMgmtGu extends _StringsPinMgmtEn {
	_StringsPinMgmtGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'એપ-વિશિષ્ટ PIN';
	@override String get change_title => 'PIN બદલો';
	@override String get change_sub => 'તમારો ૪-અંકનો ZiqeX સુરક્ષા કોડ અપડેટ કરો';
	@override String get remove_title => 'PIN દૂર કરો';
	@override String get remove_sub => 'ZiqeX માટે PIN ઍક્સેસ બંધ કરો';
	@override String get snack_removed => 'PIN સફળતાપૂર્વક દૂર કરવામાં આવ્યો';
}

// Path: lang_legacy
class _StringsLangLegacyGu extends _StringsLangLegacyEn {
	_StringsLangLegacyGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'કઈ ભાષા\n';
	@override String get title2 => 'પોતાની લાગે છે?';
	@override String get subtitle => 'તમારી માતૃભાષામાં અવાજ, લખાણ અને જવાબો. ગમે ત્યારે બદલો.';
	@override String get first_reply => 'પહેલો જવાબ આ હશે';
	@override String script_info({required Object lang}) => '${lang} - તમારી લિપિમાં લખાયેલ અને બોલાયેલ';
	@override String get continueBtn => 'ચાલુ રાખો';
}

// Path: model_mgmt
class _StringsModelMgmtGu extends _StringsModelMgmtEn {
	_StringsModelMgmtGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'મોડેલ મેનેજમેન્ટ';
	@override String get subtitle => 'સ્થાનિક એજ AI ભાષા મોડેલ્સ ગોઠવો';
	@override String get status_loaded => 'લોડ થયેલ છે';
	@override String get status_unloaded => 'લોડ થયેલ નથી';
	@override String get status_loading => 'લોડ થઈ રહ્યું છે...';
	@override String size({required Object size}) => 'કદ: ${size}';
	@override String get load => 'લોડ કરો';
	@override String get unload => 'અનલોડ કરો';
	@override String get download => 'ડાઉનલોડ';
	@override String get delete => 'દૂર કરો';
	@override String get brahm_2b_desc => 'મોબાઇલ ઉપકરણો પર ઓછી વિલંબિત ટેક્સ્ટ પૂર્ણતા અને ચેટ માટે રચાયેલ અલ્ટ્રા-ફાસ્ટ કોમ્પેક્ટ એજ મોડેલ.';
	@override String get brahm_5b_desc => 'અદ્યતન કાર્ય ચોકસાઈ અને જટિલ સૂચનાત્મક પ્રદર્શન પ્રદાન કરતું સંતુલિત રીઝનિંગ મોડેલ.';
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
	@override String get offline => 'ऑफ़लाइन';
	@override String get start_something => 'कुछ शुरू करें';
	@override String get ask_anything => 'कुछ भी पूछें';
	@override String get ask_anything_sub => 'स्वास्थ्य · कानूनी · व्यक्तिगत · कार्य';
	@override String get voice_mode => 'वॉइस मोड';
	@override String get voice_mode_sub => 'अपनी भाषा में बोलें';
	@override String get ask_image => 'इमेज के बारे में पूछें';
	@override String get ask_image_sub => 'फ़ॉर्म · लेबल · टेक्स्ट';
	@override String get panchang => 'पंचांग';
	@override String get panchang_sub => 'आज की तिथि और मुहूर्त';
	@override String get ephemeral => 'अस्थायी';
	@override String get ephemeral_sub => 'बिना कोई निशान छोड़े चैट करें';
	@override String get recent => 'हाल की गतिविधियाँ';
	@override String get home => 'होम';
	@override String get chat => 'चैट';
	@override String get library => 'लाइब्रेरी';
	@override String get you => 'आप';
	@override String get settings_pref => 'प्रोफ़ाइल सेटिंग्स';
	@override String get preferences => 'प्राथमिकताएँ';
	@override String get language => 'भाषा';
	@override String get security => 'सुरक्षा';
	@override String get security_sub => 'ऐप लॉक · 2FA';
	@override String get privacy_tiers => 'गोपनीयता स्तर';
	@override String get privacy_tiers_sub => '2 सक्रिय हैं · ZiqeX कैसे सुनता है';
	@override String get storage_purge => 'स्टोरेज और डेटा हटाना';
	@override String get storage_purge_sub => 'डिवाइस पर 184 KB';
	@override String get ephemeral_mode => 'अस्थायी मोड';
	@override String get about => 'ऐप के बारे में';
	@override String get reset_prototype => 'प्रोटोटाइप रीसेट करें';
	@override String get built_in_india => 'भारत में निर्मित। दुनिया के लिए।';
	@override String get library_sub => 'हर मॉडल · हर मेमोरी · इसी डिवाइस पर';
	@override String get on_this_device => 'इसी डिवाइस पर';
	@override String get active => 'सक्रिय';
	@override String get add => '+ जोड़ें';
	@override String get storage_used => 'उपयोग किया गया स्टोरेज';
	@override String get health_question => 'स्वास्थ्य संबंधी प्रश्न';
	@override String get family => 'परिवार';
	@override String get work => 'काम';
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
	@override late final _StringsModelMgmtHi model_mgmt = _StringsModelMgmtHi._(_root);
}

// Path: profile
class _StringsProfileHi extends _StringsProfileEn {
	_StringsProfileHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get access => 'एक्सेस';
	@override String get privacy => 'गोपनीयता';
	@override String get system => 'सिस्टम';
	@override String get security_active => 'सुरक्षा सक्रिय है';
	@override String get security_inactive => 'सुरक्षा निष्क्रिय है';
	@override String get dark_mode => 'डार्क मोड';
	@override String get dark_mode_sub => 'लाइट और डार्क थीम के बीच स्विच करें';
	@override String get data_mgmt => 'डेटा प्रबंधन';
	@override String get data_mgmt_sub => 'अपना चैट इतिहास प्रबंधित करें';
	@override String get app_lock => 'ऐप लॉक';
	@override String get app_lock_sub => 'फ़िंगरप्रिंट, चेहरे या PIN से ZiqeX को सुरक्षित रखें';
	@override String get incognito_sub => 'इतिहास में सहेजे बिना चैट करें। बाहर निकलने के बाद इसे पुनर्प्राप्त नहीं किया जा सकता';
	@override String get version => 'V0.1 • संप्रभु • डिवाइस पर';
}

// Path: welcome
class _StringsWelcomeHi extends _StringsWelcomeEn {
	_StringsWelcomeHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX से मिलें';
	@override String get at_edge => 'एज पर इंटेलिजेंस';
	@override String get private => 'निजी एज AI\nZenteiQ द्वारा';
	@override String get begin => 'शुरू करें';
}

// Path: info
class _StringsInfoHi extends _StringsInfoEn {
	_StringsInfoHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title => 'आपके लिए बनाया गया इंटेलिजेंस';
	@override String get subtitle => 'गोपनीयता, विकल्प और पूर्ण नियंत्रण के साथ एक उपयोगी AI अनुभव।';
	@override String get privacy_title => 'गोपनीयता पहले';
	@override String get privacy_desc => 'ZiqeX को आपकी जानकारी और इंटेलिजेंस को आपके डिवाइस पर ही सुरक्षित रखने के लिए डिज़ाइन किया गया है।';
	@override String get hand_title => 'आपके हाथ में इंटेलिजेंस';
	@override String get hand_desc => 'रोज़मर्रा की ज़रूरतों के लिए इंटेलिजेंस, सीधे आपके डिवाइस पर उपलब्ध।';
	@override String get control_title => 'आपका डेटा। आपका नियंत्रण।';
	@override String get control_desc => 'चुनें कि क्या रखना है, अपने संग्रहीत डेटा को प्रबंधित करें और जिसकी अब आवश्यकता नहीं है उसे हटा दें।';
	@override String get place_title => 'हर जगह के लिए बनाया गया';
	@override String get place_desc => 'विभिन्न भाषाओं, डिवाइसों और लोगों के तकनीक इस्तेमाल करने के अलग-अलग तरीकों के लिए बनाया गया।';
	@override String get footer => 'आपका इंटेलिजेंस। आपका डिवाइस। आपका नियंत्रण।';
	@override String get setup => 'अपना ZiqeX सेटअप करें';
}

// Path: languageSelection
class _StringsLanguageSelectionHi extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'भाषा चुनें';
	@override String get title => 'अपनी भाषा चुनें';
	@override String get subtitle => 'अपने इंटरफ़ेस के लिए भाषा चुनें।';
	@override String get back => 'वापस';
	@override String get continueBtn => 'जारी रखें';
}

// Path: pillars
class _StringsPillarsHi extends _StringsPillarsEn {
	_StringsPillarsHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'पिलर चुनें';
	@override String get title => 'अपने पिलर चुनें';
	@override String get subtitle => 'उन मुख्य क्षमताओं को चुनें जिन पर आप ध्यान केंद्रित करना चाहते हैं।';
	@override String get general => 'सामान्य';
	@override String get operational => 'परिचालन';
	@override String get personal => 'व्यक्तिगत सलाह';
	@override String get workplace => 'कार्यस्थल';
	@override String get culture => 'संस्कृति और परिवार';
	@override String get journal => 'दैनिक डायरी';
	@override String get back => 'वापस';
	@override String get continueBtn => 'जारी रखें';
}

// Path: modelDownload
class _StringsModelDownloadHi extends _StringsModelDownloadEn {
	_StringsModelDownloadHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI को\nआपके डिवाइस पर ';
	@override String get title2 => 'ला रहे हैं।';
	@override String get subtitle => 'यह केवल एक बार का सेटअप है। इसके बाद, हम आपके डेटा को कभी नहीं छुएँगे।';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'तैयार';
	@override String get validating => 'सत्यापित किया जा रहा है...';
	@override String get langs => '14 भाषाएँ';
	@override String get toks => '~18 tok/s';
	@override String get ttft => '~140 ms TTFT';
	@override String error({required Object error}) => 'त्रुटि: ${error}';
	@override String get retry => 'पुनः प्रयास करें';
	@override String get open => 'खोलें';
	@override String get download => 'डाउनलोड करें';
	@override String get later => 'बाद में सेटअप करें';
	@override String get continueSub => 'मॉडल डाउनलोड किए बिना जारी रखें। जब आप तैयार हों, तब इसे जोड़ सकते हैं';
}

// Path: library_v2
class _StringsLibraryV2Hi extends _StringsLibraryV2En {
	_StringsLibraryV2Hi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'अपने AI संसाधनों को प्रबंधित करें';
	@override String get language_title => 'भाषा';
	@override String get language_desc => 'भाषाएँ चुनें और प्रबंधित करें';
	@override String get model_title => 'मॉडल';
	@override String get model_desc => 'AI मॉडल खोजें और प्रबंधित करें';
	@override String get saved_title => 'सहेजे गए';
	@override String get saved_desc => 'आपकी प्रॉम्प्ट लाइब्रेरी';
	@override String get skills_title => 'कौशल';
	@override String get skills_desc => 'AI क्षमताएँ';
	@override String get pillars_title => 'पिलर';
	@override String get pillars_desc => 'मुख्य बुद्धिमत्ता क्षेत्र';
}

// Path: biometric
class _StringsBiometricHi extends _StringsBiometricEn {
	_StringsBiometricHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get vault => 'वॉल्ट सुरक्षा';
	@override String get setupTitle => 'सुरक्षित लॉक सेट करें';
	@override String get setupSub => 'अपनी पसंदीदा प्रमाणीकरण विधि से अपने वॉल्ट को सुरक्षित रखें।';
	@override String get deviceTitle => 'डिवाइस बायोमेट्रिक्स';
	@override String get deviceSub => 'Face ID या फ़िंगरप्रिंट';
	@override String get pinTitle => 'PIN कोड';
	@override String get pinSub => 'एक अद्वितीय 4-अंकों का कोड सेट करें';
	@override String get dialogTitle => 'बायोमेट्रिक एक्सेस की अनुमति दें';
	@override String get dialogSub => 'ZiqeX को अनलॉक करने के लिए अपने फ़िंगरप्रिंट या चेहरे की पहचान का उपयोग करें';
	@override String get cancel => 'रद्द करें';
	@override String get allow => 'अनुमति दें';
}

// Path: security_screen
class _StringsSecurityScreenHi extends _StringsSecurityScreenEn {
	_StringsSecurityScreenHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ऐप सुरक्षा';
	@override String get global_protection => 'समग्र सुरक्षा';
	@override String get app_lock => 'ऐप लॉक';
	@override String get app_lock_sub => 'ZiqeX खोलने के लिए प्रमाणीकरण आवश्यक है';
	@override String get auth_methods => 'प्रमाणीकरण विधियाँ';
	@override String get biometrics_title => 'डिवाइस बायोमेट्रिक्स';
	@override String get biometrics_sub => 'अपने फ़िंगरप्रिंट या चेहरे से तुरंत अनलॉक करें';
	@override String get pin_title => 'ZiqeX PIN';
	@override String get pin_active => 'PIN सक्रिय है';
	@override String get pin_setup => 'ऐप अनलॉक करने के लिए एक अद्वितीय 4-अंकों का PIN सेट करें';
	@override String get warning_title => 'बहुत अधिक गलत प्रयास';
	@override String get warning_sub => 'यदि गलत PIN 10 बार दर्ज किया जाता है, तो ZiqeX अपने आप रीसेट हो जाएगा। इस डिवाइस पर संग्रहीत सभी डेटा स्थायी रूप से हटा दिया जाएगा';
	@override String get incomplete_title => 'सुरक्षा सेटअप अधूरा है';
	@override String get incomplete_content => 'आपने ऐप लॉक सक्षम किया है, लेकिन PIN या बायोमेट्रिक्स सेट नहीं किए हैं। किसी एक विधि को सेट करने तक ऐप लॉक निष्क्रिय रहेगा।';
	@override String get got_it => 'समझ गया';
}

// Path: data
class _StringsDataHi extends _StringsDataEn {
	_StringsDataHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'डेटा प्रबंधन';
	@override String get summary => 'स्टोरेज सारांश';
	@override String get totalUsed => 'कुल उपयोग: ';
	@override String get legendModel => 'मॉडल वेट्स';
	@override String get legendFree => 'खाली जगह';
	@override String get mgmt => 'मॉडल प्रबंधन';
	@override String get deleteModels => 'सभी डाउनलोड किए गए मॉडल हटाएँ';
	@override String get deleteModelsSub => 'इस डिवाइस से सभी स्थानीय मॉडल वेट्स और फ़ाइन-ट्यून किए गए पैरामीटर पूरी तरह हटा दें।';
	@override String get selectDelete => 'हटाने के लिए मॉडल चुनें';
	@override String get autoDelete => 'पुरानी चैट अपने आप हटाएँ:';
	@override String get autoDeleteSub => 'यह सेटिंग सभी चैट मोड पर लागू होती है।';
	@override String get modes => 'मोड';
	@override String get noData => 'कोई सक्रिय चैट डेटा नहीं है';
	@override String get deleteAll => 'सारा डेटा हटाएँ';
	@override String get authReq => 'पुनः प्रमाणीकरण आवश्यक है';
	@override String get viewChats => 'चैट देखें';
	@override String get deleteAllPillar => 'सभी हटाएँ';
	@override String get space => 'जगह:';
	@override String get activeInstances => 'सक्रिय इंस्टेंस:';
}

// Path: pin_setup
class _StringsPinSetupHi extends _StringsPinSetupEn {
	_StringsPinSetupHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '4-अंकों का PIN सेट करें';
	@override String get subtitle_setup => 'ऐप एक्सेस करने के लिए एक सुरक्षित कोड बनाएँ';
	@override String get title_confirm => 'PIN की पुष्टि करें';
	@override String get subtitle_confirm => 'सत्यापित करने के लिए अपना 4-अंकों का PIN फिर से दर्ज करें';
	@override String get title_verify => 'वर्तमान PIN दर्ज करें';
	@override String get subtitle_verify => 'जारी रखने के लिए अपना वर्तमान PIN दर्ज करें';
	@override String get error_mismatch => 'PIN मेल नहीं खाते। फिर से प्रयास करें।';
	@override String get error_incorrect => 'गलत PIN। फिर से प्रयास करें।';
	@override String get snack_success => 'PIN सफलतापूर्वक सेट हो गया';
}

// Path: pin_mgmt
class _StringsPinMgmtHi extends _StringsPinMgmtEn {
	_StringsPinMgmtHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ऐप PIN';
	@override String get change_title => 'PIN बदलें';
	@override String get change_sub => 'अपना 4-अंकों का ZiqeX सुरक्षा कोड अपडेट करें';
	@override String get remove_title => 'PIN हटाएँ';
	@override String get remove_sub => 'ZiqeX के लिए PIN एक्सेस बंद करें';
	@override String get snack_removed => 'PIN सफलतापूर्वक हटा दिया गया';
}

// Path: lang_legacy
class _StringsLangLegacyHi extends _StringsLangLegacyEn {
	_StringsLangLegacyHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'कौन सी भाषा\n';
	@override String get title2 => 'आपको अपनी जैसी लगती है?';
	@override String get subtitle => 'अपनी मातृभाषा में वॉइस, टेक्स्ट और जवाब पाएँ। इसे कभी भी बदला जा सकता है।';
	@override String get first_reply => 'पहला जवाब इस तरह होगा';
	@override String script_info({required Object lang}) => '${lang} - आपकी लिपि में लिखा और बोला जाएगा';
	@override String get continueBtn => 'जारी रखें';
}

// Path: model_mgmt
class _StringsModelMgmtHi extends _StringsModelMgmtEn {
	_StringsModelMgmtHi._(_StringsHi root) : this._root = root, super._(root);

	@override final _StringsHi _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'मॉडल प्रबंधन';
	@override String get subtitle => 'स्थानीय एज AI भाषा मॉडल कॉन्फ़िगर करें';
	@override String get status_loaded => 'लोडेड';
	@override String get status_unloaded => 'अनलोडेड';
	@override String get status_loading => 'लोड हो रहा है...';
	@override String size({required Object size}) => 'आकार: ${size}';
	@override String get load => 'लोड करें';
	@override String get unload => 'अनलोड करें';
	@override String get download => 'डाउनलोड';
	@override String get delete => 'हटाएं';
	@override String get brahm_2b_desc => 'अल्ट्रा-फास्ट कॉम्पैक्ट एज मॉडल, मोबाइल उपकरणों पर कम विलंबता वाले टेक्स्ट पूर्णता और चैट के लिए डिज़ाइन किया गया।';
	@override String get brahm_5b_desc => 'संतुलित तर्क मॉडल, उन्नत कार्य सटीकता और जटिल निर्देशात्मक प्रदर्शन की पेशकश करता है।';
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
	@override String get start_something => 'ಏನನ್ನಾದರೂ ಪ್ರಾರಂಭಿಸಿ';
	@override String get ask_anything => 'ಏನನ್ನಾದರೂ ಕೇಳಿ';
	@override String get ask_anything_sub => 'ಆರೋಗ್ಯ · ಕಾನೂನು · ವೈಯಕ್ತಿಕ · ಕೆಲಸ';
	@override String get voice_mode => 'ಧ್ವನಿ ಮೋಡ್';
	@override String get voice_mode_sub => 'ನಿಮ್ಮ ಭಾಷೆಯಲ್ಲಿ ಮಾತನಾಡಿ';
	@override String get ask_image => 'ಚಿತ್ರದ ಕುರಿತು ಕೇಳಿ';
	@override String get ask_image_sub => 'ಫಾರ್ಮ್, ಲೇಬಲ್, ಬರಹ';
	@override String get panchang => 'ಪಂಚಾಂಗ';
	@override String get panchang_sub => 'ಇಂದಿನ ತಿಥಿ ಮತ್ತು ಮುಹೂರ್ತ';
	@override String get ephemeral => 'ತಾತ್ಕಾಲಿಕ';
	@override String get ephemeral_sub => 'ಯಾವುದೇ ಗುರುತು ಉಳಿಯದಂತೆ ಮಾತನಾಡಿ';
	@override String get recent => 'ಇತ್ತೀಚಿನವು';
	@override String get home => 'ಮುಖಪುಟ';
	@override String get chat => 'ಚಾಟ್';
	@override String get library => 'ಲೈಬ್ರರಿ';
	@override String get you => 'ನೀವು';
	@override String get settings_pref => 'ಪ್ರೊಫೈಲ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';
	@override String get preferences => 'ಆದ್ಯತೆಗಳು ಮತ್ತು ಭದ್ರತೆ';
	@override String get language => 'ಭಾಷೆ';
	@override String get security => 'ಭದ್ರತೆ';
	@override String get security_sub => 'ಆ್ಯಪ್ ಲಾಕ್ · 2FA';
	@override String get privacy_tiers => 'ಗೌಪ್ಯತಾ ಮೋಡ್‌ಗಳು';
	@override String get privacy_tiers_sub => '1 ಸಕ್ರಿಯ \'ZiqeX ಆಲಿಸುವ ಮೋಡ್\'';
	@override String get storage_purge => 'ಡೇಟಾ ಮತ್ತು ಸಂಗ್ರಹಣೆ';
	@override String get storage_purge_sub => 'ಸಾಧನದಲ್ಲಿ 184 KB';
	@override String get ephemeral_mode => 'ಅಜ್ಞಾತ ಚಾಟ್';
	@override String get about => 'ಸಿಸ್ಟಮ್ ಮಾಹಿತಿ';
	@override String get reset_prototype => 'ಪ್ರೋಟೋಟೈಪ್ ಮರುಹೊಂದಿಸಿ';
	@override String get built_in_india => 'ಭಾರತದಲ್ಲಿ ನಿರ್ಮಿಸಲಾಗಿದೆ. ಜಗತ್ತಿಗಾಗಿ.';
	@override String get library_sub => 'ಪ್ರತಿ ಮಾದರಿ · ಪ್ರತಿ ಸ್ಮರಣೆ · ಈ ಸಾಧನದಲ್ಲಿ';
	@override String get on_this_device => 'ಈ ಸಾಧನದಲ್ಲಿ';
	@override String get active => 'ಸಕ್ರಿಯ';
	@override String get add => '+ ಸೇರಿಸಿ';
	@override String get storage_used => 'ಬಳಸಿದ ಸಂಗ್ರಹಣೆ';
	@override String get health_question => 'ಆರೋಗ್ಯ ಪ್ರಶ್ನೆ';
	@override String get family => 'ಕುಟುಂಬ';
	@override String get work => 'ಕೆಲಸ';
	@override String get just_thinking => 'ಸುಮ್ಮನೆ ಯೋಚಿಸುತ್ತಿದ್ದೇನೆ';
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
	@override late final _StringsModelMgmtKn model_mgmt = _StringsModelMgmtKn._(_root);
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
	@override String get dark_mode_sub => 'ಲೈಟ್ ಮತ್ತು ಡಾರ್ಕ್ ವರ್ಕ್‌ಸ್ಪೇಸ್ ಥೀಮ್‌ಗಳ ನಡುವೆ ಬದಲಾಯಿಸಿ';
	@override String get data_mgmt => 'ಚಾಟ್ ಡೇಟಾ ನಿರ್ವಹಣೆ ಮತ್ತು ಸಂಗ್ರಹಣೆ';
	@override String get data_mgmt_sub => 'ನಿಮ್ಮ ಸಂಭಾಷಣೆ ಇತಿಹಾಸವನ್ನು ನಿರ್ವಹಿಸಿ';
	@override String get app_lock => 'ಆ್ಯಪ್ ಲಾಕ್';
	@override String get app_lock_sub => 'ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್, ಮುಖ ಅಥವಾ ಪಿನ್ ಮೂಲಕ ZiqeX ಅನ್ನು ಸುರಕ್ಷಿತಗೊಳಿಸಿ';
	@override String get incognito_sub => 'ಇತಿಹಾಸದಲ್ಲಿ ಉಳಿಸದೆ ಚಾಟ್ ಮಾಡಿ. ಚಾಟ್‌ನಿಂದ ಹೊರಬಂದ ನಂತರ ಅದನ್ನು ಮರುಪಡೆಯಲು ಸಾಧ್ಯವಿಲ್ಲ';
	@override String get version => 'V0.1 • ಸಾರ್ವಭೌಮ • ಸಾಧನದಲ್ಲೇ';
}

// Path: welcome
class _StringsWelcomeKn extends _StringsWelcomeEn {
	_StringsWelcomeKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX ಅನ್ನು ಪರಿಚಯಿಸಿಕೊಳ್ಳಿ';
	@override String get at_edge => 'ಎಡ್ಜ್‌ನಲ್ಲಿ ಬುದ್ಧಿಮತ್ತೆ';
	@override String get private => 'ಖಾಸಗಿ ಮತ್ತು ಎಡ್ಜ್ AI\nZenteiQ ಮೂಲಕ';
	@override String get begin => 'ಆನ್‌ಬೋರ್ಡಿಂಗ್ ಪ್ರಾರಂಭಿಸಿ';
}

// Path: info
class _StringsInfoKn extends _StringsInfoEn {
	_StringsInfoKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನಿಮಗಾಗಿ ವಿನ್ಯಾಸಗೊಳಿಸಿದ ಬುದ್ಧಿಮತ್ತೆ';
	@override String get subtitle => 'ಗೌಪ್ಯತೆ ಮತ್ತು ಸಂಪೂರ್ಣ ನಿಯಂತ್ರಣದೊಂದಿಗೆ AI ಅನುಭವ.';
	@override String get privacy_title => 'ಗೌಪ್ಯತೆ ಮೊದಲು';
	@override String get privacy_desc => 'ZiqeX ನಿಮ್ಮ ಬುದ್ಧಿಮತ್ತೆ ಮತ್ತು ಮಾಹಿತಿಯನ್ನು ನಿಮ್ಮ ಸಾಧನದಲ್ಲೇ ಸುರಕ್ಷಿತವಾಗಿರಿಸುವಂತೆ ವಿನ್ಯಾಸಗೊಳಿಸಲಾಗಿದೆ.';
	@override String get hand_title => 'ನಿಮ್ಮ ಕೈಯಲ್ಲೇ ಬುದ್ಧಿಮತ್ತೆ';
	@override String get hand_desc => 'ದೈನಂದಿನ ಅಗತ್ಯಗಳಿಗಾಗಿ ಬುದ್ಧಿಮತ್ತೆ ನೇರವಾಗಿ ನಿಮ್ಮ ಸಾಧನದಲ್ಲೇ ಲಭ್ಯವಿದೆ.';
	@override String get control_title => 'ನಿಮ್ಮ ಡೇಟಾ. ನಿಮ್ಮ ನಿಯಂತ್ರಣ.';
	@override String get control_desc => 'ಏನನ್ನು ಉಳಿಸಬೇಕು ಎಂಬುದನ್ನು ಆಯ್ಕೆಮಾಡಿ, ಸಂಗ್ರಹಿಸಿರುವುದನ್ನು ನಿರ್ವಹಿಸಿ ಮತ್ತು ಇನ್ನು ಮುಂದೆ ಅಗತ್ಯವಿಲ್ಲದದ್ದನ್ನು ಅಳಿಸಿ.';
	@override String get place_title => 'ಎಲ್ಲರಿಗಾಗಿ ವಿನ್ಯಾಸಗೊಳಿಸಲಾಗಿದೆ';
	@override String get place_desc => 'ವಿವಿಧ ಭಾಷೆಗಳು, ಸಾಧನಗಳು ಮತ್ತು ಜನರು ತಂತ್ರಜ್ಞಾನವನ್ನು ಬಳಸುವ ವಿಭಿನ್ನ ವಿಧಾನಗಳಿಗಾಗಿ ನಿರ್ಮಿಸಲಾಗಿದೆ.';
	@override String get footer => 'ನಿಮ್ಮ ಬುದ್ಧಿಮತ್ತೆ. ನಿಮ್ಮ ಸಾಧನ. ನಿಮ್ಮ ನಿಯಂತ್ರಣ.';
	@override String get setup => 'ನಿಮ್ಮ ZiqeX ಅನ್ನು ಹೊಂದಿಸಿ';
}

// Path: languageSelection
class _StringsLanguageSelectionKn extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಭಾಷೆ ಆಯ್ಕೆ';
	@override String get title => 'ನಿಮ್ಮ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';
	@override String get subtitle => 'ನಿಮ್ಮ ಇಂಟರ್‌ಫೇಸ್‌ಗಾಗಿ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ.';
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
	@override String get subtitle => 'ನೀವು ಗಮನಹರಿಸಲು ಬಯಸುವ ಪ್ರಮುಖ ಸಾಮರ್ಥ್ಯಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ.';
	@override String get general => 'ಸಾಮಾನ್ಯ';
	@override String get operational => 'ಕಾರ್ಯಾಚರಣೆ';
	@override String get personal => 'ವೈಯಕ್ತಿಕ ಸಲಹೆ';
	@override String get workplace => 'ಕೆಲಸದ ಸ್ಥಳ';
	@override String get culture => 'ಸಂಸ್ಕೃತಿ ಮತ್ತು ಕುಟುಂಬ';
	@override String get journal => 'ದೈನಂದಿನ ದಿನಚರಿ';
	@override String get back => 'ಹಿಂದಕ್ಕೆ';
	@override String get continueBtn => 'ಮುಂದುವರಿಸಿ';
}

// Path: modelDownload
class _StringsModelDownloadKn extends _StringsModelDownloadEn {
	_StringsModelDownloadKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI ಅನ್ನು\nನಿಮ್ಮ ಬಳಿಗೆ ';
	@override String get title2 => 'ತರುತ್ತಿದ್ದೇವೆ.';
	@override String get subtitle => 'ಇದು ಒಂದು ಬಾರಿಯ ಸೆಟಪ್. ಇದರ ನಂತರ, ನಾವು ನಿಮ್ಮ ಡೇಟಾವನ್ನು ಎಂದಿಗೂ ಮುಟ್ಟುವುದಿಲ್ಲ.';
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
	@override String get continueSub => 'ಮಾದರಿಯನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡದೆಯೇ ಮುಂದುವರಿಯಿರಿ. ನೀವು ಸಿದ್ಧರಾದಾಗ ಒಂದನ್ನು ಸೇರಿಸಬಹುದು';
}

// Path: library_v2
class _StringsLibraryV2Kn extends _StringsLibraryV2En {
	_StringsLibraryV2Kn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'ನಿಮ್ಮ AI ಸಂಪನ್ಮೂಲಗಳನ್ನು ನಿರ್ವಹಿಸಿ';
	@override String get language_title => 'ಭಾಷೆ';
	@override String get language_desc => 'ನಿಮ್ಮ ಆದ್ಯತೆಯ ಭಾಷೆಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ ಮತ್ತು ನಿರ್ವಹಿಸಿ';
	@override String get model_title => 'ಮಾದರಿ';
	@override String get model_desc => 'ಲಭ್ಯವಿರುವ AI ಮಾದರಿಗಳನ್ನು ಅನ್ವೇಷಿಸಿ ಮತ್ತು ನಿರ್ವಹಿಸಿ';
	@override String get saved_title => 'ಉಳಿಸಿರುವವು';
	@override String get saved_desc => 'ನಿಮ್ಮ ಪ್ರಾಂಪ್ಟ್ ಲೈಬ್ರರಿ';
	@override String get skills_title => 'ಕೌಶಲ್ಯಗಳು';
	@override String get skills_desc => 'AI ಸಾಮರ್ಥ್ಯಗಳು';
	@override String get pillars_title => 'ಸ್ತಂಭಗಳು';
	@override String get pillars_desc => 'ಪ್ರಮುಖ ಸಾಮರ್ಥ್ಯಗಳು';
}

// Path: biometric
class _StringsBiometricKn extends _StringsBiometricEn {
	_StringsBiometricKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get vault => 'ವಾಲ್ಟ್ ಭದ್ರತೆ';
	@override String get setupTitle => 'ಸುರಕ್ಷಿತ ಲಾಕ್ ಸೆಟಪ್';
	@override String get setupSub => 'ನಿಮ್ಮ ಆದ್ಯತೆಯ ದೃಢೀಕರಣ ವಿಧಾನದಿಂದ ನಿಮ್ಮ ವಾಲ್ಟ್ ಅನ್ನು ಸುರಕ್ಷಿತಗೊಳಿಸಿ.';
	@override String get deviceTitle => 'ಸಾಧನ ಬಯೋಮೆಟ್ರಿಕ್ಸ್';
	@override String get deviceSub => 'Face ID ಅಥವಾ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಬಳಸಿ';
	@override String get pinTitle => 'ಆ್ಯಪ್-ನಿರ್ದಿಷ್ಟ ಪಿನ್';
	@override String get pinSub => 'ವಿಶಿಷ್ಟವಾದ 4-ಅಂಕಿಯ ಕೋಡ್ ಹೊಂದಿಸಿ';
	@override String get dialogTitle => 'ಬಯೋಮೆಟ್ರಿಕ್ ಪ್ರವೇಶಕ್ಕೆ ಅನುಮತಿ ನೀಡಿ';
	@override String get dialogSub => 'ZiqeX ಅನ್ನು ಅನ್‌ಲಾಕ್ ಮಾಡಲು ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಅಥವಾ ಸಾಧನದ ಮುಖ ಗುರುತಿಸುವಿಕೆಯನ್ನು ಬಳಸಿ';
	@override String get cancel => 'ರದ್ದುಮಾಡಿ';
	@override String get allow => 'ಬಯೋಮೆಟ್ರಿಕ್ಸ್‌ಗೆ ಅನುಮತಿ ನೀಡಿ';
}

// Path: security_screen
class _StringsSecurityScreenKn extends _StringsSecurityScreenEn {
	_StringsSecurityScreenKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಆ್ಯಪ್ ಭದ್ರತೆ';
	@override String get global_protection => 'ಜಾಗತಿಕ ಭದ್ರತೆ';
	@override String get app_lock => 'ಆ್ಯಪ್ ಲಾಕ್';
	@override String get app_lock_sub => 'ZiqeX ತೆರೆಯಲು ದೃಢೀಕರಣದ ಅಗತ್ಯವಿದೆ';
	@override String get auth_methods => 'ದೃಢೀಕರಣ ವಿಧಾನಗಳು';
	@override String get biometrics_title => 'ಸಾಧನ ಬಯೋಮೆಟ್ರಿಕ್ಸ್';
	@override String get biometrics_sub => 'ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಅಥವಾ ಮುಖದ ಮೂಲಕ ತಕ್ಷಣ ಅನ್‌ಲಾಕ್ ಮಾಡಿ';
	@override String get pin_title => 'ZiqeX ಪಿನ್';
	@override String get pin_active => 'ಪಿನ್ ಸಕ್ರಿಯವಾಗಿದೆ';
	@override String get pin_setup => 'ಆ್ಯಪ್ ಅನ್‌ಲಾಕ್ ಮಾಡಲು ವಿಶಿಷ್ಟವಾದ 4-ಅಂಕಿಯ ಕೋಡ್ ಹೊಂದಿಸಿ';
	@override String get warning_title => 'ಹೆಚ್ಚಿನ ಸಂಖ್ಯೆಯ ತಪ್ಪು ಪ್ರಯತ್ನಗಳು';
	@override String get warning_sub => 'ತಪ್ಪಾದ ಪಿನ್ ಅನ್ನು 10 ಬಾರಿ ನಮೂದಿಸಿದರೆ, ZiqeX ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಮರುಹೊಂದಿಸಲಾಗುತ್ತದೆ. ಈ ಸಾಧನದಲ್ಲಿ ಉಳಿಸಿರುವ ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಶಾಶ್ವತವಾಗಿ ಅಳಿಸಲಾಗುತ್ತದೆ';
	@override String get incomplete_title => 'ಭದ್ರತಾ ಸೆಟಪ್ ಅಪೂರ್ಣವಾಗಿದೆ';
	@override String get incomplete_content => 'ನೀವು ಆ್ಯಪ್ ಲಾಕ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿದ್ದೀರಿ, ಆದರೆ ಪಿನ್ ಅಥವಾ ಬಯೋಮೆಟ್ರಿಕ್ಸ್ ಅನ್ನು ಹೊಂದಿಸಿಲ್ಲ. ಒಂದು ವಿಧಾನವನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡುವವರೆಗೆ ಆ್ಯಪ್ ಲಾಕ್ ನಿಷ್ಕ್ರಿಯವಾಗಿರುತ್ತದೆ.';
	@override String get got_it => 'ಅರ್ಥವಾಯಿತು';
}

// Path: data
class _StringsDataKn extends _StringsDataEn {
	_StringsDataKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಡೇಟಾ ನಿರ್ವಹಣೆ ಮತ್ತು\nಸಂಗ್ರಹಣೆ';
	@override String get summary => 'ಸಂಗ್ರಹಣೆ ಸಾರಾಂಶ';
	@override String get totalUsed => 'ಒಟ್ಟು ಬಳಕೆ: ';
	@override String get legendModel => 'ಮಾದರಿ ತೂಕಗಳು';
	@override String get legendFree => 'ಖಾಲಿ ಸ್ಥಳ';
	@override String get mgmt => 'ಮಾದರಿ ನಿರ್ವಹಣೆ';
	@override String get deleteModels => 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಿದ ಎಲ್ಲಾ ಮಾದರಿಗಳನ್ನು ಅಳಿಸಿ';
	@override String get deleteModelsSub => 'ಈ ಸಾಧನದಿಂದ ಎಲ್ಲಾ ಸ್ಥಳೀಯ ಮಾದರಿ ತೂಕಗಳು ಮತ್ತು ಪ್ಯಾರಾಮೀಟರ್‌ಗಳನ್ನು ಸಂಪೂರ್ಣವಾಗಿ ತೆಗೆದುಹಾಕಿ.';
	@override String get selectDelete => 'ಅಳಿಸಲು ಮಾದರಿಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';
	@override String get autoDelete => 'ಇದಕ್ಕಿಂತ ಹಳೆಯ ಚಾಟ್‌ಗಳನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಅಳಿಸಿ:';
	@override String get autoDeleteSub => 'ಈ ಸೆಟ್ಟಿಂಗ್ ಎಲ್ಲಾ ಲಿಂಕ್ ಮಾಡದ ಸಂಭಾಷಣೆ ಮೋಡ್‌ಗಳಿಗೆ ಅನ್ವಯಿಸುತ್ತದೆ.';
	@override String get modes => 'ಮೋಡ್‌ಗಳು';
	@override String get noData => 'ಯಾವುದೇ ಸಕ್ರಿಯ ಚಾಟ್ ಡೇಟಾ ಇಲ್ಲ';
	@override String get deleteAll => 'ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಅಳಿಸಿ';
	@override String get authReq => 'ಆ್ಯಪ್ ಲಾಕ್ ಮರು-ದೃಢೀಕರಣದ ಅಗತ್ಯವಿದೆ';
	@override String get viewChats => 'ಚಾಟ್‌ಗಳನ್ನು ವೀಕ್ಷಿಸಿ';
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
	@override String get subtitle_setup => 'ಆ್ಯಪ್ ಪ್ರವೇಶಿಸಲು ಸುರಕ್ಷಿತ ಕೋಡ್ ರಚಿಸಿ';
	@override String get title_confirm => 'ಪಿನ್ ದೃಢೀಕರಿಸಿ';
	@override String get subtitle_confirm => 'ಪರಿಶೀಲಿಸಲು ನಿಮ್ಮ 4-ಅಂಕಿಯ ಕೋಡ್ ಅನ್ನು ಮತ್ತೆ ನಮೂದಿಸಿ';
	@override String get title_verify => 'ಪ್ರಸ್ತುತ ಪಿನ್ ನಮೂದಿಸಿ';
	@override String get subtitle_verify => 'ಮುಂದುವರಿಯಲು ನಿಮ್ಮ ಪ್ರಸ್ತುತ ಕೋಡ್ ಅನ್ನು ನಮೂದಿಸಿ';
	@override String get error_mismatch => 'ಪಿನ್‌ಗಳು ಹೊಂದಿಕೆಯಾಗುತ್ತಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
	@override String get error_incorrect => 'ತಪ್ಪಾದ ಪಿನ್. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
	@override String get snack_success => 'ಪಿನ್ ಯಶಸ್ವಿಯಾಗಿ ಹೊಂದಿಸಲಾಗಿದೆ';
}

// Path: pin_mgmt
class _StringsPinMgmtKn extends _StringsPinMgmtEn {
	_StringsPinMgmtKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಆ್ಯಪ್-ನಿರ್ದಿಷ್ಟ ಪಿನ್';
	@override String get change_title => 'ಪಿನ್ ಬದಲಾಯಿಸಿ';
	@override String get change_sub => 'ನಿಮ್ಮ 4-ಅಂಕಿಯ ZiqeX ಭದ್ರತಾ ಕೋಡ್ ಅನ್ನು ನವೀಕರಿಸಿ';
	@override String get remove_title => 'ಪಿನ್ ತೆಗೆದುಹಾಕಿ';
	@override String get remove_sub => 'ZiqeX ಗಾಗಿ ಪಿನ್ ಪ್ರವೇಶವನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಿ';
	@override String get snack_removed => 'ಪಿನ್ ಯಶಸ್ವಿಯಾಗಿ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';
}

// Path: lang_legacy
class _StringsLangLegacyKn extends _StringsLangLegacyEn {
	_StringsLangLegacyKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'ಯಾವ ಭಾಷೆ\n';
	@override String get title2 => 'ಮನೆಯಂತಿದೆ?';
	@override String get subtitle => 'ನಿಮ್ಮ ಮಾತೃಭಾಷೆಯಲ್ಲಿ ಧ್ವನಿ, ಪಠ್ಯ ಮತ್ತು ಉತ್ತರಗಳು. ಯಾವಾಗ ಬೇಕಾದರೂ ಬದಲಾಯಿಸಿ.';
	@override String get first_reply => 'ಮೊದಲ ಉತ್ತರ ಹೀಗಿರುತ್ತದೆ';
	@override String script_info({required Object lang}) => '${lang} - ನಿಮ್ಮ ಲಿಪಿಯಲ್ಲಿ ಬರೆಯಲಾಗುತ್ತದೆ ಮತ್ತು ಮಾತನಾಡಲಾಗುತ್ತದೆ';
	@override String get continueBtn => 'ಮುಂದುವರಿಸಿ';
}

// Path: model_mgmt
class _StringsModelMgmtKn extends _StringsModelMgmtEn {
	_StringsModelMgmtKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಮಾದರಿ ನಿರ್ವಹಣೆ';
	@override String get subtitle => 'ಸ್ಥಳೀಯ ಎಡ್ಜ್ AI ಭಾಷಾ ಮಾದರಿಗಳನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡಿ';
	@override String get status_loaded => 'ಲೋಡ್ ಮಾಡಲಾಗಿದೆ';
	@override String get status_unloaded => 'ಲೋಡ್ ಆಗಿಲ್ಲ';
	@override String get status_loading => 'ಲೋಡ್ ಆಗುತ್ತಿದೆ...';
	@override String size({required Object size}) => 'ಗಾತ್ರ: ${size}';
	@override String get load => 'ಲೋಡ್ ಮಾಡಿ';
	@override String get unload => 'ಅನ್‌ಲೋಡ್ ಮಾಡಿ';
	@override String get download => 'ಡೌನ್‌ಲೋಡ್';
	@override String get delete => 'ಅಳಿಸಿ';
	@override String get brahm_2b_desc => 'ಮೊಬೈಲ್ ಸಾಧನಗಳಲ್ಲಿ ಕಡಿಮೆ-ಲೇಟೆನ್ಸಿ ಪಠ್ಯ ಪೂರ್ಣಗೊಳಿಸುವಿಕೆ ಮತ್ತು ಚಾಟ್‌ಗಾಗಿ ವಿನ್ಯಾಸಗೊಳಿಸಲಾದ ಅತಿ ವೇಗದ ಕಾಂಪ್ಯಾಕ್ಟ್ ಎಡ್ಜ್ ಮಾದರಿ.';
	@override String get brahm_5b_desc => 'ಸುಧಾರಿತ ಕಾರ್ಯ ನಿಖರತೆ ಮತ್ತು ಸಂಕೀರ್ણ ಸೂಚನಾ ಕಾರ್ಯಕ್ಷಮತೆಯನ್ನು ನೀಡುವ ಸಮತೋಲಿತ ರೀಸನಿಂಗ್ ಮಾದರಿ.';
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
	@override String get settings_pref => 'പ്രൊഫൈൽ സെറ്റ്';
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
	@override late final _StringsModelMgmtMl model_mgmt = _StringsModelMgmtMl._(_root);
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
	@override String get app_lock_sub => 'विരലടയാളം, മുഖം അല്ലെങ്കിൽ പിൻ ഉപയോഗിച്ച് ZiqeX സുരക്ഷിതമാക്കാം';
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
	@override String get hand_desc => 'ദൈനദിന കാര്യങ്ങൾക്കുള്ള ബുദ്ധിശക്തി നിങ്ങളുടെ ഉപകരണത്തിൽ ലഭ്യം.';
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
	@override String get personal => 'ব্যক্তিഗത ഉപദേശം';
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
	@override String get pillars_title => 'പില്ലറുകൾ';
	@override String get pillars_desc => 'പ്രധാന കാര്യങ്ങൾ';
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
	@override String get pinSub => '4 അക്ക പിൻ സജ്ಜമാക്കുക';
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
	@override String get biometrics_title => 'ഡിവൈസ് ბയോമെട്രിക്സ്';
	@override String get biometrics_sub => 'നിങ്ങളുടെ ഫിംഗർപ്രിന്റ് അല്ലെങ്കിൽ മുഖം ഉപയോഗിച്ച് തൽക്ഷണം അൺലോക്ക് ചെയ്യുക';
	@override String get pin_title => 'ZiqeX പിൻ';
	@override String get pin_active => 'പിൻ സജീവമാണ്';
	@override String get pin_setup => 'ആപ്പ് അൺലോക്ക് ചെയ്യാൻ 4 അക്കങ്ങളുള്ള ഒരു തനതായ കോഡ് സജ്ಜമാക്കുക';
	@override String get warning_title => 'തെറ്റായ ശ്രമങ്ങൾ പരിധി കവിഞ്ഞു';
	@override String get warning_sub => 'തെറ്റായ പിൻ 10 തവണ നൽകിയാൽ, ZiqeX സ്വയമേവ റീസെറ്റ് ചെയ്യപ്പെടും. ഈ ഉപകരണത്തിൽ സംരക്ഷിച്ചിട്ടുള്ള എല്ലാ ഡാറ്റയും ശാശ്വതമായി ഇല്ലാതാക്കപ്പെടும்';
	@override String get incomplete_title => 'സെക്യൂരിറ്റി സെറ്റപ്പ് അപൂർണ്ണമാണ്';
	@override String get incomplete_content => 'നിങ്ങൾ ആപ്പ് ലോക്ക് പ്രവർത്തനക്ഷമമാക്കി, പക്ഷേ പിൻ അല്ലെങ്കിൽ ബയോമെട്രിക്സ് സജ്ಜീകരിച്ചിട്ടില്ല. ഒരു രീതി കോൺഫിഗർ ചെയ്യുന്നത് വരെ ആപ്പ് ലോക്ക് പ്രവർത്തനരഹിതമായിരിക്കും.';
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
	@override String get autoDelete => 'പഴയവ ഓട്ടো-ഡിലീറ്റ് ചെയ്യുക:';
	@override String get autoDeleteSub => 'എല്ലാ ചാറ്റ് മോഡുകൾക്കും ఇది ബാധകമാണ്.';
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
	@override String get title_setup => '4-അക്ക പിൻ സജ്ಜമാക്കുക';
	@override String get subtitle_setup => 'ആപ്പ് ആക്സസ് ചെയ്യുന്നതിന് ഒരു സുരക്ഷിത കോഡ് സൃഷ്ടിക്കുക';
	@override String get title_confirm => 'പിൻ സ്ഥിരീകരിക്കുക';
	@override String get subtitle_confirm => 'സ്ഥിരീകരിക്കുന്നതിന് നിങ്ങളുടെ 4-അക്ക കോഡ് വീണ്ടും നൽകുക';
	@override String get title_verify => 'നിലവിലെ പിൻ നൽകുക';
	@override String get subtitle_verify => 'തുടരുന്നതിന് നിങ്ങളുടെ നിലവിലുള്ള കോഡ് നൽകുക';
	@override String get error_mismatch => 'പിന്നുകൾ പൊരുത്തപ്പെടുന്നില്ല. വീണ്ടും ശ്രമിക്കുക.';
	@override String get error_incorrect => 'തെറ്റായ പിൻ. ദയവായി വീണ്ടും ശ്രമിക്കുക.';
	@override String get snack_success => 'പിൻ വിജയകരമായി സജ്ജമാക്കി';
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

// Path: model_mgmt
class _StringsModelMgmtMl extends _StringsModelMgmtEn {
	_StringsModelMgmtMl._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'മോഡൽ മാനേജ്‌മെന്റ്';
	@override String get subtitle => 'ലോക്കൽ എഡ്ജ് AI ഭാഷാ മോഡലുകൾ ക്രമീകരിക്കുക';
	@override String get status_loaded => 'ലോഡ് ചെയ്തു';
	@override String get status_unloaded => 'ലോഡ് ചെയ്തിട്ടില്ല';
	@override String get status_loading => 'ലോഡ് ചെയ്യുന്നു...';
	@override String size({required Object size}) => 'വലുപ്പം: ${size}';
	@override String get load => 'ലോഡ് ചെയ്യുക';
	@override String get unload => 'അൺലോഡ് ചെയ്യുക';
	@override String get download => 'ഡൗൺലോഡ്';
	@override String get delete => 'നീക്കം ചെയ്യുക';
	@override String get brahm_2b_desc => 'മൊബൈൽ ഉപകരണങ്ങളിൽ കുറഞ്ഞ ലാറ്റൻസി ടെക്സ്റ്റ് കംപ്ലീഷനും ചാറ്റിനുമായി രൂപകൽപ്പന ചെയ്ത അതിവേഗ കോംപാക്റ്റ് എഡ്ജ് മോഡൽ.';
	@override String get brahm_5b_desc => 'മെച്ചപ്പെട്ട ടാസ്ക് കൃത്യതയും സങ്കീർണ്ണമായ ഇൻസ്ട്രക്ഷണൽ പെർഫോമൻസും വാഗ്ദാനം ചെയ്യുന്ന സന്തുലിതമായ റീസണിംഗ് മോഡൽ.';
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
	@override String get on_device_only => 'फक्त या डिव्हाइसवर';
	@override String get offline => 'ऑफलाइन';
	@override String get start_something => 'काहीतरी सुरू करा';
	@override String get ask_anything => 'काहीही विचारा';
	@override String get ask_anything_sub => 'आरोग्य · कायदेशीर · वैयक्तिक · काम';
	@override String get voice_mode => 'व्हॉइस मोड';
	@override String get voice_mode_sub => 'तुमच्या भाषेत बोला';
	@override String get ask_image => 'प्रतिमेबद्दल विचारा';
	@override String get ask_image_sub => 'फॉर्म, लेबले, स्क्रिप्ट';
	@override String get panchang => 'पंचांग';
	@override String get panchang_sub => 'आजची तिथी आणि मुहूर्त';
	@override String get ephemeral => 'तात्पुरते';
	@override String get ephemeral_sub => 'कोणताही माग न ठेवता बोला';
	@override String get recent => 'अलीकडील';
	@override String get home => 'होम';
	@override String get chat => 'चॅट';
	@override String get library => 'लायब्ररी';
	@override String get you => 'तुम्ही';
	@override String get settings_pref => 'प्रोफाइल सेटिंग्ज';
	@override String get preferences => 'प्राधान्ये आणि सुरक्षा';
	@override String get language => 'भाषा';
	@override String get security => 'सुरक्षा';
	@override String get security_sub => 'अॅप लॉक · 2FA';
	@override String get privacy_tiers => 'गोपनीयता मोड';
	@override String get privacy_tiers_sub => '१ सक्रिय \'ZiqeX ऐकण्याचा मोड\'';
	@override String get storage_purge => 'डेटा आणि संचय';
	@override String get storage_purge_sub => 'डिव्हाइसवर १८४ KB';
	@override String get ephemeral_mode => 'गुप्त चॅट';
	@override String get about => 'सिस्टम माहिती';
	@override String get reset_prototype => 'प्रोटोटाइप रीसेट करा';
	@override String get built_in_india => 'भारतात निर्मित. जगासाठी.';
	@override String get library_sub => 'प्रत्येक मॉडेल · प्रत्येक स्मृती · या डिव्हाइसवर';
	@override String get on_this_device => 'या डिव्हाइसवर';
	@override String get active => 'सक्रिय';
	@override String get add => '+ जोडा';
	@override String get storage_used => 'वापरलेले स्टोरेज';
	@override String get health_question => 'आरोग्यविषयक प्रश्न';
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
	@override late final _StringsModelMgmtMr model_mgmt = _StringsModelMgmtMr._(_root);
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
	@override String get dark_mode_sub => 'लाइट आणि डार्क वर्कस्पेस थीममध्ये बदला';
	@override String get data_mgmt => 'चॅट डेटा व्यवस्थापन आणि संचय';
	@override String get data_mgmt_sub => 'तुमचा संभाषण इतिहास व्यवस्थापित करा';
	@override String get app_lock => 'अॅप लॉक';
	@override String get app_lock_sub => 'फिंगरप्रिंट, चेहरा किंवा पिनद्वारे ZiqeX सुरक्षित करा';
	@override String get incognito_sub => 'इतिहासात जतन न करता चॅट करा. चॅटमधून बाहेर पडल्यानंतर ते पुनर्प्राप्त करता येणार नाही';
	@override String get version => 'V0.1 • सार्वभौम • ऑन-डिव्हाइस';
}

// Path: welcome
class _StringsWelcomeMr extends _StringsWelcomeEn {
	_StringsWelcomeMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX ला भेटा';
	@override String get at_edge => 'एजवरील बुद्धिमत्ता';
	@override String get private => 'खासगी आणि एज AI\nZenteiQ द्वारे';
	@override String get begin => 'ऑनबोर्डिंग सुरू करा';
}

// Path: info
class _StringsInfoMr extends _StringsInfoEn {
	_StringsInfoMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'तुमच्यासाठी डिझाइन केलेली बुद्धिमत्ता';
	@override String get subtitle => 'गोपनीयता, निवड आणि नियंत्रणासह उपयुक्त AI अनुभव.';
	@override String get privacy_title => 'गोपनीयता प्रथम';
	@override String get privacy_desc => 'ZiqeX ची बुद्धिमत्ता आणि तुमची माहिती तुमच्या डिव्हाइसवरच सुरक्षित ठेवण्यासाठी डिझाइन केली आहे.';
	@override String get hand_title => 'तुमच्या हातात बुद्धिमत्ता';
	@override String get hand_desc => 'दैनंदिन गरजांसाठीची बुद्धिमत्ता थेट तुमच्या डिव्हाइसवर उपलब्ध.';
	@override String get control_title => 'तुमचा डेटा. तुमचे नियंत्रण.';
	@override String get control_desc => 'काय ठेवायचे ते निवडा, साठवलेल्या माहितीचे व्यवस्थापन करा आणि ज्याची गरज नाही ते हटवा.';
	@override String get place_title => 'प्रत्येक ठिकाणासाठी डिझाइन केलेले';
	@override String get place_desc => 'विविध भाषा, डिव्हाइस आणि लोक तंत्रज्ञानाचा वापर करण्याच्या विविध पद्धतींसाठी तयार केलेले.';
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
	@override String get continueBtn => 'पुढे जा';
}

// Path: pillars
class _StringsPillarsMr extends _StringsPillarsEn {
	_StringsPillarsMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'स्तंभ निवड';
	@override String get title => 'तुमचे स्तंभ निवडा';
	@override String get subtitle => 'तुम्हाला ज्या मुख्य क्षमतांवर लक्ष केंद्रित करायचे आहे त्या निवडा.';
	@override String get general => 'सामान्य';
	@override String get operational => 'कार्यात्मक';
	@override String get personal => 'वैयक्तिक सल्ला';
	@override String get workplace => 'कार्यस्थळ';
	@override String get culture => 'संस्कृती आणि कुटुंब';
	@override String get journal => 'दैनंदिन डायरी';
	@override String get back => 'मागे';
	@override String get continueBtn => 'पुढे जा';
}

// Path: modelDownload
class _StringsModelDownloadMr extends _StringsModelDownloadEn {
	_StringsModelDownloadMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI\nतुमच्या डिव्हाइसवर ';
	@override String get title2 => 'आणत आहोत.';
	@override String get subtitle => 'फक्त एकदाच. यानंतर आम्ही तुमच्या डेटाला कधीही स्पर्श करणार नाही.';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'तयार';
	@override String get validating => 'तपासणी सुरू आहे...';
	@override String get langs => '१४ भाषा';
	@override String get toks => '~१८ tok/s';
	@override String get ttft => '~१४० ms TTFT';
	@override String error({required Object error}) => 'त्रुटी: ${error}';
	@override String get retry => 'पुन्हा प्रयत्न करा';
	@override String get open => 'BrahmAI उघडा';
	@override String get download => 'मॉडेल डाउनलोड करा';
	@override String get later => 'नंतर सेट अप करा';
	@override String get continueSub => 'मॉडेल डाउनलोड न करता पुढे जा. तुम्ही तयार झाल्यावर ते जोडू शकता';
}

// Path: library_v2
class _StringsLibraryV2Mr extends _StringsLibraryV2En {
	_StringsLibraryV2Mr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'तुमच्या AI संसाधनांचे व्यवस्थापन करा';
	@override String get language_title => 'भाषा';
	@override String get language_desc => 'तुमच्या पसंतीच्या भाषा निवडा आणि व्यवस्थापित करा';
	@override String get model_title => 'मॉडेल';
	@override String get model_desc => 'उपलब्ध AI मॉडेल्स एक्सप्लोर करा आणि व्यवस्थापित करा';
	@override String get saved_title => 'साठवलेले';
	@override String get saved_desc => 'तुमची प्रॉम्प्ट लायब्ररी';
	@override String get skills_title => 'कौशल्ये';
	@override String get skills_desc => 'AI क्षमता';
	@override String get pillars_title => 'स्तंभ';
	@override String get pillars_desc => 'मुख्य बुद्धिमत्ता क्षेत्र';
}

// Path: biometric
class _StringsBiometricMr extends _StringsBiometricEn {
	_StringsBiometricMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get vault => 'व्हॉल्ट सुरक्षा';
	@override String get setupTitle => 'सुरक्षित लॉक सेटअप';
	@override String get setupSub => 'तुमच्या पसंतीच्या प्रमाणीकरण पद्धतीने तुमचा व्हॉल्ट सुरक्षित करा.';
	@override String get deviceTitle => 'डिव्हाइस बायोमेट्रिक्स';
	@override String get deviceSub => 'Face ID किंवा फिंगरप्रिंट वापरा';
	@override String get pinTitle => 'अॅप-विशिष्ट पिन';
	@override String get pinSub => 'एक अद्वितीय ४-अंकी कोड सेट करा';
	@override String get dialogTitle => 'बायोमेट्रिक प्रवेशाला परवानगी द्या';
	@override String get dialogSub => 'ZiqeX अनलॉक करण्यासाठी तुमचा फिंगरप्रिंट किंवा डिव्हाइसवरील चेहरा ओळख वापरा';
	@override String get cancel => 'रद्द करा';
	@override String get allow => 'बायोमेट्रिक्सला परवानगी द्या';
}

// Path: security_screen
class _StringsSecurityScreenMr extends _StringsSecurityScreenEn {
	_StringsSecurityScreenMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'अॅप सुरक्षा';
	@override String get global_protection => 'एकूण सुरक्षा';
	@override String get app_lock => 'अॅप लॉक';
	@override String get app_lock_sub => 'ZiqeX उघडण्यासाठी प्रमाणीकरण आवश्यक आहे';
	@override String get auth_methods => 'प्रमाणीकरण पद्धती';
	@override String get biometrics_title => 'डिव्हाइस बायोमेट्रिक्स';
	@override String get biometrics_sub => 'फिंगरप्रिंट किंवा चेहऱ्याद्वारे त्वरित अनलॉक करा';
	@override String get pin_title => 'ZiqeX पिन';
	@override String get pin_active => 'पिन सक्रिय आहे';
	@override String get pin_setup => 'अॅप अनलॉक करण्यासाठी एक अद्वितीय ४-अंकी कोड सेट करा';
	@override String get warning_title => 'खूप जास्त चुकीचे प्रयत्न';
	@override String get warning_sub => '१० वेळा चुकीचा पिन टाकल्यास ZiqeX आपोआप रीसेट होईल. या डिव्हाइसवर साठवलेला सर्व डेटा कायमचा हटवला जाईल';
	@override String get incomplete_title => 'सुरक्षा सेटअप अपूर्ण';
	@override String get incomplete_content => 'तुम्ही अॅप लॉक सक्षम केले आहे, परंतु पिन किंवा बायोमेट्रिक्स सेट केलेले नाहीत. कोणतीही पद्धत कॉन्फिगर करेपर्यंत अॅप लॉक निष्क्रिय राहील.';
	@override String get got_it => 'समजले';
}

// Path: data
class _StringsDataMr extends _StringsDataEn {
	_StringsDataMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'डेटा व्यवस्थापन आणि\nसंचय';
	@override String get summary => 'स्टोरेज सारांश';
	@override String get totalUsed => 'एकूण वापरलेले: ';
	@override String get legendModel => 'मॉडेल वेट्स';
	@override String get legendFree => 'मोकळी जागा';
	@override String get mgmt => 'मॉडेल व्यवस्थापन';
	@override String get deleteModels => 'डाउनलोड केलेली सर्व मॉडेल्स हटवा';
	@override String get deleteModelsSub => 'या डिव्हाइसवरून सर्व स्थानिक मॉडेल वेट्स आणि फाइन-ट्यून केलेले पॅरामीटर्स पूर्णपणे काढून टाका.';
	@override String get selectDelete => 'हटवण्यासाठी मॉडेल निवडा';
	@override String get autoDelete => 'यापेक्षा जुने चॅट आपोआप हटवा:';
	@override String get autoDeleteSub => 'ही सेटिंग सर्व अनलिंक केलेल्या संभाषण मोड्सना लागू होते.';
	@override String get modes => 'मोड्स';
	@override String get noData => 'कोणताही सक्रिय चॅट डेटा नाही';
	@override String get deleteAll => 'सर्व डेटा हटवा';
	@override String get authReq => 'अॅप लॉकसाठी पुन्हा प्रमाणीकरण आवश्यक आहे';
	@override String get viewChats => 'चॅट्स पहा';
	@override String get deleteAllPillar => 'सर्व हटवा';
	@override String get space => 'जागा:';
	@override String get activeInstances => 'सक्रिय इंस्टन्सेस:';
}

// Path: pin_setup
class _StringsPinSetupMr extends _StringsPinSetupEn {
	_StringsPinSetupMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '४-अंकी पिन सेट करा';
	@override String get subtitle_setup => 'अॅपमध्ये प्रवेश करण्यासाठी सुरक्षित कोड तयार करा';
	@override String get title_confirm => 'पिनची पुष्टी करा';
	@override String get subtitle_confirm => 'पडताळणीसाठी तुमचा ४-अंकी कोड पुन्हा प्रविष्ट करा';
	@override String get title_verify => 'सध्याचा पिन प्रविष्ट करा';
	@override String get subtitle_verify => 'पुढे जाण्यासाठी तुमचा सध्याचा कोड प्रविष्ट करा';
	@override String get error_mismatch => 'पिन जुळत नाहीत. पुन्हा प्रयत्न करा.';
	@override String get error_incorrect => 'चुकीचा पिन. कृपया पुन्हा प्रयत्न करा.';
	@override String get snack_success => 'पिन यशस्वीरित्या सेट केला';
}

// Path: pin_mgmt
class _StringsPinMgmtMr extends _StringsPinMgmtEn {
	_StringsPinMgmtMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'अॅप-विशिष्ट पिन';
	@override String get change_title => 'पिन बदला';
	@override String get change_sub => 'तुमचा ४-अंकी ZiqeX सुरक्षा कोड अपडेट करा';
	@override String get remove_title => 'पिन काढा';
	@override String get remove_sub => 'ZiqeX साठी पिनद्वारे प्रवेश बंद करा';
	@override String get snack_removed => 'पिन यशस्वीरित्या काढला';
}

// Path: lang_legacy
class _StringsLangLegacyMr extends _StringsLangLegacyEn {
	_StringsLangLegacyMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'कोणती भाषा\n';
	@override String get title2 => 'आपलीशी वाटते?';
	@override String get subtitle => 'तुमच्या मातृभाषेत व्हॉइस, मजकूर आणि उत्तरे. कधीही बदला.';
	@override String get first_reply => 'पहिले उत्तर असे असेल';
	@override String script_info({required Object lang}) => '${lang} - तुमच्या लिपीत लिहिले आणि बोलले जाईल';
	@override String get continueBtn => 'पुढे जा';
}

// Path: model_mgmt
class _StringsModelMgmtMr extends _StringsModelMgmtEn {
	_StringsModelMgmtMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'मॉडेल व्यवस्थापन';
	@override String get subtitle => 'स्थानिक एज AI भाषा मॉडेल्स कॉन्फिगर करा';
	@override String get status_loaded => 'लोडेड';
	@override String get status_unloaded => 'अनलोडेड';
	@override String get status_loading => 'लोड होत आहे...';
	@override String size({required Object size}) => 'आकार: ${size}';
	@override String get load => 'लोड करा';
	@override String get unload => 'अनलोड करा';
	@override String get download => 'डाउनलोड';
	@override String get delete => 'हटवा';
	@override String get brahm_2b_desc => 'मोबाईल उपकरणांवर कमी विलंबाने मजकूर पूर्ण करण्यासाठी आणि चॅटसाठी डिझाइन केलेले अल्ट्रा-फास्ट कॉम्पॅक्ट एज मॉडेल.';
	@override String get brahm_5b_desc => 'प्रगत कार्य अचूकता आणि जटिल सूचनात्मक कामगिरी देणारे संतुलित रिझनिंग मॉडेल.';
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
	@override String get start_something => 'କିଛି ଆରମ୍ଭ କରନ୍ତୁ';
	@override String get ask_anything => 'ଯାହା କିଛି ପଚାରନ୍ତୁ';
	@override String get ask_anything_sub => 'ସ୍ୱାସ୍ଥ୍ୟ · ଆଇନଗତ · ବ୍ୟକ୍ତିଗତ · କାର୍ଯ୍ୟ';
	@override String get voice_mode => 'ଭଏସ୍ ମୋଡ୍';
	@override String get voice_mode_sub => 'ଆପଣଙ୍କ ଭାଷାରେ କଥା ହୁଅନ୍ତୁ';
	@override String get ask_image => 'ଛବି ବିଷୟରେ ପଚାରନ୍ତୁ';
	@override String get ask_image_sub => 'ଫର୍ମ, ଲେବଲ୍, ସ୍କ୍ରିପ୍ଟ';
	@override String get panchang => 'ପଞ୍ଜିକା';
	@override String get panchang_sub => 'ଆଜିର ତିଥି ଓ ମୁହୂର୍ତ୍ତ';
	@override String get ephemeral => 'କ୍ଷଣସ୍ଥାୟୀ';
	@override String get ephemeral_sub => 'କୌଣସି ଚିହ୍ନ ନରଖି କଥା ହୁଅନ୍ତୁ';
	@override String get recent => 'ସମ୍ପ୍ରତିକ';
	@override String get home => 'ହୋମ୍';
	@override String get chat => 'ଚାଟ୍';
	@override String get library => 'ଲାଇବ୍ରେରୀ';
	@override String get you => 'ଆପଣ';
	@override String get settings_pref => 'ପ୍ରୋଫାଇଲ୍ ସେଟିଂସ୍';
	@override String get preferences => 'ପସନ୍ଦ ଏବଂ ସୁରକ୍ଷା';
	@override String get language => 'ଭାଷା';
	@override String get security => 'ସୁରକ୍ଷା';
	@override String get security_sub => 'ଆପ୍ ଲକ୍ · 2FA';
	@override String get privacy_tiers => 'ଗୋପନୀୟତା ମୋଡ୍';
	@override String get privacy_tiers_sub => '୧ଟି ସକ୍ରିୟ \'ZiqeX ଶୁଣିବା ମୋଡ୍\'';
	@override String get storage_purge => 'ଡାଟା ଏବଂ ସଂରକ୍ଷଣ';
	@override String get storage_purge_sub => 'ଡିଭାଇସରେ ୧୮୪ KB';
	@override String get ephemeral_mode => 'ଗୁପ୍ତ ଚାଟ୍';
	@override String get about => 'ସିଷ୍ଟମ୍ ସୂଚନା';
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
	@override late final _StringsModelMgmtOr model_mgmt = _StringsModelMgmtOr._(_root);
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
	@override String get dark_mode_sub => 'ଲାଇଟ୍ ଏବଂ ଡାର୍କ ୱର୍କସ୍ପେସ୍ ଥିମ୍ ମଧ୍ୟରେ ପରିବର୍ତ୍ତନ କରନ୍ତୁ';
	@override String get data_mgmt => 'ଚାଟ୍ ଡାଟା ପରିଚାଳନା ଏବଂ ସଂରକ୍ଷଣ';
	@override String get data_mgmt_sub => 'ଆପଣଙ୍କର ବାର୍ତ୍ତାଳାପ ଇତିହାସ ପରିଚାଳନା କରନ୍ତୁ';
	@override String get app_lock => 'ଆପ୍ ଲକ୍';
	@override String get app_lock_sub => 'ଆପଣଙ୍କ ଫିଙ୍ଗରପ୍ରିଣ୍ଟ, ମୁହଁ କିମ୍ବା ପିନ୍ ସହିତ ZiqeX କୁ ସୁରକ୍ଷିତ କରନ୍ତୁ';
	@override String get incognito_sub => 'ଇତିହାସରେ ସଂରକ୍ଷଣ ନକରି ଚାଟ୍ କରନ୍ତୁ। ଚାଟ୍ ରୁ ବାହାରିବା ପରେ ଏହାକୁ ପୁନରୁଦ୍ଧାର କରାଯାଇପାରିବ ନାହିଁ';
	@override String get version => 'V0.1 • ସାର୍ବଭୌମ • ଅନ୍-ଡିଭାଇସ୍';
}

// Path: welcome
class _StringsWelcomeOr extends _StringsWelcomeEn {
	_StringsWelcomeOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX ସହିତ ପରିଚିତ ହୁଅନ୍ତୁ';
	@override String get at_edge => 'ଏଜ୍‌ରେ ବୁଦ୍ଧିମତା';
	@override String get private => 'ବ୍ୟକ୍ତିଗତ ଏବଂ ଏଜ୍ AI\nZenteiQ ଦ୍ୱାରା';
	@override String get begin => 'ଅନବୋର୍ଡିଂ ଆରମ୍ଭ କରନ୍ତୁ';
}

// Path: info
class _StringsInfoOr extends _StringsInfoEn {
	_StringsInfoOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ଆପଣଙ୍କ ପାଇଁ ନିର୍ମିତ ବୁଦ୍ଧିମତା';
	@override String get subtitle => 'ଗୋପନୀୟତା, ପସନ୍ଦ ଏବଂ ନିୟନ୍ତ୍ରଣ ସହିତ ନିର୍ମିତ ଉପଯୋଗୀ AI ଅନୁଭୂତି।';
	@override String get privacy_title => 'ଗୋପନୀୟତା ପ୍ରଥମେ';
	@override String get privacy_desc => 'ZiqeX ଆପଣଙ୍କ ବୁଦ୍ଧିମତା ଏବଂ ସୂଚନାକୁ ଆପଣଙ୍କ ଡିଭାଇସ୍‌ରେ ରଖିବା ପାଇଁ ଡିଜାଇନ୍ କରାଯାଇଛି।';
	@override String get hand_title => 'ଆପଣଙ୍କ ହାତରେ ବୁଦ୍ଧିମତା';
	@override String get hand_desc => 'ଦୈନନ୍ଦିନ ବୁଦ୍ଧିମତା, ସିଧାସଳଖ ଆପଣଙ୍କ ଡିଭାଇସରେ ଉପଲବ୍ଧ।';
	@override String get control_title => 'ଆପଣଙ୍କ ଡାଟା। ଆପଣଙ୍କ ନିୟନ୍ତ୍ରଣ।';
	@override String get control_desc => 'କ’ଣ ରଖିବେ ତାହା ବାଛନ୍ତୁ, ସଂରକ୍ଷିତ ଡାଟା ପରିଚାଳନା କରନ୍ତୁ ଏବଂ ଆଉ ଆବଶ୍ୟକ ନଥିବା ଡାଟାକୁ ଡିଲିଟ୍ କରନ୍ତୁ।';
	@override String get place_title => 'ପ୍ରତ୍ୟେକ ସ୍ଥାନ ପାଇଁ ନିର୍ମିତ';
	@override String get place_desc => 'ବିଭିନ୍ନ ଭାଷା, ଡିଭାଇସ୍ ଏବଂ ଲୋକମାନେ ପ୍ରଯୁକ୍ତି ବ୍ୟବହାର କରୁଥିବା ବିଭିନ୍ନ ଉପାୟ ପାଇଁ ନିର୍ମିତ।';
	@override String get footer => 'ଆପଣଙ୍କ ବୁଦ୍ଧିମତା। ଆପଣଙ୍କ ଡିଭାଇସ୍। ଆପଣଙ୍କ ନିୟନ୍ତ୍ରଣ।';
	@override String get setup => 'ଆପଣଙ୍କ ZiqeX ସେଟ୍ ଅପ୍ କରନ୍ତୁ';
}

// Path: languageSelection
class _StringsLanguageSelectionOr extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ଭାଷା ଚୟନ';
	@override String get title => 'ଆପଣଙ୍କ ଭାଷା ବାଛନ୍ତୁ';
	@override String get subtitle => 'ଆପଣଙ୍କ ଇଣ୍ଟରଫେସ୍ ପାଇଁ ଭାଷା ବାଛନ୍ତୁ।';
	@override String get back => 'ପଛକୁ';
	@override String get continueBtn => 'ଜାରି ରଖନ୍ତୁ';
}

// Path: pillars
class _StringsPillarsOr extends _StringsPillarsEn {
	_StringsPillarsOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ପିଲାର୍ ଚୟନ';
	@override String get title => 'ଆପଣଙ୍କ ପିଲାର୍ ବାଛନ୍ତୁ';
	@override String get subtitle => 'ଆପଣ ଯେଉଁ ମୁଖ୍ୟ କ୍ଷମତାଗୁଡ଼ିକ ଉପରେ ଧ୍ୟାନ ଦେବାକୁ ଚାହୁଁଛନ୍ତି, ସେଗୁଡ଼ିକ ବାଛନ୍ତୁ।';
	@override String get general => 'ସାଧାରଣ';
	@override String get operational => 'କାର୍ଯ୍ୟକ୍ଷମତା';
	@override String get personal => 'ବ୍ୟକ୍ତିଗତ ପରାମର୍ଶ';
	@override String get workplace => 'କର୍ମକ୍ଷେତ୍ର';
	@override String get culture => 'ସଂସ୍କୃତି ଏବଂ ପରିବାର';
	@override String get journal => 'ଦୈନିକ ଡାଏରୀ';
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
	@override String get subtitle => 'କେବଳ ଥରେ। ଏହା ପରେ, ଆମେ ଆପଣଙ୍କ ଡାଟାକୁ କେବେବି ସ୍ପର୍ଶ କରିବୁ ନାହିଁ।';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'ପ୍ରସ୍ତୁତ';
	@override String get validating => 'ଯାଞ୍ଚ କରାଯାଉଛି...';
	@override String get langs => '୧୪ଟି ଭାଷା';
	@override String get toks => '~୧୮ tok/s';
	@override String get ttft => '~୧୪୦ ms TTFT';
	@override String error({required Object error}) => 'ତ୍ରୁଟି: ${error}';
	@override String get retry => 'ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ';
	@override String get open => 'BrahmAI ଖୋଲନ୍ତୁ';
	@override String get download => 'ମଡେଲ୍ ଡାଉନଲୋଡ୍ କରନ୍ତୁ';
	@override String get later => 'ପରେ ସେଟ୍ ଅପ୍ କରନ୍ତୁ';
	@override String get continueSub => 'ମଡେଲ୍ ଡାଉନଲୋଡ୍ ନକରି ଆଗକୁ ବଢନ୍ତୁ। ଆପଣ ପ୍ରସ୍ତୁତ ହେଲେ ଗୋଟିଏ ଯୋଡିପାରିବେ';
}

// Path: library_v2
class _StringsLibraryV2Or extends _StringsLibraryV2En {
	_StringsLibraryV2Or._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'ଆପଣଙ୍କ AI ସମ୍ବଳଗୁଡ଼ିକ ପରିଚାଳନା କରନ୍ତୁ';
	@override String get language_title => 'ଭାଷା';
	@override String get language_desc => 'ଆପଣଙ୍କ ପସନ୍ଦର ଭାଷାଗୁଡ଼ିକ ବାଛନ୍ତୁ ଏବଂ ପରିଚାଳନା କରନ୍ତୁ';
	@override String get model_title => 'ମଡେଲ୍';
	@override String get model_desc => 'ଉପଲବ୍ଧ AI ମଡେଲଗୁଡ଼ିକୁ ଖୋଜନ୍ତୁ ଏବଂ ପରିଚାଳନା କରନ୍ତୁ';
	@override String get saved_title => 'ସଂରକ୍ଷିତ';
	@override String get saved_desc => 'ଆପଣଙ୍କ ପ୍ରମ୍ପ୍ଟ ଲାଇବ୍ରେରୀ';
	@override String get skills_title => 'ଦକ୍ଷତା';
	@override String get skills_desc => 'AI କ୍ଷମତା';
	@override String get pillars_title => 'ପିଲାର୍';
	@override String get pillars_desc => 'ମୁଖ୍ୟ କ୍ଷମତା';
}

// Path: biometric
class _StringsBiometricOr extends _StringsBiometricEn {
	_StringsBiometricOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get vault => 'ଭଲ୍ଟ ସୁରକ୍ଷା';
	@override String get setupTitle => 'ସୁରକ୍ଷିତ ଲକ୍ ସେଟ୍ ଅପ୍';
	@override String get setupSub => 'ଆପଣଙ୍କ ପସନ୍ଦର ପ୍ରମାଣୀକରଣ ପଦ୍ଧତି ସହିତ ଆପଣଙ୍କ ଭଲ୍ଟକୁ ସୁରକ୍ଷିତ କରନ୍ତୁ।';
	@override String get deviceTitle => 'ଡିଭାଇସ୍ ବାୟୋମେଟ୍ରିକ୍ସ';
	@override String get deviceSub => 'Face ID କିମ୍ବା ଫିଙ୍ଗରପ୍ରିଣ୍ଟ ବ୍ୟବହାର କରନ୍ତୁ';
	@override String get pinTitle => 'ଆପ୍-ନିର୍ଦ୍ଦିଷ୍ଟ ପିନ୍';
	@override String get pinSub => 'ଏକ ଅନନ୍ୟ ୪-ଅଙ୍କ ବିଶିଷ୍ଟ କୋଡ୍ ସେଟ୍ କରନ୍ତୁ';
	@override String get dialogTitle => 'ବାୟୋମେଟ୍ରିକ୍ ଆକ୍ସେସ୍‌କୁ ଅନୁମତି ଦିଅନ୍ତୁ';
	@override String get dialogSub => 'ZiqeX ଅନଲକ୍ କରିବା ପାଇଁ ଆପଣଙ୍କ ଫିଙ୍ଗରପ୍ରିଣ୍ଟ କିମ୍ବା ଡିଭାଇସ୍‌ର ମୁହଁ ଚିହ୍ନଟ ବ୍ୟବହାର କରନ୍ତୁ';
	@override String get cancel => 'ବାତିଲ୍ କରନ୍ତୁ';
	@override String get allow => 'ବାୟୋମେଟ୍ରିକ୍ସକୁ ଅନୁମତି ଦିଅନ୍ତୁ';
}

// Path: security_screen
class _StringsSecurityScreenOr extends _StringsSecurityScreenEn {
	_StringsSecurityScreenOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ଆପ୍ ସୁରକ୍ଷା';
	@override String get global_protection => 'ସାମଗ୍ରିକ ସୁରକ୍ଷା';
	@override String get app_lock => 'ଆପ୍ ଲକ୍';
	@override String get app_lock_sub => 'ZiqeX ଖୋଲିବା ପାଇଁ ପ୍ରମାଣୀକରଣ ଆବଶ୍ୟକ';
	@override String get auth_methods => 'ପ୍ରମାଣୀକରଣ ପଦ୍ଧତି';
	@override String get biometrics_title => 'ଡିଭାଇସ୍ ବାୟୋମେଟ୍ରିକ୍ସ';
	@override String get biometrics_sub => 'ଆପଣଙ୍କ ଫିଙ୍ଗରପ୍ରିଣ୍ଟ କିମ୍ବା ମୁହଁ ଦ୍ୱାରା ତୁରନ୍ତ ଅନଲକ୍ କରନ୍ତୁ';
	@override String get pin_title => 'ZiqeX ପିନ୍';
	@override String get pin_active => 'ପିନ୍ ସକ୍ରିୟ ଅଛି';
	@override String get pin_setup => 'ଆପ୍ ଅନଲକ୍ କରିବା ପାଇଁ ଏକ ଅନନ୍ୟ ୪-ଅଙ୍କ ବିଶିଷ୍ଟ କୋଡ୍ ସେଟ୍ କରନ୍ତୁ';
	@override String get warning_title => 'ଅତ୍ୟଧିକ ଭୁଲ୍ ପ୍ରୟାସ';
	@override String get warning_sub => 'ଭୁଲ୍ ପିନ୍ ୧୦ ଥର ଦିଆଗଲେ, ZiqeX ସ୍ୱୟଂଚାଳିତ ଭାବେ ରିସେଟ୍ ହୋଇଯିବ। ଏହି ଡିଭାଇସରେ ସଂରକ୍ଷିତ ସମସ୍ତ ଡାଟା ସ୍ଥାୟୀ ଭାବେ ଡିଲିଟ୍ ହୋଇଯିବ';
	@override String get incomplete_title => 'ସୁରକ୍ଷା ସେଟ୍ ଅପ୍ ଅସମ୍ପୂର୍ଣ୍ଣ';
	@override String get incomplete_content => 'ଆପଣ ଆପ୍ ଲକ୍ ସକ୍ଷମ କରିଛନ୍ତି, କିନ୍ତୁ ପିନ୍ କିମ୍ବା ବାୟୋମେଟ୍ରିକ୍ସ ସେଟ୍ କରିନାହାନ୍ତି। କୌଣସି ଏକ ପଦ୍ଧତି ସେଟ୍ ଅପ୍ ନହେବା ପର୍ଯ୍ୟନ୍ତ ଆପ୍ ଲକ୍ ଅକ୍ଷମ ରହିବ।';
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
	@override String get legendModel => 'ମଡେଲ୍ ୱେଟ୍';
	@override String get legendFree => 'ଖାଲି ସ୍ଥାନ';
	@override String get mgmt => 'ମଡେଲ୍ ପରିଚାଳନା';
	@override String get deleteModels => 'ଡାଉନଲୋଡ୍ କରାଯାଇଥିବା ସମସ୍ତ ମଡେଲ୍ ଡିଲିଟ୍ କରନ୍ତୁ';
	@override String get deleteModelsSub => 'ଏହି ଡିଭାଇସରୁ ସମସ୍ତ ସ୍ଥାନୀୟ ମଡେଲ୍ ୱେଟ୍ ଏବଂ ପାରାମିଟର୍ ସମ୍ପୂର୍ଣ୍ଣ ଭାବେ ହଟାନ୍ତୁ।';
	@override String get selectDelete => 'ଡିଲିଟ୍ କରିବା ପାଇଁ ମଡେଲ୍ ବାଛନ୍ତୁ';
	@override String get autoDelete => 'ଏହାଠାରୁ ପୁରୁଣା ଚାଟ୍‌ଗୁଡ଼ିକୁ ସ୍ୱୟଂଚାଳିତ ଭାବେ ଡିଲିଟ୍ କରନ୍ତୁ:';
	@override String get autoDeleteSub => 'ଏହି ସେଟିଂ ସମସ୍ତ ଅନଲିଙ୍କ୍ ହୋଇଥିବା ବାର୍ତ୍ତାଳାପ ମୋଡ୍‌ରେ ପ୍ରଯୁଜ୍ୟ।';
	@override String get modes => 'ମୋଡ୍‌ଗୁଡ଼ିକ';
	@override String get noData => 'କୌଣସି ସକ୍ରିୟ ଚାଟ୍ ଡାଟା ନାହିଁ';
	@override String get deleteAll => 'ସମସ୍ତ ଡାଟା ଡିଲିଟ୍ କରନ୍ତୁ';
	@override String get authReq => 'ଆପ୍ ଲକ୍ ପାଇଁ ପୁନଃ-ପ୍ରମାଣୀକରଣ ଆବଶ୍ୟକ';
	@override String get viewChats => 'ଚାଟ୍‌ଗୁଡ଼ିକ ଦେଖନ୍ତୁ';
	@override String get deleteAllPillar => 'ସବୁ ଡିଲିଟ୍ କରନ୍ତୁ';
	@override String get space => 'ସ୍ଥାନ:';
	@override String get activeInstances => 'ସକ୍ରିୟ ଇନ୍‌ଷ୍ଟାନ୍ସ:';
}

// Path: pin_setup
class _StringsPinSetupOr extends _StringsPinSetupEn {
	_StringsPinSetupOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '୪-ଅଙ୍କ ବିଶିଷ୍ଟ ପିନ୍ ସେଟ୍ କରନ୍ତୁ';
	@override String get subtitle_setup => 'ଆପ୍ ଆକ୍ସେସ୍ କରିବା ପାଇଁ ଏକ ସୁରକ୍ଷିତ କୋଡ୍ ସୃଷ୍ଟି କରନ୍ତୁ';
	@override String get title_confirm => 'ପିନ୍ ନିଶ୍ଚିତ କରନ୍ତୁ';
	@override String get subtitle_confirm => 'ଯାଞ୍ଚ କରିବା ପାଇଁ ଆପଣଙ୍କ ୪-ଅଙ୍କ କୋଡ୍ ପୁନର୍ବାର ପ୍ରବେଶ କରନ୍ତୁ';
	@override String get title_verify => 'ବର୍ତ୍ତମାନର ପିନ୍ ପ୍ରବେଶ କରନ୍ତୁ';
	@override String get subtitle_verify => 'ଜାରି ରଖିବା ପାଇଁ ଆପଣଙ୍କ ବର୍ତ୍ତମାନର କୋଡ୍ ପ୍ରବେଶ କରନ୍ତୁ';
	@override String get error_mismatch => 'ପିନ୍‌ଗୁଡ଼ିକ ମେଳ ହେଉନାହିଁ। ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';
	@override String get error_incorrect => 'ଭୁଲ୍ ପିନ୍। ଦୟାକରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';
	@override String get snack_success => 'ପିନ୍ ସଫଳତାର ସହିତ ସେଟ୍ ହୋଇଛି';
}

// Path: pin_mgmt
class _StringsPinMgmtOr extends _StringsPinMgmtEn {
	_StringsPinMgmtOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ଆପ୍-ନିର୍ଦ୍ଦିଷ୍ଟ ପିନ୍';
	@override String get change_title => 'ପିନ୍ ପରିବର୍ତ୍ତନ କରନ୍ତୁ';
	@override String get change_sub => 'ଆପଣଙ୍କ ୪-ଅଙ୍କ ବିଶିଷ୍ଟ ZiqeX ସୁରକ୍ଷା କୋଡ୍ ଅପଡେଟ୍ କରନ୍ତୁ';
	@override String get remove_title => 'ପିନ୍ ହଟାନ୍ତୁ';
	@override String get remove_sub => 'ZiqeX ପାଇଁ ପିନ୍ ଆକ୍ସେସ୍ ବନ୍ଦ କରନ୍ତୁ';
	@override String get snack_removed => 'ପିନ୍ ସଫଳତାର ସହିତ ହଟାଯାଇଛି';
}

// Path: lang_legacy
class _StringsLangLegacyOr extends _StringsLangLegacyEn {
	_StringsLangLegacyOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'କେଉଁ ଭାଷା\n';
	@override String get title2 => 'ନିଜର ପରି ଲାଗେ?';
	@override String get subtitle => 'ଆପଣଙ୍କ ମାତୃଭାଷାରେ ଭଏସ୍, ଟେକ୍ସଟ୍ ଏବଂ ଉତ୍ତର। ଯେକୌଣସି ସମୟରେ ପରିବର୍ତ୍ତନ କରନ୍ତୁ।';
	@override String get first_reply => 'ପ୍ରଥମ ଉତ୍ତର ଏହିପରି ହେବ';
	@override String script_info({required Object lang}) => '${lang} - ଆପଣଙ୍କ ଲିପିରେ ଲିଖିତ ଏବଂ କଥିତ';
	@override String get continueBtn => 'ଜାରି ରଖନ୍ତୁ';
}

// Path: model_mgmt
class _StringsModelMgmtOr extends _StringsModelMgmtEn {
	_StringsModelMgmtOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ମଡେଲ ପରିଚାଳନା';
	@override String get subtitle => 'ସ୍ଥାନୀୟ ଏଜ୍ AI ଭାଷା ମଡେଲଗୁଡିକ କନଫିଗର୍ କରନ୍ତୁ';
	@override String get status_loaded => 'ଲୋଡ୍ ହୋଇଛି';
	@override String get status_unloaded => 'ଲୋଡ୍ ହୋଇନାହିଁ';
	@override String get status_loading => 'ଲୋଡ୍ ହେଉଛି...';
	@override String size({required Object size}) => 'ଆକାର: ${size}';
	@override String get load => 'ଲୋଡ୍ କରନ୍ତୁ';
	@override String get unload => 'ଅନଲୋଡ୍ କରନ୍ତୁ';
	@override String get download => 'ଡାଉନଲୋଡ୍';
	@override String get delete => 'ଡିଲିଟ୍ କରନ୍ତୁ';
	@override String get brahm_2b_desc => 'ମୋବାଇଲ୍ ଡିଭାଇସରେ କମ୍-ଲେଟେନ୍ସି ଟେକ୍ସଟ୍ ସଂପୂର୍ଣ୍ଣ ଏବଂ ଚାଟ୍ ପାଇଁ ପରିକଳ୍ପିତ ଅଲ୍ଟ୍ରା-ଫାଷ୍ଟ କମ୍ପାକ୍ଟ ଏଜ୍ ମଡେଲ୍ |';
	@override String get brahm_5b_desc => 'ଉନ୍ନତ କାର୍ଯ୍ୟ ସଠିକତା ଏବଂ ଜଟିଳ ନିର୍ଦ୍ଦେଶାତ୍ମକ ପ୍ରଦର୍ଶନ ପ୍ରଦାନ କରୁଥିବା ସନ୍ତୁଳିତ ଯୁକ୍ତି ମଡେଲ୍ |';
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
	@override String get voice_mode_sub => 'ਆਪਣੀ ਭਾਸ਼ਾ ਵਿੱਚ ਗੱਲ ਕਰੋ';
	@override String get ask_image => 'ਤਸਵੀਰ ਬਾਰੇ ਪੁੱਛੋ';
	@override String get ask_image_sub => 'ਫਾਰਮ, ਲੇਬਲ, ਸਕ੍ਰਿਪਟਾਂ';
	@override String get panchang => 'ਪੰਚਾਂਗ';
	@override String get panchang_sub => 'ਅੱਜ ਦੀ ਤਿਥੀ ਅਤੇ ਮੁਹੂਰਤ';
	@override String get ephemeral => 'ਥੋੜ੍ਹੇ ਸਮੇਂ ਲਈ';
	@override String get ephemeral_sub => 'ਬਿਨਾਂ ਕੋਈ ਨਿਸ਼ਾਨ ਛੱਡੇ ਗੱਲ ਕਰੋ';
	@override String get recent => 'ਹਾਲੀਆ';
	@override String get home => 'ਹੋਮ';
	@override String get chat => 'ਚੈਟ';
	@override String get library => 'ਲਾਇਬ੍ਰੇਰੀ';
	@override String get you => 'ਤੁਸੀਂ';
	@override String get settings_pref => 'ਪ੍ਰੋਫਾਈਲ ਸੈਟਿੰਗਾਂ';
	@override String get preferences => 'ਪਸੰਦਾਂ ਅਤੇ ਸੁਰੱਖਿਆ';
	@override String get language => 'ਭਾਸ਼ਾ';
	@override String get security => 'ਸੁਰੱਖਿਆ';
	@override String get security_sub => 'ਐਪ ਲੌਕ · 2FA';
	@override String get privacy_tiers => 'ਪ੍ਰਾਈਵੇਸੀ ਮੋਡ';
	@override String get privacy_tiers_sub => '1 ਸਰਗਰਮ \'ZiqeX ਸੁਣਨ ਮੋਡ\'';
	@override String get storage_purge => 'ਡੇਟਾ ਅਤੇ ਸਟੋਰੇਜ';
	@override String get storage_purge_sub => 'ਡਿਵਾਈਸ \'ਤੇ 184 KB';
	@override String get ephemeral_mode => 'ਗੁਪਤ ਚੈਟ';
	@override String get about => 'ਸਿਸਟਮ ਜਾਣਕਾਰੀ';
	@override String get reset_prototype => 'ਪ੍ਰੋਟੋਟਾਈਪ ਰੀਸੈਟ ਕਰੋ';
	@override String get built_in_india => 'ਭਾਰਤ ਵਿੱਚ ਬਣਿਆ। ਦੁਨੀਆ ਲਈ।';
	@override String get library_sub => 'ਹਰ ਮਾਡਲ · ਹਰ ਮੈਮੋਰੀ · ਇਸ ਡਿਵਾਈਸ \'ਤੇ';
	@override String get on_this_device => 'ਇਸ ਡਿਵਾਈਸ \'ਤੇ';
	@override String get active => 'ਸਰਗਰਮ';
	@override String get add => '+ ਜੋੜੋ';
	@override String get storage_used => 'ਵਰਤੀ ਗਈ ਸਟੋਰੇਜ';
	@override String get health_question => 'ਸਿਹਤ ਸੰਬੰਧੀ ਸਵਾਲ';
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
	@override late final _StringsModelMgmtPa model_mgmt = _StringsModelMgmtPa._(_root);
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
	@override String get dark_mode_sub => 'ਲਾਈਟ ਅਤੇ ਡਾਰਕ ਵਰਕਸਪੇਸ ਥੀਮ ਵਿਚਕਾਰ ਬਦਲੋ';
	@override String get data_mgmt => 'ਚੈਟ ਡੇਟਾ ਪ੍ਰਬੰਧਨ ਅਤੇ ਸਟੋਰੇਜ';
	@override String get data_mgmt_sub => 'ਆਪਣੀ ਗੱਲਬਾਤ ਦੀ ਹਿਸਟਰੀ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ';
	@override String get app_lock => 'ਐਪ ਲੌਕ';
	@override String get app_lock_sub => 'ਆਪਣੇ ਫਿੰਗਰਪ੍ਰਿੰਟ, ਚਿਹਰੇ ਜਾਂ ਪਿੰਨ ਨਾਲ ZiqeX ਨੂੰ ਸੁਰੱਖਿਅਤ ਕਰੋ';
	@override String get incognito_sub => 'ਹਿਸਟਰੀ ਵਿੱਚ ਸੁਰੱਖਿਅਤ ਕੀਤੇ ਬਿਨਾਂ ਚੈਟ ਕਰੋ। ਚੈਟ ਤੋਂ ਬਾਹਰ ਆਉਣ ਤੋਂ ਬਾਅਦ ਇਸਨੂੰ ਮੁੜ ਪ੍ਰਾਪਤ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ';
	@override String get version => 'V0.1 • ਸਰਵਭੌਮ • ਆਨ-ਡਿਵਾਈਸ';
}

// Path: welcome
class _StringsWelcomePa extends _StringsWelcomeEn {
	_StringsWelcomePa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX ਨੂੰ ਮਿਲੋ';
	@override String get at_edge => 'ਐਜ \'ਤੇ ਬੁੱਧੀਮਤਾ';
	@override String get private => 'ਨਿੱਜੀ ਅਤੇ ਐਜ AI\nZenteiQ ਦੁਆਰਾ';
	@override String get begin => 'ਆਨਬੋਰਡਿੰਗ ਸ਼ੁਰੂ ਕਰੋ';
}

// Path: info
class _StringsInfoPa extends _StringsInfoEn {
	_StringsInfoPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਤੁਹਾਡੇ ਆਲੇ-ਦੁਆਲੇ ਲਈ ਤਿਆਰ ਕੀਤੀ ਬੁੱਧੀਮਤਾ';
	@override String get subtitle => 'ਪ੍ਰਾਈਵੇਸੀ, ਚੋਣ ਅਤੇ ਨਿਯੰਤਰਣ ਦੇ ਨਾਲ ਤਿਆਰ ਕੀਤਾ ਗਿਆ ਉਪਯੋਗੀ AI।';
	@override String get privacy_title => 'ਪ੍ਰਾਈਵੇਸੀ ਪਹਿਲਾਂ';
	@override String get privacy_desc => 'ZiqeX ਨੂੰ ਬੁੱਧੀਮਤਾ ਅਤੇ ਤੁਹਾਡੀ ਜਾਣਕਾਰੀ ਨੂੰ ਤੁਹਾਡੇ ਡਿਵਾਈਸ ਦੇ ਨੇੜੇ ਰੱਖਣ ਲਈ ਤਿਆਰ ਕੀਤਾ ਗਿਆ ਹੈ।';
	@override String get hand_title => 'ਤੁਹਾਡੇ ਹੱਥ ਵਿੱਚ ਬੁੱਧੀਮਤਾ';
	@override String get hand_desc => 'ਰੋਜ਼ਾਨਾ ਦੀ ਬੁੱਧੀਮਤਾ, ਸਿੱਧੀ ਤੁਹਾਡੇ ਡਿਵਾਈਸ \'ਤੇ ਉਪਲਬਧ।';
	@override String get control_title => 'ਤੁਹਾਡਾ ਡੇਟਾ। ਤੁਹਾਡਾ ਨਿਯੰਤਰਣ।';
	@override String get control_desc => 'ਚੁਣੋ ਕਿ ਕੀ ਰੱਖਣਾ ਹੈ, ਸਟੋਰ ਕੀਤੇ ਡੇਟਾ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ ਅਤੇ ਜਿਸਦੀ ਹੁਣ ਲੋੜ ਨਹੀਂ ਹੈ ਉਸਨੂੰ ਮਿਟਾਓ।';
	@override String get place_title => 'ਹਰ ਥਾਂ ਲਈ ਤਿਆਰ ਕੀਤਾ ਗਿਆ';
	@override String get place_desc => 'ਵੱਖ-ਵੱਖ ਭਾਸ਼ਾਵਾਂ, ਡਿਵਾਈਸਾਂ ਅਤੇ ਲੋਕਾਂ ਵੱਲੋਂ ਤਕਨਾਲੋਜੀ ਦੀ ਵਰਤੋਂ ਕਰਨ ਦੇ ਵੱਖ-ਵੱਖ ਤਰੀਕਿਆਂ ਨੂੰ ਧਿਆਨ ਵਿੱਚ ਰੱਖ ਕੇ ਬਣਾਇਆ ਗਿਆ।';
	@override String get footer => 'ਤੁਹਾਡੀ ਬੁੱਧੀਮਤਾ। ਤੁਹਾਡਾ ਡਿਵਾਈਸ। ਤੁਹਾਡਾ ਨਿਯੰਤਰਣ।';
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
	@override String get appBar => 'ਪਿਲਰਾਂ ਦੀ ਚੋਣ';
	@override String get title => 'ਆਪਣੇ ਪਿਲਰ ਚੁਣੋ';
	@override String get subtitle => 'ਉਹ ਮੁੱਖ ਸਮਰੱਥਾਵਾਂ ਚੁਣੋ ਜਿਨ੍ਹਾਂ \'ਤੇ ਤੁਸੀਂ ਧਿਆਨ ਕੇਂਦਰਿਤ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ।';
	@override String get general => 'ਆਮ';
	@override String get operational => 'ਕਾਰਜਕਾਰੀ';
	@override String get personal => 'ਨਿੱਜੀ ਸਲਾਹ';
	@override String get workplace => 'ਕੰਮਕਾਜ ਦੀ ਥਾਂ';
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
	@override String get title1 => 'BrahmAI ਨੂੰ\nਤੁਹਾਡੇ ਕੋਲ ';
	@override String get title2 => 'ਲਿਆ ਰਹੇ ਹਾਂ।';
	@override String get subtitle => 'ਇਹ ਸਿਰਫ਼ ਇੱਕ ਵਾਰ ਹੋਵੇਗਾ। ਇਸ ਤੋਂ ਬਾਅਦ, ਅਸੀਂ ਤੁਹਾਡੇ ਡੇਟਾ ਨੂੰ ਕਦੇ ਵੀ ਨਹੀਂ ਛੂਹਾਂਗੇ।';
	@override String get modelName => 'BrahmAI · 2B';
	@override String get modelSpecs => '2.0 B params · Q4_K_M · v0.9';
	@override String get ready => 'ਤਿਆਰ';
	@override String get validating => 'ਜਾਂਚ ਕੀਤੀ ਜਾ ਰਹੀ ਹੈ...';
	@override String get langs => '14 ਭਾਸ਼ਾਵਾਂ';
	@override String get toks => '~18 tok/s';
	@override String get ttft => '~140 ms TTFT';
	@override String error({required Object error}) => 'ਗਲਤੀ: ${error}';
	@override String get retry => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';
	@override String get open => 'BrahmAI ਖੋਲ੍ਹੋ';
	@override String get download => 'ਮਾਡਲ ਡਾਊਨਲੋਡ ਕਰੋ';
	@override String get later => 'ਬਾਅਦ ਵਿੱਚ ਸੈੱਟ ਅੱਪ ਕਰੋ';
	@override String get continueSub => 'ਮਾਡਲ ਡਾਊਨਲੋਡ ਕੀਤੇ ਬਿਨਾਂ ਜਾਰੀ ਰੱਖੋ। ਜਦੋਂ ਤੁਸੀਂ ਤਿਆਰ ਹੋਵੋ ਤਾਂ ਬਾਅਦ ਵਿੱਚ ਇੱਕ ਮਾਡਲ ਜੋੜ ਸਕਦੇ ਹੋ';
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
	@override String get model_desc => 'ਉਪਲਬਧ AI ਮਾਡਲਾਂ ਨੂੰ ਖੋਜੋ ਅਤੇ ਪ੍ਰਬੰਧਿਤ ਕਰੋ';
	@override String get saved_title => 'ਸੁਰੱਖਿਅਤ ਕੀਤੇ';
	@override String get saved_desc => 'ਤੁਹਾਡੀ ਪ੍ਰੌਂਪਟ ਲਾਇਬ੍ਰੇਰੀ';
	@override String get skills_title => 'ਹੁਨਰ';
	@override String get skills_desc => 'AI ਸਮਰੱਥਾਵਾਂ';
	@override String get pillars_title => 'ਪਿਲਰ';
	@override String get pillars_desc => 'ਮੁੱਖ ਸਮਰੱਥਾਵਾਂ';
}

// Path: biometric
class _StringsBiometricPa extends _StringsBiometricEn {
	_StringsBiometricPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get vault => 'ਵੌਲਟ ਸੁਰੱਖਿਆ';
	@override String get setupTitle => 'ਸੁਰੱਖਿਅਤ ਲੌਕ ਸੈੱਟਅੱਪ';
	@override String get setupSub => 'ਆਪਣੀ ਪਸੰਦੀਦਾ ਪ੍ਰਮਾਣੀਕਰਨ ਵਿਧੀ ਨਾਲ ਆਪਣੇ ਵੌਲਟ ਨੂੰ ਸੁਰੱਖਿਅਤ ਕਰੋ।';
	@override String get deviceTitle => 'ਡਿਵਾਈਸ ਬਾਇਓਮੈਟ੍ਰਿਕਸ';
	@override String get deviceSub => 'Face ID ਜਾਂ ਫਿੰਗਰਪ੍ਰਿੰਟ ਦੀ ਵਰਤੋਂ ਕਰੋ';
	@override String get pinTitle => 'ਐਪ-ਵਿਸ਼ੇਸ਼ ਪਿੰਨ';
	@override String get pinSub => 'ਇੱਕ ਵਿਲੱਖਣ 4-ਅੰਕਾਂ ਵਾਲਾ ਕੋਡ ਸੈੱਟ ਕਰੋ';
	@override String get dialogTitle => 'ਬਾਇਓਮੈਟ੍ਰਿਕ ਪਹੁੰਚ ਦੀ ਇਜਾਜ਼ਤ ਦਿਓ';
	@override String get dialogSub => 'ZiqeX ਨੂੰ ਅਨਲੌਕ ਕਰਨ ਲਈ ਆਪਣੇ ਫਿੰਗਰਪ੍ਰਿੰਟ ਜਾਂ ਡਿਵਾਈਸ ਦੇ ਚਿਹਰਾ ਪਛਾਣ ਫੀਚਰ ਦੀ ਵਰਤੋਂ ਕਰੋ';
	@override String get cancel => 'ਰੱਦ ਕਰੋ';
	@override String get allow => 'ਬਾਇਓਮੈਟ੍ਰਿਕਸ ਦੀ ਇਜਾਜ਼ਤ ਦਿਓ';
}

// Path: security_screen
class _StringsSecurityScreenPa extends _StringsSecurityScreenEn {
	_StringsSecurityScreenPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ਐਪ ਸੁਰੱਖਿਆ';
	@override String get global_protection => 'ਵਿਆਪਕ ਸੁਰੱਖਿਆ';
	@override String get app_lock => 'ਐਪ ਲੌਕ';
	@override String get app_lock_sub => 'ZiqeX ਖੋਲ੍ਹਣ ਲਈ ਪ੍ਰਮਾਣੀਕਰਨ ਦੀ ਲੋੜ ਹੈ';
	@override String get auth_methods => 'ਪ੍ਰਮਾਣੀਕਰਨ ਵਿਧੀਆਂ';
	@override String get biometrics_title => 'ਡਿਵਾਈਸ ਬਾਇਓਮੈਟ੍ਰਿਕਸ';
	@override String get biometrics_sub => 'ਆਪਣੇ ਫਿੰਗਰਪ੍ਰਿੰਟ ਜਾਂ ਚਿਹਰੇ ਨਾਲ ਤੁਰੰਤ ਅਨਲੌਕ ਕਰੋ';
	@override String get pin_title => 'ZiqeX ਪਿੰਨ';
	@override String get pin_active => 'ਪਿੰਨ ਸਰਗਰਮ ਹੈ';
	@override String get pin_setup => 'ਐਪ ਨੂੰ ਅਨਲੌਕ ਕਰਨ ਲਈ ਇੱਕ ਵਿਲੱਖਣ 4-ਅੰਕਾਂ ਵਾਲਾ ਕੋਡ ਸੈੱਟ ਕਰੋ';
	@override String get warning_title => 'ਬਹੁਤ ਜ਼ਿਆਦਾ ਗਲਤ ਕੋਸ਼ਿਸ਼ਾਂ';
	@override String get warning_sub => 'ਜੇਕਰ ਗਲਤ ਪਿੰਨ 10 ਵਾਰ ਦਰਜ ਕੀਤਾ ਜਾਂਦਾ ਹੈ, ਤਾਂ ZiqeX ਆਪਣੇ ਆਪ ਰੀਸੈਟ ਹੋ ਜਾਵੇਗਾ। ਇਸ ਡਿਵਾਈਸ \'ਤੇ ਸਟੋਰ ਕੀਤਾ ਸਾਰਾ ਡੇਟਾ ਸਥਾਈ ਤੌਰ \'ਤੇ ਮਿਟਾ ਦਿੱਤਾ ਜਾਵੇਗਾ';
	@override String get incomplete_title => 'ਸੁਰੱਖਿਆ ਸੈੱਟਅੱਪ ਅਧੂਰਾ ਹੈ';
	@override String get incomplete_content => 'ਤੁਸੀਂ ਐਪ ਲੌਕ ਚਾਲੂ ਕੀਤਾ ਹੈ, ਪਰ ਪਿੰਨ ਜਾਂ ਬਾਇਓਮੈਟ੍ਰਿਕਸ ਸੈੱਟ ਨਹੀਂ ਕੀਤੇ ਹਨ। ਜਦੋਂ ਤੱਕ ਕੋਈ ਇੱਕ ਵਿਧੀ ਕੌਂਫਿਗਰ ਨਹੀਂ ਕੀਤੀ ਜਾਂਦੀ, ਐਪ ਲੌਕ ਅਯੋਗ ਰਹੇਗਾ।';
	@override String get got_it => 'ਸਮਝ ਗਿਆ';
}

// Path: data
class _StringsDataPa extends _StringsDataEn {
	_StringsDataPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ਡੇਟਾ ਪ੍ਰਬੰਧਨ ਅਤੇ\nਸਟੋਰੇਜ';
	@override String get summary => 'ਸਟੋਰੇਜ ਦਾ ਸਾਰ';
	@override String get totalUsed => 'ਕੁੱਲ ਵਰਤੀ ਗਈ: ';
	@override String get legendModel => 'ਮਾਡਲ ਵਜ਼ਨ';
	@override String get legendFree => 'ਖਾਲੀ ਥਾਂ';
	@override String get mgmt => 'ਮਾਡਲ ਪ੍ਰਬੰਧਨ';
	@override String get deleteModels => 'ਸਾਰੇ ਡਾਊਨਲੋਡ ਕੀਤੇ ਮਾਡਲ ਮਿਟਾਓ';
	@override String get deleteModelsSub => 'ਇਸ ਡਿਵਾਈਸ ਤੋਂ ਸਾਰੇ ਸਥਾਨਕ ਮਾਡਲ ਵਜ਼ਨ ਅਤੇ ਪੈਰਾਮੀਟਰ ਪੂਰੀ ਤਰ੍ਹਾਂ ਹਟਾਓ।';
	@override String get selectDelete => 'ਮਿਟਾਉਣ ਲਈ ਮਾਡਲ ਚੁਣੋ';
	@override String get autoDelete => 'ਇਸ ਤੋਂ ਪੁਰਾਣੀਆਂ ਚੈਟਾਂ ਆਪਣੇ ਆਪ ਮਿਟਾਓ:';
	@override String get autoDeleteSub => 'ਇਹ ਸੈਟਿੰਗ ਸਾਰੇ ਅਨਲਿੰਕ ਕੀਤੇ ਗਏ ਗੱਲਬਾਤ ਮੋਡਾਂ \'ਤੇ ਲਾਗੂ ਹੁੰਦੀ ਹੈ।';
	@override String get modes => 'ਮੋਡ';
	@override String get noData => 'ਕੋਈ ਸਰਗਰਮ ਚੈਟ ਡੇਟਾ ਨਹੀਂ ਹੈ';
	@override String get deleteAll => 'ਸਾਰਾ ਡੇਟਾ ਮਿਟਾਓ';
	@override String get authReq => 'ਐਪ ਲੌਕ ਲਈ ਮੁੜ-ਪ੍ਰਮਾਣੀਕਰਨ ਲੋੜੀਂਦਾ ਹੈ';
	@override String get viewChats => 'ਚੈਟਾਂ ਦੇਖੋ';
	@override String get deleteAllPillar => 'ਸਭ ਮਿਟਾਓ';
	@override String get space => 'ਥਾਂ:';
	@override String get activeInstances => 'ਸਰਗਰਮ ਇੰਸਟੈਂਸ:';
}

// Path: pin_setup
class _StringsPinSetupPa extends _StringsPinSetupEn {
	_StringsPinSetupPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '4-ਅੰਕਾਂ ਵਾਲਾ ਪਿੰਨ ਸੈੱਟ ਕਰੋ';
	@override String get subtitle_setup => 'ਐਪ ਤੱਕ ਪਹੁੰਚ ਕਰਨ ਲਈ ਇੱਕ ਸੁਰੱਖਿਅਤ ਕੋਡ ਬਣਾਓ';
	@override String get title_confirm => 'ਪਿੰਨ ਦੀ ਪੁਸ਼ਟੀ ਕਰੋ';
	@override String get subtitle_confirm => 'ਪੁਸ਼ਟੀ ਕਰਨ ਲਈ ਆਪਣਾ 4-ਅੰਕਾਂ ਵਾਲਾ ਕੋਡ ਦੁਬਾਰਾ ਦਰਜ ਕਰੋ';
	@override String get title_verify => 'ਮੌਜੂਦਾ ਪਿੰਨ ਦਰਜ ਕਰੋ';
	@override String get subtitle_verify => 'ਜਾਰੀ ਰੱਖਣ ਲਈ ਆਪਣਾ ਮੌਜੂਦਾ ਕੋਡ ਦਰਜ ਕਰੋ';
	@override String get error_mismatch => 'ਪਿੰਨ ਮੇਲ ਨਹੀਂ ਖਾਂਦੇ। ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';
	@override String get error_incorrect => 'ਗਲਤ ਪਿੰਨ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';
	@override String get snack_success => 'ਪਿੰਨ ਸਫਲਤਾਪੂਰਵਕ ਸੈੱਟ ਹੋ ਗਿਆ ਹੈ';
}

// Path: pin_mgmt
class _StringsPinMgmtPa extends _StringsPinMgmtEn {
	_StringsPinMgmtPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ਐਪ-ਵਿਸ਼ੇਸ਼ ਪਿੰਨ';
	@override String get change_title => 'ਪਿੰਨ ਬਦਲੋ';
	@override String get change_sub => 'ਆਪਣਾ 4-ਅੰਕਾਂ ਵਾਲਾ ZiqeX ਸੁਰੱਖਿਆ ਕੋਡ ਅੱਪਡੇਟ ਕਰੋ';
	@override String get remove_title => 'ਪਿੰਨ ਹਟਾਓ';
	@override String get remove_sub => 'ZiqeX ਲਈ ਪਿੰਨ ਰਾਹੀਂ ਪਹੁੰਚ ਬੰਦ ਕਰੋ';
	@override String get snack_removed => 'ਪਿੰਨ ਸਫਲਤਾਪੂਰਵਕ ਹਟਾ ਦਿੱਤਾ ਗਿਆ ਹੈ';
}

// Path: lang_legacy
class _StringsLangLegacyPa extends _StringsLangLegacyEn {
	_StringsLangLegacyPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'ਕਿਹੜੀ ਭਾਸ਼ਾ\n';
	@override String get title2 => 'ਤੁਹਾਨੂੰ ਆਪਣੀ ਲੱਗਦੀ ਹੈ?';
	@override String get subtitle => 'ਤੁਹਾਡੀ ਮਾਤ੍ਰ-ਭਾਸ਼ਾ ਵਿੱਚ ਆਵਾਜ਼, ਟੈਕਸਟ ਅਤੇ ਜਵਾਬ। ਇਸਨੂੰ ਕਿਸੇ ਵੀ ਸਮੇਂ ਬਦਲੋ।';
	@override String get first_reply => 'ਪਹਿਲਾ ਜਵਾਬ ਇਸ ਤਰ੍ਹਾਂ ਹੋਵੇਗਾ';
	@override String script_info({required Object lang}) => '${lang} - ਤੁਹਾਡੀ ਲਿਪੀ ਵਿੱਚ ਲਿਖਿਆ ਅਤੇ ਬੋਲਿਆ ਗਿਆ';
	@override String get continueBtn => 'ਜਾਰੀ ਰੱਖੋ';
}

// Path: model_mgmt
class _StringsModelMgmtPa extends _StringsModelMgmtEn {
	_StringsModelMgmtPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ਮਾਡਲ ਪ੍ਰਬੰਧਨ';
	@override String get subtitle => 'ਸਥਾਨਕ ਐਜ AI ਭਾਸ਼ਾ ਮਾਡਲਾਂ ਨੂੰ ਕੌਂਫਿਗਰ ਕਰੋ';
	@override String get status_loaded => 'ਲੋਡ ਕੀਤਾ ਗਿਆ';
	@override String get status_unloaded => 'ਲੋਡ ਨਹੀਂ ਹੋਇਆ';
	@override String get status_loading => 'ਲੋਡ ਹੋ ਰਿਹਾ ਹੈ...';
	@override String size({required Object size}) => 'ਆਕਾਰ: ${size}';
	@override String get load => 'ਲੋਡ ਕਰੋ';
	@override String get unload => 'ਅਨਲੋਡ ਕਰੋ';
	@override String get download => 'ਡਾਊਨਲੋડ';
	@override String get delete => 'ਮਿਟਾਓ';
	@override String get brahm_2b_desc => 'ਮੋਬਾਈਲ ਡਿਵਾਈਸਾਂ \'ਤੇ ਘੱਟ ਦੇਰੀ ਵਾਲੇ ਟੈਕਸਟ ਨੂੰ ਪੂਰਾ ਕਰਨ ਅਤੇ ਚੈਟ ਲਈ ਤਿਆਰ ਕੀਤਾ ਗਿਆ ਅਲਟਰਾ-ਫਾਸਟ ਕੰਪੈਕਟ ਐਜ ਮਾਡਲ।';
	@override String get brahm_5b_desc => 'ਉੱਨਤ ਕਾਰਜ ਸ਼ੁੱਧਤਾ ਅਤੇ ਗੁੰਝલਦਾਰ ਨਿਰਦੇਸ਼ਕ ਪ੍ਰਦਰਸ਼ਨ ਦੀ ਪੇਸ਼ਕਸ਼ ਕਰਨ ਵਾਲਾ ਸੰਤੁਲਿਤ ਰੀਜ਼ਨਿੰਗ ਮਾਡਲ।';
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
	@override String get mind_today => 'இன்று உங்கள் மனதில் என்ன இருக்கிறது?';
	@override String get on_device_only => 'இந்த சாதனத்தில் மட்டுமே';
	@override String get offline => 'ஆஃப்லைன்';
	@override String get start_something => 'தொடங்குங்கள்';
	@override String get ask_anything => 'எதையும் கேளுங்கள்';
	@override String get ask_anything_sub => 'உடல்நலம் · சட்டம் · தனிப்பட்டது · வேலை';
	@override String get voice_mode => 'குரல் முறை';
	@override String get voice_mode_sub => 'உங்கள் மொழியில் பேசுங்கள்';
	@override String get ask_image => 'படத்தைப் பற்றி கேளுங்கள்';
	@override String get ask_image_sub => 'படிவம் · லேபிள் · உரை';
	@override String get panchang => 'பஞ்சாங்கம்';
	@override String get panchang_sub => 'இன்றைய திதி மற்றும் முகூர்த்தம்';
	@override String get ephemeral => 'தற்காலிகம்';
	@override String get ephemeral_sub => 'எந்தத் தடயமும் இல்லாமல்';
	@override String get recent => 'சமீபத்தியவை';
	@override String get home => 'முகப்பு';
	@override String get chat => 'அரட்டை';
	@override String get library => 'நூலகம்';
	@override String get you => 'நீங்கள்';
	@override String get settings_pref => 'சுயவிவர அமைப்புகள்';
	@override String get preferences => 'விருப்பத்தேர்வுகள்';
	@override String get language => 'மொழி';
	@override String get security => 'பாதுகாப்பு';
	@override String get security_sub => 'செயலி பூட்டு · 2FA';
	@override String get privacy_tiers => 'தனியுரிமை அடுக்குகள்';
	@override String get privacy_tiers_sub => '2 செயல்பாட்டில் உள்ளன · ZiqeX AI எவ்வாறு செயல்படுகிறது';
	@override String get storage_purge => 'சேமிப்பு மற்றும் நீக்கம்';
	@override String get storage_purge_sub => 'சாதனத்தில் 184 KB';
	@override String get ephemeral_mode => 'தற்காலிக முறை';
	@override String get about => 'பற்றி';
	@override String get reset_prototype => 'மாதிரியை மீட்டமைக்கவும்';
	@override String get built_in_india => 'இந்தியாவில் உருவாக்கப்பட்டது. உலகிற்காக.';
	@override String get library_sub => 'ஒவ்வொரு மாதிரியும் · ஒவ்வொரு நினைவகமும் · இந்த சாதனத்தில்';
	@override String get on_this_device => 'இந்த சாதனத்தில்';
	@override String get active => 'செயலில்';
	@override String get add => '+ சேர்க்கவும்';
	@override String get storage_used => 'பயன்படுத்தப்பட்ட சேமிப்பு';
	@override String get health_question => 'சுகாதாரக் கேள்வி';
	@override String get family => 'குடும்பம்';
	@override String get work => 'வேலை';
	@override String get just_thinking => 'சும்மா யோசித்துக்கொண்டிருக்கிறேன்';
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
	@override late final _StringsModelMgmtTa model_mgmt = _StringsModelMgmtTa._(_root);
}

// Path: profile
class _StringsProfileTa extends _StringsProfileEn {
	_StringsProfileTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get access => 'அணுகல்';
	@override String get privacy => 'தனியுரிமை';
	@override String get system => 'அமைப்பு';
	@override String get security_active => 'பாதுகாப்பு செயல்பாட்டில் உள்ளது';
	@override String get security_inactive => 'பாதுகாப்பு செயல்பாட்டில் இல்லை';
	@override String get dark_mode => 'இருண்ட பயன்முறை';
	@override String get dark_mode_sub => 'ஒளி மற்றும் இருண்ட தீம்களுக்கு இடையே மாறவும்';
	@override String get data_mgmt => 'தரவு மேலாண்மை';
	@override String get data_mgmt_sub => 'அரட்டை வரலாற்றை நிர்வகிக்கவும்';
	@override String get app_lock => 'செயலி பூட்டு';
	@override String get app_lock_sub => 'கைரேகை, முகம் அல்லது PIN மூலம் பாதுகாக்கவும்';
	@override String get incognito_sub => 'வரலாற்றில் சேமிக்காமல் அரட்டை அடிக்கவும். இதை மீட்டெடுக்க முடியாது';
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
	@override String get subtitle => 'தனியுரிமை மற்றும் முழுமையான கட்டுப்பாட்டுடன் கூடிய AI அனுபவம்.';
	@override String get privacy_title => 'தனியுரிமைக்கு முன்னுரிமை';
	@override String get privacy_desc => 'உங்கள் தகவல்கள் உங்கள் சாதனத்திலேயே பாதுகாப்பாக இருக்கும்.';
	@override String get hand_title => 'கைக்குள் நுண்ணறிவு';
	@override String get hand_desc => 'உங்கள் அன்றாட தேவைகளுக்கான நுண்ணறிவு உங்கள் சாதனத்திலேயே கிடைக்கும்.';
	@override String get control_title => 'முழுமையான கட்டுப்பாடு';
	@override String get control_desc => 'தேவையானவற்றை வைத்துக்கொண்டு, தேவையற்றவற்றை நீக்கலாம்.';
	@override String get place_title => 'அனைவருக்கும் ஏற்றது';
	@override String get place_desc => 'பல்வேறு மொழிகள் மற்றும் சாதனங்களுக்காக உருவாக்கப்பட்டது.';
	@override String get footer => 'உங்கள் நுண்ணறிவு. உங்கள் சாதனம். உங்கள் கட்டுப்பாடு.';
	@override String get setup => 'அமைப்பைத் தொடங்கவும்';
}

// Path: languageSelection
class _StringsLanguageSelectionTa extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'மொழித் தேர்வு';
	@override String get title => 'உங்கள் மொழியைத் தேர்ந்தெடுக்கவும்';
	@override String get subtitle => 'பயன்பாட்டின் இடைமுகத்திற்கான மொழியைத் தேர்ந்தெடுக்கவும்.';
	@override String get back => 'பின்னால்';
	@override String get continueBtn => 'தொடரவும்';
}

// Path: pillars
class _StringsPillarsTa extends _StringsPillarsEn {
	_StringsPillarsTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'தூண்களைத் தேர்வு செய்யவும்';
	@override String get title => 'உங்கள் தூண்களைத் தேர்ந்தெடுக்கவும்';
	@override String get subtitle => 'நீங்கள் கவனம் செலுத்த விரும்பும் முக்கிய திறன்களைத் தேர்ந்தெடுக்கவும்.';
	@override String get general => 'பொதுவானது';
	@override String get operational => 'செயல்பாட்டு';
	@override String get personal => 'தனிப்பட்ட ஆலோசனை';
	@override String get workplace => 'பணியிடம்';
	@override String get culture => 'கலாச்சாரம் மற்றும் குடும்பம்';
	@override String get journal => 'தினசரி குறிப்பேடு';
	@override String get back => 'பின்னால்';
	@override String get continueBtn => 'தொடரவும்';
}

// Path: modelDownload
class _StringsModelDownloadTa extends _StringsModelDownloadEn {
	_StringsModelDownloadTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI-ஐ\nஉங்கள் சாதனத்திற்கு ';
	@override String get title2 => 'கொண்டு வருகிறோம்.';
	@override String get subtitle => 'ஒரு முறை மட்டும் பதிவிறக்கவும். இதற்குப் பிறகு, உங்கள் தரவை நாங்கள் அணுகமாட்டோம்.';
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
	@override String get continueSub => 'பதிவிறக்காமல் தொடரவும். நீங்கள் தயாராக இருக்கும்போது மாதிரியைச் சேர்க்கலாம்';
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
	@override String get saved_title => 'சேமிக்கப்பட்டவை';
	@override String get saved_desc => 'உங்கள் ப்ராம்ப்ட் நூலகம்';
	@override String get skills_title => 'திறன்கள்';
	@override String get skills_desc => 'AI திறன்கள்';
	@override String get pillars_title => 'தூண்கள்';
	@override String get pillars_desc => 'முக்கிய நுண்ணறிவு களங்கள்';
}

// Path: biometric
class _StringsBiometricTa extends _StringsBiometricEn {
	_StringsBiometricTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get vault => 'பெட்டகப் பாதுகாப்பு';
	@override String get setupTitle => 'பாதுகாப்பான பூட்டை அமைக்கவும்';
	@override String get setupSub => 'உங்களுக்கு விருப்பமான முறையில் உங்கள் பெட்டகத்தைப் பாதுகாக்கவும்.';
	@override String get deviceTitle => 'பயோமெட்ரிக்ஸ்';
	@override String get deviceSub => 'Face ID அல்லது கைரேகை';
	@override String get pinTitle => 'PIN குறியீடு';
	@override String get pinSub => '4 இலக்கக் குறியீட்டை அமைக்கவும்';
	@override String get dialogTitle => 'அனுமதி';
	@override String get dialogSub => 'ZiqeX ஐத் திறக்க உங்கள் கைரேகை அல்லது முகத்தைப் பயன்படுத்தவும்';
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
	@override String get biometrics_sub => 'உங்கள் கைரேகை அல்லது முகத்தைப் பயன்படுத்தி உடனடியாகத் திறக்கவும்';
	@override String get pin_title => 'ZiqeX PIN';
	@override String get pin_active => 'PIN செயல்பாட்டில் உள்ளது';
	@override String get pin_setup => 'செயலியைத் திறக்க தனித்துவமான 4 இலக்க PIN குறியீட்டை அமைக்கவும்';
	@override String get warning_title => 'அதிகப்படியான தவறான முயற்சிகள்';
	@override String get warning_sub => 'தவறான PIN 10 முறை உள்ளிடப்பட்டால், ZiqeX தானாகவே மீட்டமைக்கப்படும். இந்த சாதனத்தில் சேமிக்கப்பட்டுள்ள அனைத்து தரவுகளும் நிரந்தரமாக நீக்கப்படும்';
	@override String get incomplete_title => 'பாதுகாப்பு அமைப்பு முழுமையடையவில்லை';
	@override String get incomplete_content => 'நீங்கள் செயலி பூட்டை இயக்கியுள்ளீர்கள், ஆனால் PIN அல்லது பயோமெட்ரிக்ஸை அமைக்கவில்லை. அவற்றில் ஒன்றை அமைக்கும் வரை செயலி பூட்டு முடக்கப்பட்டிருக்கும்.';
	@override String get got_it => 'புரிந்தது';
}

// Path: data
class _StringsDataTa extends _StringsDataEn {
	_StringsDataTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'தரவு மேலாண்மை';
	@override String get summary => 'சேமிப்பகச் சுருக்கம்';
	@override String get totalUsed => 'பயன்படுத்தப்பட்டது: ';
	@override String get legendModel => 'மாதிரி எடைகள்';
	@override String get legendFree => 'காலி இடம்';
	@override String get mgmt => 'மாதிரி மேலாண்மை';
	@override String get deleteModels => 'அனைத்தையும் நீக்கவும்';
	@override String get deleteModelsSub => 'மாதிரி எடைகளை சாதனத்திலிருந்து முழுமையாக அகற்றவும்.';
	@override String get selectDelete => 'நீக்க வேண்டியவற்றைத் தேர்ந்தெடுக்கவும்';
	@override String get autoDelete => 'தானாக நீக்கு:';
	@override String get autoDeleteSub => 'அனைத்து அரட்டை முறைகளுக்கும் பொருந்தும்.';
	@override String get modes => 'முறைகள்';
	@override String get noData => 'தரவு இல்லை';
	@override String get deleteAll => 'அனைத்தையும் நீக்கவும்';
	@override String get authReq => 'மீண்டும் அங்கீகரிக்க வேண்டும்';
	@override String get viewChats => 'பார்க்கவும்';
	@override String get deleteAllPillar => 'நீக்கவும்';
	@override String get space => 'இடம்:';
	@override String get activeInstances => 'செயலில் உள்ள நிகழ்வுகள்:';
}

// Path: pin_setup
class _StringsPinSetupTa extends _StringsPinSetupEn {
	_StringsPinSetupTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '4 இலக்க PIN-ஐ அமைக்கவும்';
	@override String get subtitle_setup => 'பயன்பாட்டை அணுக பாதுகாப்பான குறியீட்டை உருவாக்கவும்';
	@override String get title_confirm => 'PIN-ஐ உறுதிப்படுத்தவும்';
	@override String get subtitle_confirm => 'சரிபார்க்க உங்கள் 4 இலக்க PIN-ஐ மீண்டும் உள்ளிடவும்';
	@override String get title_verify => 'தற்போதைய PIN-ஐ உள்ளிடவும்';
	@override String get subtitle_verify => 'தொடர உங்கள் தற்போதைய PIN-ஐ உள்ளிடவும்';
	@override String get error_mismatch => 'PIN-கள் பொருந்தவில்லை. மீண்டும் முயற்சிக்கவும்.';
	@override String get error_incorrect => 'தவறான PIN. மீண்டும் முயற்சிக்கவும்.';
	@override String get snack_success => 'PIN வெற்றிகரமாக அமைக்கப்பட்டது';
}

// Path: pin_mgmt
class _StringsPinMgmtTa extends _StringsPinMgmtEn {
	_StringsPinMgmtTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'செயலி PIN';
	@override String get change_title => 'PIN-ஐ மாற்றவும்';
	@override String get change_sub => 'உங்கள் 4 இலக்க ZiqeX பாதுகாப்புக் குறியீட்டைப் புதுப்பிக்கவும்';
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
	@override String get title2 => 'உங்களுக்கு சொந்தமான உணர்வைத் தருகிறது?';
	@override String get subtitle => 'உங்கள் தாய்மொழியில் குரல், உரை மற்றும் பதில்களைப் பெறுங்கள். இதை எப்போது வேண்டுமானாலும் மாற்றிக்கொள்ளலாம்.';
	@override String get first_reply => 'முதல் பதில் இவ்வாறு இருக்கும்';
	@override String script_info({required Object lang}) => '${lang} - உங்கள் எழுத்துமுறையில் எழுதப்பட்டு பேசப்படும்';
	@override String get continueBtn => 'தொடரவும்';
}

// Path: model_mgmt
class _StringsModelMgmtTa extends _StringsModelMgmtEn {
	_StringsModelMgmtTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'மாடல் மேலாண்மை';
	@override String get subtitle => 'உள்ளூர் எட்ஜ் AI மொழி மாடல்களை உள்ளமைக்கவும்';
	@override String get status_loaded => 'ஏற்றப்பட்டது';
	@override String get status_unloaded => 'ஏற்றப்படவில்லை';
	@override String get status_loading => 'ஏற்றப்படுகிறது...';
	@override String size({required Object size}) => 'அளவு: ${size}';
	@override String get load => 'ஏற்று';
	@override String get unload => 'வெளியேற்று';
	@override String get download => 'பதிவிறக்கு';
	@override String get delete => 'நீக்கு';
	@override String get brahm_2b_desc => 'மொபைல் சாதனங்களில் குறைந்த தாமத உரை நிறைவு மற்றும் அரட்டைக்காக வடிவமைக்கப்பட்ட அதிவேக சிறிய எட்ஜ் மாடல்.';
	@override String get brahm_5b_desc => 'மேம்படுத்தப்பட்ட பணி துல்லியம் மற்றும் சிக்கலான அறிவுறுத்தல் செயல்திறனை வழங்கும் சமச்சீர் பகுத்தறிவு மாடல்.';
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
	@override String get hello => 'ನಮಸ್ಕಾರ';
	@override String get mind_today => 'ಇಂದು ನಿಮ್ಮ ಮನಸ್ಸಿನಲ್ಲಿ ಏನಿದೆ?';
	@override String get on_device_only => 'ಈ ಸಾಧನದಲ್ಲಿ ಮಾತ್ರ';
	@override String get offline => 'ಆಫ್‌ಲೈನ್';
	@override String get start_something => 'ಏನನ್ನಾದರೂ ಪ್ರಾರಂಭಿಸಿ';
	@override String get ask_anything => 'ಏನನ್ನಾದರೂ ಕೇಳಿ';
	@override String get ask_anything_sub => 'ಆರೋಗ್ಯ · ಕಾನೂನು · ವೈಯಕ್ತಿಕ · ಕೆಲಸ';
	@override String get voice_mode => 'ವಾಯ್ಸ್ ಮೋಡ್';
	@override String get voice_mode_sub => 'ನಿಮ್ಮ ಭಾಷೆಯಲ್ಲಿ ಮಾತನಾಡಿ';
	@override String get ask_image => 'ಚಿತ್ರದ ಬಗ್ಗೆ ಕೇಳಿ';
	@override String get ask_image_sub => 'ಫಾರ್ಮ್‌ಗಳು, ಲೇಬಲ್‌ಗಳು, ಸ್ಕ್ರಿಪ್ಟ್‌ಗಳು';
	@override String get panchang => 'ಪಂಚಾಂಗ';
	@override String get panchang_sub => 'ಇಂದಿನ ತಿಥಿ ಮತ್ತು ಮುಹೂರ್ತ';
	@override String get ephemeral => 'ಅಲ್ಪಕಾಲಿಕ';
	@override String get ephemeral_sub => 'ಯಾವುದೇ ಗುರುತು ಉಳಿಸದೆ ಮಾತನಾಡಿ';
	@override String get recent => 'ಇತ್ತೀಚಿನವು';
	@override String get home => 'ಹೋಮ್';
	@override String get chat => 'ಚಾಟ್';
	@override String get library => 'ಲೈಬ್ರರಿ';
	@override String get you => 'ನೀವು';
	@override String get settings_pref => 'ಪ್ರೊಫೈಲ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';
	@override String get preferences => 'ಆದ್ಯತೆಗಳು ಮತ್ತು ಭದ್ರತೆ';
	@override String get language => 'ಭಾಷೆ';
	@override String get security => 'ಭದ್ರತೆ';
	@override String get security_sub => 'ಆ್ಯಪ್ ಲಾಕ್ · 2FA';
	@override String get privacy_tiers => 'ಗೌಪ್ಯತೆ ಮೋಡ್';
	@override String get privacy_tiers_sub => '1 ಸಕ್ರಿಯ \'ZiqeX ಆಲಿಸುವ ಮೋಡ್\'';
	@override String get storage_purge => 'ಡೇಟಾ ಮತ್ತು ಸಂಗ್ರಹಣೆ';
	@override String get storage_purge_sub => 'ಸಾಧನದಲ್ಲಿ 184 KB';
	@override String get ephemeral_mode => 'ಗೋಪ್ಯ ಚಾಟ್';
	@override String get about => 'ಸಿಸ್ಟಮ್ ಮಾಹಿತಿ';
	@override String get reset_prototype => 'ಪ್ರೋಟೋಟೈಪ್ ಮರುಹೊಂದಿಸಿ';
	@override String get built_in_india => 'ಭಾರತದಲ್ಲಿ ನಿರ್ಮಿಸಲಾಗಿದೆ. ಜಗತ್ತಿಗಾಗಿ.';
	@override String get library_sub => 'ಪ್ರತಿ ಮಾದರಿ · ಪ್ರತಿ ಸ್ಮರಣೆ · ಈ ಸಾಧನದಲ್ಲಿ';
	@override String get on_this_device => 'ಈ ಸಾಧನದಲ್ಲಿ';
	@override String get active => 'ಸಕ್ರಿಯ';
	@override String get add => '+ ಸೇರಿಸಿ';
	@override String get storage_used => 'ಬಳಸಿದ ಸಂಗ್ರಹಣೆ';
	@override String get health_question => 'ಆರೋಗ್ಯ ಪ್ರಶ್ನೆ';
	@override String get family => 'ಕುಟುಂಬ';
	@override String get work => 'ಕೆಲಸ';
	@override String get just_thinking => 'ಸುಮ್ಮನೆ ಯೋಚಿಸುತ್ತಿದ್ದೇನೆ';
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
	@override late final _StringsModelMgmtTe model_mgmt = _StringsModelMgmtTe._(_root);
}

// Path: profile
class _StringsProfileTe extends _StringsProfileEn {
	_StringsProfileTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get access => 'ಪ್ರವೇಶ';
	@override String get privacy => 'ಗೌಪ್ಯತೆ';
	@override String get system => 'ಸಿಸ್ಟಮ್';
	@override String get security_active => 'ಭದ್ರತೆ ಸಕ್ರಿಯವಾಗಿದೆ';
	@override String get security_inactive => 'ಭದ್ರತೆ ಸಕ್ರಿಯವಾಗಿಲ್ಲ';
	@override String get dark_mode => 'ಡಾರ್ಕ್ ಮೋಡ್';
	@override String get dark_mode_sub => 'ಲೈಟ್ ಮತ್ತು ಡಾರ್ಕ್ ವರ್ಕ್‌ಸ್ಪೇಸ್ ಥೀಮ್‌ಗಳ ನಡುವೆ ಬದಲಾಯಿಸಿ';
	@override String get data_mgmt => 'ಚಾಟ್ ಡೇಟಾ ನಿರ್ವಹಣೆ ಮತ್ತು ಸಂಗ್ರಹಣೆ';
	@override String get data_mgmt_sub => 'ನಿಮ್ಮ ಸಂಭಾಷಣೆ ಇತಿಹಾಸವನ್ನು ನಿರ್ವಹಿಸಿ';
	@override String get app_lock => 'ಆ್ಯಪ್ ಲಾಕ್';
	@override String get app_lock_sub => 'ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್, ಮುಖ ಅಥವಾ ಪಿನ್‌ನೊಂದಿಗೆ ZiqeX ಅನ್ನು ಸುರಕ್ಷಿತಗೊಳಿಸಿ';
	@override String get incognito_sub => 'ಇತಿಹಾಸದಲ್ಲಿ ಉಳಿಸದೆ ಚಾಟ್ ಮಾಡಿ. ಚಾಟ್‌ನಿಂದ ಹೊರಬಂದ ನಂತರ ಅದನ್ನು ಮರುಪಡೆಯಲು ಸಾಧ್ಯವಿಲ್ಲ';
	@override String get version => 'V0.1 • ಸಾರ್ವಭೌಮ • ಆನ್-ಡಿವೈಸ್';
}

// Path: welcome
class _StringsWelcomeTe extends _StringsWelcomeEn {
	_StringsWelcomeTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX ಅನ್ನು ಪರಿಚಯಿಸಿಕೊಳ್ಳಿ';
	@override String get at_edge => 'ಎಡ್ಜ್‌ನಲ್ಲಿ ಬುದ್ಧಿಮತ್ತೆ';
	@override String get private => 'ಖಾಸಗಿ ಮತ್ತು ಎಡ್ಜ್ AI\nZenteiQ ನಿಂದ';
	@override String get begin => 'ಆನ್‌ಬೋರ್ಡಿಂಗ್ ಪ್ರಾರಂಭಿಸಿ';
}

// Path: info
class _StringsInfoTe extends _StringsInfoEn {
	_StringsInfoTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನಿಮ್ಮ ಸುತ್ತಲೂ ವಿನ್ಯಾಸಗೊಳಿಸಲಾದ ಬುದ್ಧಿಮತ್ತೆ';
	@override String get subtitle => 'ಗೌಪ್ಯತೆ, ಆಯ್ಕೆ ಮತ್ತು ನಿಯಂತ್ರಣವನ್ನು ಅನುಭವದಲ್ಲೇ ನಿರ್ಮಿಸಿರುವ ಉಪಯುಕ್ತ AI.';
	@override String get privacy_title => 'ಗೌಪ್ಯತೆ ಮೊದಲು';
	@override String get privacy_desc => 'ZiqeX ಬುದ್ಧಿಮತ್ತೆ ಮತ್ತು ನಿಮ್ಮ ಮಾಹಿತಿಯನ್ನು ನಿಮ್ಮ ಸಾಧನದ ಸಮೀಪದಲ್ಲೇ ಇರಿಸಲು ವಿನ್ಯಾಸಗೊಳಿಸಲಾಗಿದೆ.';
	@override String get hand_title => 'ನಿಮ್ಮ ಕೈಯಲ್ಲೇ ಬುದ್ಧಿಮತ್ತೆ';
	@override String get hand_desc => 'ದೈನಂದಿನ ಬುದ್ಧಿಮತ್ತೆ, ನೇರವಾಗಿ ನಿಮ್ಮ ಸಾಧನದಲ್ಲಿ ಲಭ್ಯ.';
	@override String get control_title => 'ನಿಮ್ಮ ಡೇಟಾ. ನಿಮ್ಮ ನಿಯಂತ್ರಣ.';
	@override String get control_desc => 'ಏನನ್ನು ಉಳಿಸಬೇಕು ಎಂಬುದನ್ನು ಆಯ್ಕೆಮಾಡಿ, ಸಂಗ್ರಹಿಸಿರುವುದನ್ನು ನಿರ್ವಹಿಸಿ ಮತ್ತು ಇನ್ನು ಮುಂದೆ ಅಗತ್ಯವಿಲ್ಲದದ್ದನ್ನು ಅಳಿಸಿ.';
	@override String get place_title => 'ಪ್ರತಿಯೊಂದು ಸ್ಥಳಕ್ಕಾಗಿ ವಿನ್ಯಾಸಗೊಳಿಸಲಾಗಿದೆ';
	@override String get place_desc => 'ವಿವಿಧ ಭಾಷೆಗಳು, ಸಾಧನಗಳು ಮತ್ತು ಜನರು ತಂತ್ರಜ್ಞಾನವನ್ನು ಬಳಸುವ ವಿಭಿನ್ನ ವಿಧಾನಗಳಿಗಾಗಿ ನಿರ್ಮಿಸಲಾಗಿದೆ.';
	@override String get footer => 'ನಿಮ್ಮ ಬುದ್ಧಿಮತ್ತೆ. ನಿಮ್ಮ ಸಾಧನ. ನಿಮ್ಮ ನಿಯಂತ್ರಣ.';
	@override String get setup => 'ನಿಮ್ಮ ZiqeX ಅನ್ನು ಹೊಂದಿಸಿ';
}

// Path: languageSelection
class _StringsLanguageSelectionTe extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಭಾಷೆ ಆಯ್ಕೆ';
	@override String get title => 'ನಿಮ್ಮ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';
	@override String get subtitle => 'ನಿಮ್ಮ ಇಂಟರ್‌ಫೇಸ್‌ಗಾಗಿ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ.';
	@override String get back => 'ಹಿಂದೆ';
	@override String get continueBtn => 'ಮುಂದುವರಿಸಿ';
}

// Path: pillars
class _StringsPillarsTe extends _StringsPillarsEn {
	_StringsPillarsTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಸ್ತಂಭಗಳ ಆಯ್ಕೆ';
	@override String get title => 'ನಿಮ್ಮ ಸ್ತಂಭಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';
	@override String get subtitle => 'ನೀವು ಗಮನಹರಿಸಲು ಬಯಸುವ ಪ್ರಮುಖ ಸಾಮರ್ಥ್ಯಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ.';
	@override String get general => 'ಸಾಮಾನ್ಯ';
	@override String get operational => 'ಕಾರ್ಯಾಚರಣೆ';
	@override String get personal => 'ವೈಯಕ್ತಿಕ ಸಲಹೆ';
	@override String get workplace => 'ಕೆಲಸದ ಸ್ಥಳ';
	@override String get culture => 'ಸಂಸ್ಕೃತಿ ಮತ್ತು ಕುಟುಂಬ';
	@override String get journal => 'ದೈನಂದಿನ ದಿನಚರಿ';
	@override String get back => 'ಹಿಂದೆ';
	@override String get continueBtn => 'ಮುಂದುವರಿಸಿ';
}

// Path: modelDownload
class _StringsModelDownloadTe extends _StringsModelDownloadEn {
	_StringsModelDownloadTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI ಅನ್ನು\nನಿಮ್ಮ ಬಳಿಗೆ ';
	@override String get title2 => 'ತರುತ್ತಿದ್ದೇವೆ.';
	@override String get subtitle => 'ಒಮ್ಮೆ ಮಾತ್ರ. ಇದರ ನಂತರ, ನಾವು ನಿಮ್ಮ ಡೇಟಾವನ್ನು ಎಂದಿಗೂ ಸ್ಪರ್ಶಿಸುವುದಿಲ್ಲ.';
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
	@override String get continueSub => 'ಮಾದರಿಯನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡದೆ ಮುಂದುವರಿಸಿ. ನೀವು ಸಿದ್ಧರಾದಾಗ ಒಂದನ್ನು ಸೇರಿಸಬಹುದು';
}

// Path: library_v2
class _StringsLibraryV2Te extends _StringsLibraryV2En {
	_StringsLibraryV2Te._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'ನಿಮ್ಮ AI ಸಂಪನ್ಮೂಲಗಳನ್ನು ನಿರ್ವಹಿಸಿ';
	@override String get language_title => 'ಭಾಷೆ';
	@override String get language_desc => 'ನಿಮ್ಮ ಆದ್ಯತೆಯ ಭಾಷೆಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ ಮತ್ತು ನಿರ್ವಹಿಸಿ';
	@override String get model_title => 'ಮಾದರಿ';
	@override String get model_desc => 'ಲಭ್ಯವಿರುವ AI ಮಾದರಿಗಳನ್ನು ಅನ್ವೇಷಿಸಿ ಮತ್ತು ನಿರ್ವಹಿಸಿ';
	@override String get saved_title => 'ಉಳಿಸಲಾಗಿದೆ';
	@override String get saved_desc => 'ನಿಮ್ಮ ಪ್ರಾಂಪ್ಟ್ ಲೈಬ್ರರಿ';
	@override String get skills_title => 'ಕೌಶಲ್ಯಗಳು';
	@override String get skills_desc => 'AI ಸಾಮರ್ಥ್ಯಗಳು';
	@override String get pillars_title => 'స్తంభాలు';
	@override String get pillars_desc => 'కోర్ ఇంటెలిజెన్స్ డొమైన్‌లు';
}

// Path: biometric
class _StringsBiometricTe extends _StringsBiometricEn {
	_StringsBiometricTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get vault => 'ವಾಲ್ಟ್ ಭದ್ರತೆ';
	@override String get setupTitle => 'ಸುರಕ್ಷಿತ ಲಾಕ್ ಸೆಟಪ್';
	@override String get setupSub => 'ನಿಮ್ಮ ಆದ್ಯತೆಯ ದೃಢೀಕರಣ ವಿಧಾನದಿಂದ ನಿಮ್ಮ ವಾಲ್ಟ್ ಅನ್ನು ಸುರಕ್ಷಿತಗೊಳಿಸಿ.';
	@override String get deviceTitle => 'ಸಾಧನ ಬಯೋಮೆಟ್ರಿಕ್ಸ್';
	@override String get deviceSub => 'FaceID ಅಥವಾ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಬಳಸಿ';
	@override String get pinTitle => 'ಆ್ಯಪ್-ನಿರ್ದಿಷ್ಟ ಪಿನ್';
	@override String get pinSub => 'ವಿಶಿಷ್ಟ 4-ಅಂಕಿಯ ಕೋಡ್ ಹೊಂದಿಸಿ';
	@override String get dialogTitle => 'ಬಯೋಮೆಟ್ರಿಕ್ ಪ್ರವೇಶವನ್ನು ಅನುಮತಿಸಿ';
	@override String get dialogSub => 'ZiqeX ಅನ್ನು ಅನ್‌ಲಾಕ್ ಮಾಡಲು ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಅಥವಾ ಸಾಧನದ ಮುಖ ಗುರುತಿಸುವಿಕೆಯನ್ನು ಬಳಸಿ';
	@override String get cancel => 'ರದ್ದುಮಾಡಿ';
	@override String get allow => 'ಬಯೋಮೆಟ್ರಿಕ್ಸ್ ಅನುಮತಿಸಿ';
}

// Path: security_screen
class _StringsSecurityScreenTe extends _StringsSecurityScreenEn {
	_StringsSecurityScreenTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಆ್ಯಪ್ ಭದ್ರತೆ';
	@override String get global_protection => 'ಜಾಗತಿಕ ರಕ್ಷಣೆ';
	@override String get app_lock => 'ಆ್ಯಪ್ ಲಾಕ್';
	@override String get app_lock_sub => 'ZiqeX ತೆರೆಯಲು ದೃಢೀಕರಣದ ಅಗತ್ಯವಿದೆ';
	@override String get auth_methods => 'ದೃಢೀಕರಣ ವಿಧಾನಗಳು';
	@override String get biometrics_title => 'ಸಾಧನ ಬಯೋಮೆಟ್ರಿಕ್ಸ್';
	@override String get biometrics_sub => 'ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಅಥವಾ ಮುಖದಿಂದ ತಕ್ಷಣ ಅನ್‌ಲಾಕ್ ಮಾಡಿ';
	@override String get pin_title => 'ZiqeX ಪಿನ್';
	@override String get pin_active => 'ಪಿನ್ ಸಕ್ರಿಯವಾಗಿದೆ';
	@override String get pin_setup => 'ಆ್ಯಪ್ ಅನ್‌ಲಾಕ್ ಮಾಡಲು ವಿಶಿಷ್ಟ 4-ಅಂಕಿಯ ಕೋಡ್ ಹೊಂದಿಸಿ';
	@override String get warning_title => 'ಹೆಚ್ಚಿನ ತಪ್ಪು ಪ್ರಯತ್ನಗಳು';
	@override String get warning_sub => 'ತಪ್ಪಾದ ಪಿನ್ ಅನ್ನು 10 ಬಾರಿ ನಮೂದಿಸಿದರೆ, ZiqeX ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಮರುಹೊಂದಿಸಲಾಗುತ್ತದೆ. ಈ ಸಾಧನದಲ್ಲಿ ಸಂಗ್ರಹಿಸಿರುವ ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಶಾಶ್ವತವಾಗಿ ಅಳಿಸಲಾಗುತ್ತದೆ';
	@override String get incomplete_title => 'ಭದ್ರತಾ ಸೆಟಪ್ ಅಪೂರ್ಣವಾಗಿದೆ';
	@override String get incomplete_content => 'ನೀವು ಆ್ಯಪ್ ಲಾಕ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿದ್ದೀರಿ ಆದರೆ ಪಿನ್ ಅಥವಾ ಬಯೋಮೆಟ್ರಿಕ್ಸ್ ಹೊಂದಿಸಿಲ್ಲ. ಯಾವುದೇ ವಿಧಾನವನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡುವವರೆಗೆ ಆ್ಯಪ್ ಲಾಕ್ ನಿಷ್ಕ್ರಿಯವಾಗಿರುತ್ತದೆ.';
	@override String get got_it => 'ಅರ್ಥವಾಯಿತು';
}

// Path: data
class _StringsDataTe extends _StringsDataEn {
	_StringsDataTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಡೇಟಾ ನಿರ್ವಹಣೆ ಮತ್ತು\nಸಂಗ್ರಹಣೆ';
	@override String get summary => 'ಸಂಗ್ರಹಣೆ ಸಾರಾಂಶ';
	@override String get totalUsed => 'ಒಟ್ಟು ಬಳಸಲಾಗಿದೆ: ';
	@override String get legendModel => 'ಮಾದರಿ ಗಾತ್ರ';
	@override String get legendFree => 'ಖಾಲಿ ಸ್ಥಳ';
	@override String get mgmt => 'ಮಾದರಿ ನಿರ್ವಹಣೆ';
	@override String get deleteModels => 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಿದ ಎಲ್ಲಾ ಮಾದರಿಗಳನ್ನು ಅಳಿಸಿ';
	@override String get deleteModelsSub => 'ಈ ಸಾಧನದಿಂದ ಎಲ್ಲಾ ಸ್ಥಳೀಯ ಮಾದರಿ ಗಾತ್ರಗಳು ಮತ್ತು ಪ್ಯಾರಾಮೀಟರ್‌ಗಳನ್ನು ಸಂಪೂರ್ಣವಾಗಿ ತೆಗೆದುಹಾಕಿ.';
	@override String get selectDelete => 'ಅಳಿಸಲು ಮಾದರಿಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';
	@override String get autoDelete => 'ಇದಕ್ಕಿಂತ ಹಳೆಯ ಚಾಟ್‌ಗಳನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಅಳಿಸಿ:';
	@override String get autoDeleteSub => 'ಈ ಸೆಟ್ಟಿಂಗ್ ಎಲ್ಲಾ ಲಿಂಕ್ ಮಾಡದ ಸಂಭಾಷಣೆ ಮೋಡ್‌ಗಳಿಗೆ ಅನ್ವಯಿಸುತ್ತದೆ.';
	@override String get modes => 'ಮೋಡ್‌ಗಳು';
	@override String get noData => 'ಯಾವುದೇ ಸಕ್ರಿಯ ಚಾಟ್ ಡೇಟಾ ಇಲ್ಲ';
	@override String get deleteAll => 'ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಅಳಿಸಿ';
	@override String get authReq => 'ಆ್ಯಪ್ ಲಾಕ್ ಮರು-ದೃಢೀಕರಣ ಅಗತ್ಯವಿದೆ';
	@override String get viewChats => 'ಚಾಟ್‌ಗಳನ್ನು ವೀಕ್ಷಿಸಿ';
	@override String get deleteAllPillar => 'ಎಲ್ಲವನ್ನೂ ಅಳಿಸಿ';
	@override String get space => 'ಸ್ಥಳ:';
	@override String get activeInstances => 'ಸಕ್ರಿಯ ಇನ್‌ಸ್ಟೆನ್ಸ್‌ಗಳು:';
}

// Path: pin_setup
class _StringsPinSetupTe extends _StringsPinSetupEn {
	_StringsPinSetupTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get title_setup => '4-ಅಂಕಿಯ ಪಿನ್ ಹೊಂದಿಸಿ';
	@override String get subtitle_setup => 'ಆ್ಯಪ್ ಪ್ರವೇಶಿಸಲು ಸುರಕ್ಷಿತ ಕೋಡ್ ರಚಿಸಿ';
	@override String get title_confirm => 'ಪಿನ್ ದೃಢೀಕರಿಸಿ';
	@override String get subtitle_confirm => 'ದೃಢೀಕರಿಸಲು ನಿಮ್ಮ 4-ಅಂಕಿಯ ಕೋಡ್ ಅನ್ನು ಮತ್ತೆ ನಮೂದಿಸಿ';
	@override String get title_verify => 'ಪ್ರಸ್ತುತ ಪಿನ್ ನಮೂದಿಸಿ';
	@override String get subtitle_verify => 'ಮುಂದುವರಿಸಲು ನಿಮ್ಮ ಪ್ರಸ್ತುತ ಕೋಡ್ ನಮೂದಿಸಿ';
	@override String get error_mismatch => 'ಪಿನ್‌ಗಳು ಹೊಂದಿಕೆಯಾಗುತ್ತಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
	@override String get error_incorrect => 'ತಪ್ಪಾದ ಪಿನ್. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
	@override String get snack_success => 'ಪಿನ್ ಯಶಸ್ವಿಯಾಗಿ ಹೊಂದಿಸಲಾಗಿದೆ';
}

// Path: pin_mgmt
class _StringsPinMgmtTe extends _StringsPinMgmtEn {
	_StringsPinMgmtTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ಆ್ಯಪ್-ನಿರ್ದಿಷ್ಟ ಪಿನ್';
	@override String get change_title => 'ಪಿನ್ ಬದಲಾಯಿಸಿ';
	@override String get change_sub => 'ನಿಮ್ಮ 4-ಅಂಕಿಯ ZiqeX ಭದ್ರತಾ ಕೋಡ್ ಅನ್ನು ನವೀಕರಿಸಿ';
	@override String get remove_title => 'ಪಿನ್ ತೆಗೆದುಹಾಕಿ';
	@override String get remove_sub => 'ZiqeX ಗಾಗಿ ಪಿನ್ ಪ್ರವೇಶವನ್ನು ಆಫ್ ಮಾಡಿ';
	@override String get snack_removed => 'ಪಿನ್ ಯಶಸ್ವಿಯಾಗಿ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';
}

// Path: lang_legacy
class _StringsLangLegacyTe extends _StringsLangLegacyEn {
	_StringsLangLegacyTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'ಯಾವ ಭಾಷೆ\n';
	@override String get title2 => 'ನಿಮ್ಮದೇ ಎನಿಸುತ್ತದೆ?';
	@override String get subtitle => 'ನಿಮ್ಮ ಮಾತೃಭಾಷೆಯಲ್ಲಿ ಧ್ವನಿ, ಪಠ್ಯ ಮತ್ತು ಉತ್ತರಗಳು. ಯಾವುದೇ ಸಮಯದಲ್ಲಿ ಬದಲಾಯಿಸಿ.';
	@override String get first_reply => 'ಮೊದಲ ಉತ್ತರ ಹೀಗಿರುತ್ತದೆ';
	@override String script_info({required Object lang}) => '${lang} - ನಿಮ್ಮ ಲಿಪಿಯಲ್ಲಿ ಬರೆಯಲಾಗುತ್ತದೆ ಮತ್ತು ಮಾತನಾಡಲಾಗುತ್ತದೆ';
	@override String get continueBtn => 'ಮುಂದುವರಿಸಿ';
}

// Path: model_mgmt
class _StringsModelMgmtTe extends _StringsModelMgmtEn {
	_StringsModelMgmtTe._(_StringsTe root) : this._root = root, super._(root);

	@override final _StringsTe _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'మోడల్ నిర్వహణ';
	@override String get subtitle => 'స్థానిక ఎడ్జ్ AI భాషా మోడల్‌లను కాన్ఫిగర్ చేయండి';
	@override String get status_loaded => 'లోడ్ చేయబడింది';
	@override String get status_unloaded => 'లోడ్ కాలేదు';
	@override String get status_loading => 'లోడ్ అవుతోంది...';
	@override String size({required Object size}) => 'పరిమాణం: ${size}';
	@override String get load => 'లోడ్ చేయి';
	@override String get unload => 'అన్‌లోడ్ చేయి';
	@override String get download => 'డೌన్‌లోడ్';
	@override String get delete => 'తొలగించు';
	@override String get brahm_2b_desc => 'మొబైల్ పరిਕਰాల్లో తక్కువ-లేటెన్సీ టెక్స్ట్ కంప్લીషన్ మరియు చాట్ కోసం రూపొందించిన అతివేగవంతమైన కాంపాక్ట్ ఎడ్జ్ మోడల్.';
	@override String get brahm_5b_desc => 'మెరుగైన టాస్క్ ఖచ్చితత్వం మరియు సంక్లిష్టమైన ఇన్స్ట్రక్షనల్ పనితీరును అందించే సమతుల్య రీజనింగ్ మోడల్.';
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
	@override String get mind_today => 'آج آپ کے ذہن میں کیا ہے؟';
	@override String get on_device_only => 'صرف اس ڈیوائس پر';
	@override String get offline => 'آف لائن';
	@override String get start_something => 'کچھ شروع کریں';
	@override String get ask_anything => 'کچھ بھی پوچھیں';
	@override String get ask_anything_sub => 'صحت · قانونی · ذاتی · کام';
	@override String get voice_mode => 'وائس موڈ';
	@override String get voice_mode_sub => 'اپنی زبان میں بات کریں';
	@override String get ask_image => 'تصویر کے بارے میں پوچھیں';
	@override String get ask_image_sub => 'فارم، لیبل، اسکرپٹس';
	@override String get panchang => 'پنچانگ';
	@override String get panchang_sub => 'آج کی تِتھی اور مُہورت';
	@override String get ephemeral => 'عارضی';
	@override String get ephemeral_sub => 'بغیر کوئی نشان چھوڑے بات کریں';
	@override String get recent => 'حالیہ';
	@override String get home => 'ہوم';
	@override String get chat => 'چیٹ';
	@override String get library => 'لائبریری';
	@override String get you => 'آپ';
	@override String get settings_pref => 'پروفائل سیٹنگز';
	@override String get preferences => 'ترجیحات اور سیکیورٹی';
	@override String get language => 'زبان';
	@override String get security => 'سیکیورٹی';
	@override String get security_sub => 'ایپ لاک · 2FA';
	@override String get privacy_tiers => 'پرائیویسی موڈ';
	@override String get privacy_tiers_sub => '1 فعال \'ZiqeX سننے کا موڈ\'';
	@override String get storage_purge => 'ڈیٹا اور اسٹوریج';
	@override String get storage_purge_sub => 'ڈیوائس پر 184 KB';
	@override String get ephemeral_mode => 'خفیہ چیٹ';
	@override String get about => 'سسٹم کی معلومات';
	@override String get reset_prototype => 'پروٹوٹائپ ری سیٹ کریں';
	@override String get built_in_india => 'بھارت میں بنایا گیا۔ دنیا کے لیے۔';
	@override String get library_sub => 'ہر ماڈل · ہر یادداشت · اس ڈیوائس پر';
	@override String get on_this_device => 'اس ڈیوائس پر';
	@override String get active => 'فعال';
	@override String get add => '+ شامل کریں';
	@override String get storage_used => 'استعمال شدہ اسٹوریج';
	@override String get health_question => 'صحت کا سوال';
	@override String get family => 'خاندان';
	@override String get work => 'کام';
	@override String get just_thinking => 'بس سوچ رہا ہوں';
	@override late final _StringsProfileUr profile = _StringsProfileUr._(_root);
	@override late final _StringsWelcomeUr welcome = _StringsWelcomeUr._(_root);
	@override late final _StringsInfoUr info = _StringsInfoUr._(_root);
	@override late final _StringsLanguageSelectionUr languageSelection = _StringsLanguageSelectionUr._(_root);
	@override late final _StringsPillarsUr pillars = _StringsPillarsUr._(_root);
	@override late final _StringsModelDownloadUr modelDownload = _StringsModelDownloadUr._(_root);
	@override late final _StringsLibraryV2Ur library_v2 = _StringsLibraryV2Ur._(_root);
	@override late final _StringsBiometricUr biometric = _StringsBiometricUr._(_root);
	@override late final _StringsSecurityScreenUr security_screen = _StringsSecurityScreenUr._(_root);
	@override late final _StringsDataUr data = _StringsDataUr._(_root);
	@override late final _StringsPinSetupUr pin_setup = _StringsPinSetupUr._(_root);
	@override late final _StringsPinMgmtUr pin_mgmt = _StringsPinMgmtUr._(_root);
	@override late final _StringsLangLegacyUr lang_legacy = _StringsLangLegacyUr._(_root);
	@override late final _StringsModelMgmtUr model_mgmt = _StringsModelMgmtUr._(_root);
}

// Path: profile
class _StringsProfileUr extends _StringsProfileEn {
	_StringsProfileUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get access => 'رسائی';
	@override String get privacy => 'پرائیویسی';
	@override String get system => 'سسٹم';
	@override String get security_active => 'سیکیورٹی فعال ہے';
	@override String get security_inactive => 'سیکیورٹی فعال نہیں ہے';
	@override String get dark_mode => 'ڈارک موڈ';
	@override String get dark_mode_sub => 'لائٹ اور ڈارک ورک اسپیس تھیمز کے درمیان تبدیل کریں';
	@override String get data_mgmt => 'چیٹ ڈیٹا مینجمنٹ اور اسٹوریج';
	@override String get data_mgmt_sub => 'اپنی گفتگو کی تاریخ کا نظم کریں';
	@override String get app_lock => 'ایپ لاک';
	@override String get app_lock_sub => 'اپنے فنگر پرنٹ، چہرے یا پن کے ذریعے ZiqeX کو محفوظ کریں';
	@override String get incognito_sub => 'ہسٹری میں محفوظ کیے بغیر چیٹ کریں۔ چیٹ سے باہر نکلنے کے بعد اسے بازیافت نہیں کیا جا سکتا';
	@override String get version => 'V0.1 • خودمختار • آن ڈیوائس';
}

// Path: welcome
class _StringsWelcomeUr extends _StringsWelcomeEn {
	_StringsWelcomeUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX سے ملیے';
	@override String get at_edge => 'ایج پر ذہانت';
	@override String get private => 'نجی اور ایج AI\nZenteiQ کی جانب سے';
	@override String get begin => 'آن بورڈنگ شروع کریں';
}

// Path: info
class _StringsInfoUr extends _StringsInfoEn {
	_StringsInfoUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'آپ کے اردگرد ڈیزائن کی گئی ذہانت';
	@override String get subtitle => 'پرائیویسی، انتخاب اور کنٹرول کے ساتھ مفید AI، جو تجربے میں شامل ہے۔';
	@override String get privacy_title => 'پرائیویسی پہلے';
	@override String get privacy_desc => 'ZiqeX کو اس طرح ڈیزائن کیا گیا ہے کہ ذہانت اور آپ کی معلومات آپ کے ڈیوائس کے قریب رہیں۔';
	@override String get hand_title => 'آپ کے ہاتھ میں ذہانت';
	@override String get hand_desc => 'روزمرہ کی ذہانت، براہ راست آپ کے ڈیوائس پر دستیاب۔';
	@override String get control_title => 'آپ کا ڈیٹا۔ آپ کا کنٹرول۔';
	@override String get control_desc => 'منتخب کریں کہ کیا رکھنا ہے، محفوظ شدہ ڈیٹا کا نظم کریں، اور جو چیزیں اب ضروری نہیں انہیں حذف کریں۔';
	@override String get place_title => 'ہر جگہ کے لیے ڈیزائن کیا گیا';
	@override String get place_desc => 'مختلف زبانوں، ڈیوائسز اور لوگوں کے ٹیکنالوجی استعمال کرنے کے مختلف طریقوں کے لیے بنایا گیا۔';
	@override String get footer => 'آپ کی ذہانت۔ آپ کا ڈیوائس۔ آپ کا کنٹرول۔';
	@override String get setup => 'اپنا ZiqeX سیٹ اپ کریں';
}

// Path: languageSelection
class _StringsLanguageSelectionUr extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'زبان کا انتخاب';
	@override String get title => 'اپنی زبان منتخب کریں';
	@override String get subtitle => 'اپنے انٹرفیس کے لیے زبان منتخب کریں۔';
	@override String get back => 'واپس';
	@override String get continueBtn => 'جاری رکھیں';
}

// Path: pillars
class _StringsPillarsUr extends _StringsPillarsEn {
	_StringsPillarsUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ستونوں کا انتخاب';
	@override String get title => 'اپنے ستون منتخب کریں';
	@override String get subtitle => 'وہ بنیادی صلاحیتیں منتخب کریں جن پر آپ توجہ مرکوز کرنا چاہتے ہیں۔';
	@override String get general => 'عمومی';
	@override String get operational => 'عملی';
	@override String get personal => 'ذاتی مشورہ';
	@override String get workplace => 'کام کی جگہ';
	@override String get culture => 'ثقافت اور خاندان';
	@override String get journal => 'روزانہ ڈائری';
	@override String get back => 'واپس';
	@override String get continueBtn => 'جاری رکھیں';
}

// Path: modelDownload
class _StringsModelDownloadUr extends _StringsModelDownloadEn {
	_StringsModelDownloadUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'BrahmAI کو\nآپ کے پاس ';
	@override String get title2 => 'لا رہے ہیں۔';
	@override String get subtitle => 'صرف ایک بار۔ اس کے بعد، ہم آپ کے ڈیٹا کو کبھی نہیں چھوئیں گے۔';
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

// Path: library_v2
class _StringsLibraryV2Ur extends _StringsLibraryV2En {
	_StringsLibraryV2Ur._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'اپنے AI وسائل کا نظم کریں';
	@override String get language_title => 'زبان';
	@override String get language_desc => 'اپنی پسندیدہ زبانیں منتخب کریں اور ان کا نظم کریں';
	@override String get model_title => 'ماڈل';
	@override String get model_desc => 'دستیاب AI ماڈلز کو دریافت کریں اور ان کا نظم کریں';
	@override String get saved_title => 'محفوظ شدہ';
	@override String get saved_desc => 'آپ کی پرامپٹ لائبریری';
	@override String get skills_title => 'مہارتیں';
	@override String get skills_desc => 'AI کی صلاحیتیں';
	@override String get pillars_title => 'ستون';
	@override String get pillars_desc => 'بنیادی صلاحیتیں';
}

// Path: biometric
class _StringsBiometricUr extends _StringsBiometricEn {
	_StringsBiometricUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get vault => 'والٹ سیکیورٹی';
	@override String get setupTitle => 'محفوظ لاک سیٹ اپ';
	@override String get setupSub => 'اپنے پسندیدہ تصدیقی طریقے سے اپنے والٹ کو محفوظ کریں۔';
	@override String get deviceTitle => 'ڈیوائس بائیومیٹرکس';
	@override String get deviceSub => 'FaceID یا فنگر پرنٹ استعمال کریں';
	@override String get pinTitle => 'ایپ کے لیے مخصوص پن';
	@override String get pinSub => 'ایک منفرد 4 ہندسوں کا کوڈ سیٹ کریں';
	@override String get dialogTitle => 'بائیومیٹرک رسائی کی اجازت دیں';
	@override String get dialogSub => 'ZiqeX کو ان لاک کرنے کے لیے اپنے فنگر پرنٹ یا ڈیوائس کے چہرے کی شناخت کا استعمال کریں';
	@override String get cancel => 'منسوخ کریں';
	@override String get allow => 'بائیومیٹرکس کی اجازت دیں';
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
	@override String get biometrics_title => 'ڈیوائس بائیومیٹرکس';
	@override String get biometrics_sub => 'اپنے فنگر پرنٹ یا چہرے سے فوری طور پر ان لاک کریں';
	@override String get pin_title => 'ZiqeX پن';
	@override String get pin_active => 'پن فعال ہے';
	@override String get pin_setup => 'ایپ کو ان لاک کرنے کے لیے ایک منفرد 4 ہندسوں کا کوڈ سیٹ کریں';
	@override String get warning_title => 'بہت زیادہ غلط کوششیں';
	@override String get warning_sub => 'اگر غلط پن 10 بار درج کیا جاتا ہے تو ZiqeX خود بخود ری سیٹ ہو جائے گا۔ اس ڈیوائس پر محفوظ تمام ڈیٹا مستقل طور پر حذف کر دیا جائے گا';
	@override String get incomplete_title => 'سیکیورٹی سیٹ اپ نامکمل';
	@override String get incomplete_content => 'آپ نے ایپ لاک فعال کر دیا ہے لیکن پن یا بائیومیٹرکس سیٹ نہیں کیا ہے۔ ایپ لاک اس وقت تک غیر فعال رہے گا جب تک کوئی طریقہ کنفیگر نہیں کیا جاتا۔';
	@override String get got_it => 'ٹھیک ہے';
}

// Path: data
class _StringsDataUr extends _StringsDataEn {
	_StringsDataUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ڈیٹا مینجمنٹ اور\nاسٹوریج';
	@override String get summary => 'اسٹوریج کا خلاصہ';
	@override String get totalUsed => 'کل استعمال شدہ: ';
	@override String get legendModel => 'ماڈل کا حجم';
	@override String get legendFree => 'خالی جگہ';
	@override String get mgmt => 'ماڈل مینجمنٹ';
	@override String get deleteModels => 'تمام ڈاؤن لوڈ کیے گئے ماڈلز حذف کریں';
	@override String get deleteModelsSub => 'اس ڈیوائس سے تمام مقامی ماڈل کے سائز اور پیرامیٹرز کو مکمل طور پر ہٹا دیں۔';
	@override String get selectDelete => 'حذف کرنے کے لیے ماڈلز منتخب کریں';
	@override String get autoDelete => 'اس سے پرانی چیٹس خودکار طور پر حذف کریں:';
	@override String get autoDeleteSub => 'یہ سیٹنگ تمام غیر منسلک گفتگو کے طریقوں پر لاگو ہوتی ہے۔';
	@override String get modes => 'موڈز';
	@override String get noData => 'کوئی فعال چیٹ ڈیٹا نہیں ہے';
	@override String get deleteAll => 'تمام ڈیٹا حذف کریں';
	@override String get authReq => 'ایپ لاک کے لیے دوبارہ تصدیق درکار ہے';
	@override String get viewChats => 'چیٹس دیکھیں';
	@override String get deleteAllPillar => 'سب حذف کریں';
	@override String get space => 'جگہ:';
	@override String get activeInstances => 'فعال انسٹینسز:';
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

// Path: model_mgmt
class _StringsModelMgmtUr extends _StringsModelMgmtEn {
	_StringsModelMgmtUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get appBar => 'ماڈل مینجمنٹ';
	@override String get subtitle => 'مقامی ایج AI زبان کے ماڈلز ترتیب دیں';
	@override String get status_loaded => 'لوڈ ہو گیا';
	@override String get status_unloaded => 'لوڈ نہیں ہوا';
	@override String get status_loading => 'لوڈ ہو رہا ہے...';
	@override String size({required Object size}) => 'سائز: ${size}';
	@override String get load => 'لوڈ کریں';
	@override String get unload => 'ان لوڈ کریں';
	@override String get download => 'ڈاؤن لوڈ';
	@override String get delete => 'حذف کریں';
	@override String get brahm_2b_desc => 'موبائل آلات پر کم تاخیر والے ٹیکسٹ کی تکمیل اور چیٹ کے لیے ڈیزائن کیا گیا انتہائی تیز کومپیکٹ ایج ماڈل۔';
	@override String get brahm_5b_desc => 'متوازن استدلال کا ماڈل جو بہتر ٹاسک کی درستگی اور پیچیدہ ہدایاتی کارکردگی پیش کرتا ہے۔';
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
			case 'pillars.journal': return 'Defence';
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
			case 'library_v2.pillars_title': return 'Pillars';
			case 'library_v2.pillars_desc': return 'Core intelligence domains';
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
			case 'model_mgmt.appBar': return 'Model Management';
			case 'model_mgmt.subtitle': return 'Configure local edge AI language models';
			case 'model_mgmt.status_loaded': return 'LOADED';
			case 'model_mgmt.status_unloaded': return 'UNLOADED';
			case 'model_mgmt.status_loading': return 'LOADING...';
			case 'model_mgmt.size': return ({required Object size}) => 'Size: ${size}';
			case 'model_mgmt.load': return 'Load';
			case 'model_mgmt.unload': return 'Unload';
			case 'model_mgmt.download': return 'Download';
			case 'model_mgmt.delete': return 'Delete';
			case 'model_mgmt.brahm_2b_desc': return 'Ultra-fast compact edge model designed for low-latency text completion and chat on mobile devices.';
			case 'model_mgmt.brahm_5b_desc': return 'Balanced reasoning model offering enhanced task accuracy and complex instructional performance.';
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
			case 'ask_image': return 'ছবিৰ বিষয়ে সোধক';
			case 'ask_image_sub': return 'ফৰ্ম · লেবেল · লিখনী';
			case 'panchang': return 'পঞ্জিকা';
			case 'panchang_sub': return 'আজিৰ তিথি আৰু মুহূৰ্ত';
			case 'ephemeral': return 'অস্থায়ী';
			case 'ephemeral_sub': return 'কোনো চিন নেৰাখাকৈ কথা পাতক';
			case 'recent': return 'শেহতীয়া';
			case 'home': return 'হোম';
			case 'chat': return 'চাট';
			case 'library': return 'লাইব্ৰেৰী';
			case 'you': return 'আপুনি';
			case 'settings_pref': return 'প্ৰফাইল ছেটিংছ';
			case 'preferences': return 'পছন্দসমূহ';
			case 'language': return 'ভাষা';
			case 'security': return 'সুৰক্ষা';
			case 'security_sub': return 'এপ লক · 2FA';
			case 'privacy_tiers': return 'গোপনীয়তাৰ স্তৰ';
			case 'privacy_tiers_sub': return '২টা সক্ৰিয় · ZiqeX-এ কেনেকৈ শুনে';
			case 'storage_purge': return 'ষ্টোৰেজ আৰু তথ্য মচি পেলোৱা';
			case 'storage_purge_sub': return 'ডিভাইচত ১৮৪ KB';
			case 'ephemeral_mode': return 'অস্থায়ী মোড';
			case 'about': return 'এপৰ বিষয়ে';
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
			case 'just_thinking': return 'মাত্ৰ ভাবি আছোঁ';
			case 'profile.access': return 'প্ৰৱেশাধিকাৰ';
			case 'profile.privacy': return 'গোপনীয়তা';
			case 'profile.system': return 'ছিষ্টেম';
			case 'profile.security_active': return 'সুৰক্ষা সক্ৰিয় আছে';
			case 'profile.security_inactive': return 'সুৰক্ষা নিষ্ক্ৰিয় আছে';
			case 'profile.dark_mode': return 'ডাৰ্ক মোড';
			case 'profile.dark_mode_sub': return 'লাইট আৰু ডাৰ্ক থিমৰ মাজত সলনি কৰক';
			case 'profile.data_mgmt': return 'তথ্য ব্যৱস্থাপনা';
			case 'profile.data_mgmt_sub': return 'আপোনাৰ চাটৰ ইতিহাস পৰিচালনা কৰক';
			case 'profile.app_lock': return 'এপ লক';
			case 'profile.app_lock_sub': return 'আঙুলিৰ ছাপ, মুখ বা PIN-ৰ জৰিয়তে ZiqeX সুৰক্ষিত কৰক';
			case 'profile.incognito_sub': return 'ইতিহাসত সংৰক্ষণ নকৰাকৈ চাট কৰক। ওলাই যোৱাৰ পিছত ইয়াক পুনৰুদ্ধাৰ কৰিব নোৱাৰি';
			case 'profile.version': return 'V0.1 • সাৰ্বভৌম • ডিভাইচত';
			case 'welcome.meet': return 'ZiqeX-ক লগ পাওক';
			case 'welcome.at_edge': return 'এজত বুদ্ধিমত্তা';
			case 'welcome.private': return 'ব্যক্তিগত এজ AI\nZenteiQ-ৰ দ্বাৰা';
			case 'welcome.begin': return 'আৰম্ভ কৰক';
			case 'info.title': return 'আপোনাৰ বাবে নিৰ্মিত বুদ্ধিমত্তা';
			case 'info.subtitle': return 'গোপনীয়তা, পছন্দ আৰু সম্পূৰ্ণ নিয়ন্ত্ৰণৰ সৈতে এক উপযোগী AI অভিজ্ঞতা।';
			case 'info.privacy_title': return 'গোপনীয়তাক প্ৰথম স্থান';
			case 'info.privacy_desc': return 'ZiqeX-ক আপোনাৰ তথ্য আৰু বুদ্ধিমত্তা আপোনাৰ ডিভাইচতে সুৰক্ষিত ৰাখিবলৈ ডিজাইন কৰা হৈছে।';
			case 'info.hand_title': return 'আপোনাৰ হাতত বুদ্ধিমত্তা';
			case 'info.hand_desc': return 'দৈনন্দিন প্ৰয়োজনৰ বাবে বুদ্ধিমত্তা, পোনপটীয়াকৈ আপোনাৰ ডিভাইচত উপলব্ধ।';
			case 'info.control_title': return 'আপোনাৰ তথ্য। আপোনাৰ নিয়ন্ত্ৰণ।';
			case 'info.control_desc': return 'কি ৰাখিব লাগে বাছনি কৰক, সংৰক্ষিত তথ্য পৰিচালনা কৰক আৰু যাৰ আৰু প্ৰয়োজন নাই সেয়া মচি পেলাওক।';
			case 'info.place_title': return 'সকলোৰে বাবে নিৰ্মিত';
			case 'info.place_desc': return 'বিভিন্ন ভাষা, ডিভাইচ আৰু মানুহে প্ৰযুক্তি ব্যৱহাৰ কৰা বিভিন্ন ধৰণৰ প্ৰয়োজনীয়তাৰ বাবে নিৰ্মিত।';
			case 'info.footer': return 'আপোনাৰ বুদ্ধিমত্তা। আপোনাৰ ডিভাইচ। আপোনাৰ নিয়ন্ত্ৰণ।';
			case 'info.setup': return 'আপোনাৰ ZiqeX ছেট আপ কৰক';
			case 'languageSelection.appBar': return 'ভাষা বাছনি';
			case 'languageSelection.title': return 'আপোনাৰ ভাষা বাছনি কৰক';
			case 'languageSelection.subtitle': return 'আপোনাৰ ইণ্টাৰফেচৰ বাবে ভাষা বাছনি কৰক।';
			case 'languageSelection.back': return 'পিছলৈ';
			case 'languageSelection.continueBtn': return 'আগবাঢ়ক';
			case 'pillars.appBar': return 'পিলাৰ বাছনি';
			case 'pillars.title': return 'আপোনাৰ পিলাৰসমূহ বাছনি কৰক';
			case 'pillars.subtitle': return 'আপুনি গুৰুত্ব দিব বিচৰা মুখ্য ক্ষমতাসমূহ বাছনি কৰক।';
			case 'pillars.general': return 'সাধাৰণ';
			case 'pillars.operational': return 'কাৰ্যকৰী';
			case 'pillars.personal': return 'ব্যক্তিগত পৰামৰ্শ';
			case 'pillars.workplace': return 'কৰ্মক্ষেত্ৰ';
			case 'pillars.culture': return 'সংস্কৃতি আৰু পৰিয়াল';
			case 'pillars.journal': return 'দৈনিক ডায়েৰী';
			case 'pillars.back': return 'পিছলৈ';
			case 'pillars.continueBtn': return 'আগবাঢ়ক';
			case 'modelDownload.title1': return 'BrahmAI-ক\nআপোনাৰ ডিভাইচলৈ ';
			case 'modelDownload.title2': return 'আনি আছোঁ।';
			case 'modelDownload.subtitle': return 'এয়া মাত্ৰ এবাৰহে কৰিব লাগিব। ইয়াৰ পিছত আমি আপোনাৰ তথ্য কেতিয়াও স্পৰ্শ নকৰোঁ।';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'প্ৰস্তুত';
			case 'modelDownload.validating': return 'যাচাই কৰা হৈছে...';
			case 'modelDownload.langs': return '১৪টা ভাষা';
			case 'modelDownload.toks': return '~১৮ tok/s';
			case 'modelDownload.ttft': return '~১৪০ ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'ত্ৰুটি: ${error}';
			case 'modelDownload.retry': return 'পুনৰ চেষ্টা কৰক';
			case 'modelDownload.open': return 'খোলক';
			case 'modelDownload.download': return 'ডাউনলোড কৰক';
			case 'modelDownload.later': return 'পিছত ছেট আপ কৰক';
			case 'modelDownload.continueSub': return 'মডেল ডাউনলোড নকৰাকৈ আগবাঢ়ক। আপুনি সাজু হ\'লে পিছত এটা যোগ কৰিব পাৰিব';
			case 'library_v2.subtitle': return 'আপোনাৰ AI সম্পদসমূহ পৰিচালনা কৰক';
			case 'library_v2.language_title': return 'ভাষা';
			case 'library_v2.language_desc': return 'ভাষাসমূহ বাছনি আৰু পৰিচালনা কৰক';
			case 'library_v2.model_title': return 'মডেল';
			case 'library_v2.model_desc': return 'AI মডেলসমূহ অন্বেষণ আৰু পৰিচালনা কৰক';
			case 'library_v2.saved_title': return 'সংৰক্ষিত';
			case 'library_v2.saved_desc': return 'আপোনাৰ প্ৰম্পট লাইব্ৰেৰী';
			case 'library_v2.skills_title': return 'দক্ষতা';
			case 'library_v2.skills_desc': return 'AI ক্ষমতাসমূহ';
			case 'library_v2.pillars_title': return 'পিলাৰ';
			case 'library_v2.pillars_desc': return 'মুখ্য ক্ষমতা';
			case 'biometric.vault': return 'ভল্ট সুৰক্ষা';
			case 'biometric.setupTitle': return 'সুৰক্ষিত লক ছেট আপ কৰক';
			case 'biometric.setupSub': return 'আপোনাৰ পছন্দৰ প্ৰমাণীকৰণ পদ্ধতিৰে আপোনাৰ ভল্ট সুৰক্ষিত কৰক।';
			case 'biometric.deviceTitle': return 'ডিভাইচ বায়োমেট্ৰিক্স';
			case 'biometric.deviceSub': return 'Face ID বা আঙুলিৰ ছাপ';
			case 'biometric.pinTitle': return 'PIN ক\'ড';
			case 'biometric.pinSub': return 'এটা অনন্য ৪-অংকৰ ক\'ড ছেট কৰক';
			case 'biometric.dialogTitle': return 'বায়োমেট্ৰিক প্ৰৱেশৰ অনুমতি দিয়ক';
			case 'biometric.dialogSub': return 'ZiqeX আনলক কৰিবলৈ আপোনাৰ আঙুলিৰ ছাপ বা মুখ চিনাক্তকৰণ ব্যৱহাৰ কৰক';
			case 'biometric.cancel': return 'বাতিল কৰক';
			case 'biometric.allow': return 'অনুমতি দিয়ক';
			case 'security_screen.appBar': return 'এপ সুৰক্ষা';
			case 'security_screen.global_protection': return 'সামগ্ৰিক সুৰক্ষা';
			case 'security_screen.app_lock': return 'এপ লক';
			case 'security_screen.app_lock_sub': return 'ZiqeX খুলিবলৈ প্ৰমাণীকৰণৰ প্ৰয়োজন';
			case 'security_screen.auth_methods': return 'প্ৰমাণীকৰণ পদ্ধতিসমূহ';
			case 'security_screen.biometrics_title': return 'ডিভাইচ বায়োমেট্ৰিক্স';
			case 'security_screen.biometrics_sub': return 'আপোনাৰ আঙুলিৰ ছাপ বা মুখৰ জৰিয়তে তৎক্ষণাত আনলক কৰক';
			case 'security_screen.pin_title': return 'ZiqeX PIN';
			case 'security_screen.pin_active': return 'PIN সক্ৰিয় আছে';
			case 'security_screen.pin_setup': return 'এপটো আনলক কৰিবলৈ এটা অনন্য ৪-অংকৰ PIN ছেট কৰক';
			case 'security_screen.warning_title': return 'অত্যধিক ভুল প্ৰচেষ্টা';
			case 'security_screen.warning_sub': return 'যদি ভুল PIN ১০ বাৰ দিয়া হয়, তেন্তে ZiqeX স্বয়ংক্ৰিয়ভাৱে ৰিছেট হ\'ব। এই ডিভাইচত সংৰক্ষিত সকলো তথ্য স্থায়ীভাৱে মচি পেলোৱা হ\'ব';
			case 'security_screen.incomplete_title': return 'সুৰক্ষা ছেটআপ অসম্পূৰ্ণ';
			case 'security_screen.incomplete_content': return 'আপুনি এপ লক সক্ৰিয় কৰিছে, কিন্তু PIN বা বায়োমেট্ৰিক্স ছেট কৰা নাই। কোনো এটা পদ্ধতি ছেট নকৰালৈকে এপ লক নিষ্ক্ৰিয় হৈ থাকিব।';
			case 'security_screen.got_it': return 'বুজিলোঁ';
			case 'pin_setup.title_setup': return '৪-অংকৰ PIN ছেট কৰক';
			case 'pin_setup.subtitle_setup': return 'এপটো ব্যৱহাৰ কৰিবলৈ এটা সুৰক্ষিত ক\'ড তৈয়াৰ কৰক';
			case 'pin_setup.title_confirm': return 'PIN নিশ্চিত কৰক';
			case 'pin_setup.subtitle_confirm': return 'যাচাই কৰিবলৈ আপোনাৰ ৪-অংকৰ PIN আকৌ লিখক';
			case 'pin_setup.title_verify': return 'বৰ্তমানৰ PIN লিখক';
			case 'pin_setup.subtitle_verify': return 'আগবাঢ়িবলৈ আপোনাৰ বৰ্তমানৰ PIN লিখক';
			case 'pin_setup.error_mismatch': return 'PIN দুটা মিল খোৱা নাই। পুনৰ চেষ্টা কৰক।';
			case 'pin_setup.error_incorrect': return 'ভুল PIN। পুনৰ চেষ্টা কৰক।';
			case 'pin_setup.snack_success': return 'PIN সফলতাৰে ছেট কৰা হ\'ল';
			case 'pin_mgmt.appBar': return 'এপ PIN';
			case 'pin_mgmt.change_title': return 'PIN সলনি কৰক';
			case 'pin_mgmt.change_sub': return 'আপোনাৰ ৪-অংকৰ ZiqeX সুৰক্ষা ক\'ড আপডেট কৰক';
			case 'pin_mgmt.remove_title': return 'PIN আঁতৰাওক';
			case 'pin_mgmt.remove_sub': return 'ZiqeX-ৰ বাবে PIN ব্যৱহাৰ বন্ধ কৰক';
			case 'pin_mgmt.snack_removed': return 'PIN সফলতাৰে আঁতৰোৱা হ\'ল';
			case 'lang_legacy.title1': return 'কোনটো ভাষা\n';
			case 'lang_legacy.title2': return 'আপোনাৰ নিজৰ যেন লাগে?';
			case 'lang_legacy.subtitle': return 'আপোনাৰ মাতৃভাষাত কণ্ঠ, লিখনী আৰু উত্তৰ লাভ কৰক। যিকোনো সময়তে ভাষা সলনি কৰিব পাৰে।';
			case 'lang_legacy.first_reply': return 'প্ৰথম উত্তৰটো এনেকুৱা হ\'ব';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - আপোনাৰ লিপিত লিখা আৰু কোৱা হ\'ব';
			case 'lang_legacy.continueBtn': return 'আগবাঢ়ক';
			case 'model_mgmt.appBar': return 'মডেল ব্যৱস্থাপনা';
			case 'model_mgmt.subtitle': return 'স্থানীয় এজ AI ভাষা মডেলসমূহ কনফিগাৰ কৰক';
			case 'model_mgmt.status_loaded': return 'লোড কৰা হৈছে';
			case 'model_mgmt.status_unloaded': return 'লোড কৰা হোৱা নাই';
			case 'model_mgmt.status_loading': return 'লোড হৈ আছে...';
			case 'model_mgmt.size': return ({required Object size}) => 'আকাৰ: ${size}';
			case 'model_mgmt.load': return 'লোড কৰক';
			case 'model_mgmt.unload': return 'আনলোড কৰক';
			case 'model_mgmt.download': return 'ডাউনলোড';
			case 'model_mgmt.delete': return 'মচি পেলাওক';
			case 'model_mgmt.brahm_2b_desc': return 'ম\'বাইল ডিভাইচত কম লেটেন্সি টেক্সট কমপ্লিশ্যন আৰু চ্যাটৰ বাবে ডিজাইন কৰা অতি-দ্ৰুত কমপ্যাক্ট এজ মডেল।';
			case 'model_mgmt.brahm_5b_desc': return 'উন্নত টাস্ক নিখুঁততা আৰু জটিল নিৰ্দেশনামূলক প্ৰদৰ্শন আগবڑھোৱা সন্তুলিত ৰিজনিং মডেল।';
			default: return null;
		}
	}
}

extension on _StringsBn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'নমস্কার';
			case 'mind_today': return 'আজ আপনার মনে কী চলছে?';
			case 'on_device_only': return 'শুধুমাত্র এই ডিভাইসে';
			case 'offline': return 'অফলাইন';
			case 'start_something': return 'কিছু শুরু করুন';
			case 'ask_anything': return 'যেকোনো কিছু জিজ্ঞাসা করুন';
			case 'ask_anything_sub': return 'স্বাস্থ্য · আইনি · ব্যক্তিগত · কাজ';
			case 'voice_mode': return 'ভয়েস মোড';
			case 'voice_mode_sub': return 'আপনার ভাষায় কথা বলুন';
			case 'ask_image': return 'ছবি সম্পর্কে জিজ্ঞাসা করুন';
			case 'ask_image_sub': return 'ফর্ম · লেবেল · লেখা';
			case 'panchang': return 'পঞ্জিকা';
			case 'panchang_sub': return 'আজকের তিথি ও মুহূর্ত';
			case 'ephemeral': return 'সাময়িক';
			case 'ephemeral_sub': return 'কোনো চিহ্ন না রেখে চ্যাট করুন';
			case 'recent': return 'সাম্প্রতিক';
			case 'home': return 'হোম';
			case 'chat': return 'চ্যাট';
			case 'library': return 'লাইব্রেরি';
			case 'you': return 'আপনি';
			case 'settings_pref': return 'প্রোফাইল সেটিংস';
			case 'preferences': return 'পছন্দসমূহ';
			case 'language': return 'ভাষা';
			case 'security': return 'নিরাপত্তা';
			case 'security_sub': return 'অ্যাপ লক · 2FA';
			case 'privacy_tiers': return 'গোপনীয়তার স্তর';
			case 'privacy_tiers_sub': return '২টি সক্রিয় · ZiqeX কীভাবে শোনে';
			case 'storage_purge': return 'স্টোরেজ ও ডেটা মুছে ফেলা';
			case 'storage_purge_sub': return 'ডিভাইসে ১৮৪ KB';
			case 'ephemeral_mode': return 'সাময়িক মোড';
			case 'about': return 'অ্যাপ সম্পর্কে';
			case 'reset_prototype': return 'প্রোটোটাইপ রিসেট করুন';
			case 'built_in_india': return 'ভারতে নির্মিত। বিশ্বের জন্য।';
			case 'library_sub': return 'প্রতিটি মডেল · প্রতিটি মেমোরি · এই ডিভাইসে';
			case 'on_this_device': return 'এই ডিভাইসে';
			case 'active': return 'সক্রিয়';
			case 'add': return '+ যোগ করুন';
			case 'storage_used': return 'ব্যবহৃত স্টোরেজ';
			case 'health_question': return 'স্বাস্থ্য সম্পর্কিত প্রশ্ন';
			case 'family': return 'পরিবার';
			case 'work': return 'কাজ';
			case 'just_thinking': return 'শুধু ভাবছি';
			case 'profile.access': return 'অ্যাক্সেস';
			case 'profile.privacy': return 'গোপনীয়তা';
			case 'profile.system': return 'সিস্টেম';
			case 'profile.security_active': return 'নিরাপত্তা সক্রিয় আছে';
			case 'profile.security_inactive': return 'নিরাপত্তা নিষ্ক্রিয় আছে';
			case 'profile.dark_mode': return 'ডার্ক মোড';
			case 'profile.dark_mode_sub': return 'লাইট ও ডার্ক থিমের মধ্যে পরিবর্তন করুন';
			case 'profile.data_mgmt': return 'ডেটা ব্যবস্থাপনা';
			case 'profile.data_mgmt_sub': return 'আপনার চ্যাটের ইতিহাস পরিচালনা করুন';
			case 'profile.app_lock': return 'অ্যাপ লক';
			case 'profile.app_lock_sub': return 'আঙুলের ছাপ, মুখ বা PIN দিয়ে ZiqeX সুরক্ষিত করুন';
			case 'profile.incognito_sub': return 'ইতিহাসে সংরক্ষণ না করেই চ্যাট করুন। বেরিয়ে যাওয়ার পরে এটি পুনরুদ্ধার করা যাবে না';
			case 'profile.version': return 'V0.1 • সার্বভৌম • ডিভাইসে';
			case 'welcome.meet': return 'ZiqeX-এর সঙ্গে পরিচিত হন';
			case 'welcome.at_edge': return 'এজে বুদ্ধিমত্তা';
			case 'welcome.private': return 'ব্যক্তিগত এজ AI\nZenteiQ দ্বারা';
			case 'welcome.begin': return 'শুরু করুন';
			case 'info.title': return 'আপনার জন্য তৈরি বুদ্ধিমত্তা';
			case 'info.subtitle': return 'গোপনীয়তা, পছন্দ এবং সম্পূর্ণ নিয়ন্ত্রণসহ একটি কার্যকর AI অভিজ্ঞতা।';
			case 'info.privacy_title': return 'গোপনীয়তা সবার আগে';
			case 'info.privacy_desc': return 'ZiqeX আপনার তথ্য এবং বুদ্ধিমত্তাকে আপনার ডিভাইসেই সুরক্ষিত রাখার জন্য ডিজাইন করা হয়েছে।';
			case 'info.hand_title': return 'আপনার হাতের মুঠোয় বুদ্ধিমত্তা';
			case 'info.hand_desc': return 'দৈনন্দিন প্রয়োজনের বুদ্ধিমত্তা, সরাসরি আপনার ডিভাইসে উপলব্ধ।';
			case 'info.control_title': return 'আপনার ডেটা। আপনার নিয়ন্ত্রণ।';
			case 'info.control_desc': return 'কী রাখবেন তা বেছে নিন, সংরক্ষিত ডেটা পরিচালনা করুন এবং যার আর প্রয়োজন নেই তা মুছে ফেলুন।';
			case 'info.place_title': return 'সবার জন্য তৈরি';
			case 'info.place_desc': return 'বিভিন্ন ভাষা, ডিভাইস এবং মানুষ যেভাবে প্রযুক্তি ব্যবহার করেন, সেই বিভিন্ন প্রয়োজনের কথা মাথায় রেখে তৈরি।';
			case 'info.footer': return 'আপনার বুদ্ধিমত্তা। আপনার ডিভাইস। আপনার নিয়ন্ত্রণ।';
			case 'info.setup': return 'আপনার ZiqeX সেট আপ করুন';
			case 'languageSelection.appBar': return 'ভাষা নির্বাচন';
			case 'languageSelection.title': return 'আপনার ভাষা বেছে নিন';
			case 'languageSelection.subtitle': return 'আপনার ইন্টারফেসের জন্য ভাষা নির্বাচন করুন।';
			case 'languageSelection.back': return 'পিছনে';
			case 'languageSelection.continueBtn': return 'চালিয়ে যান';
			case 'pillars.appBar': return 'পিলার নির্বাচন';
			case 'pillars.title': return 'আপনার পিলারগুলি বেছে নিন';
			case 'pillars.subtitle': return 'আপনি যে মূল সক্ষমতাগুলিতে মনোযোগ দিতে চান, সেগুলি বেছে নিন।';
			case 'pillars.general': return 'সাধারণ';
			case 'pillars.operational': return 'পরিচালনামূলক';
			case 'pillars.personal': return 'ব্যক্তিগত পরামর্শ';
			case 'pillars.workplace': return 'কর্মক্ষেত্র';
			case 'pillars.culture': return 'সংস্কৃতি ও পরিবার';
			case 'pillars.journal': return 'দৈনিক ডায়েরি';
			case 'pillars.back': return 'পিছনে';
			case 'pillars.continueBtn': return 'চালিয়ে যান';
			case 'modelDownload.title1': return 'BrahmAI-কে\nআপনার ডিভাইসে ';
			case 'modelDownload.title2': return 'নিয়ে আসছি।';
			case 'modelDownload.subtitle': return 'এটি একবারের সেটআপ। এরপর আমরা আর কখনও আপনার ডেটা অ্যাক্সেস করব না।';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'প্রস্তুত';
			case 'modelDownload.validating': return 'যাচাই করা হচ্ছে...';
			case 'modelDownload.langs': return '১৪টি ভাষা';
			case 'modelDownload.toks': return '~১৮ tok/s';
			case 'modelDownload.ttft': return '~১৪০ ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'ত্রুটি: ${error}';
			case 'modelDownload.retry': return 'আবার চেষ্টা করুন';
			case 'modelDownload.open': return 'খুলুন';
			case 'modelDownload.download': return 'ডাউনলোড করুন';
			case 'modelDownload.later': return 'পরে সেট আপ করুন';
			case 'modelDownload.continueSub': return 'মডেল ডাউনলোড না করেই চালিয়ে যান। প্রস্তুত হলে পরে একটি মডেল যোগ করতে পারেন';
			case 'library_v2.subtitle': return 'আপনার AI সংস্থানগুলি পরিচালনা করুন';
			case 'library_v2.language_title': return 'ভাষা';
			case 'library_v2.language_desc': return 'ভাষা বেছে নিন ও পরিচালনা করুন';
			case 'library_v2.model_title': return 'মডেল';
			case 'library_v2.model_desc': return 'AI মডেলগুলি খুঁজে দেখুন ও পরিচালনা করুন';
			case 'library_v2.saved_title': return 'সংরক্ষিত';
			case 'library_v2.saved_desc': return 'আপনার প্রম্পট লাইব্রেরি';
			case 'library_v2.skills_title': return 'দক্ষতা';
			case 'library_v2.skills_desc': return 'AI সক্ষমতা';
			case 'library_v2.pillars_title': return 'পিলার';
			case 'library_v2.pillars_desc': return 'মূল বুদ্ধিমত্তা ক্ষেত্র';
			case 'biometric.vault': return 'ভল্ট নিরাপত্তা';
			case 'biometric.setupTitle': return 'নিরাপদ লক সেট আপ করুন';
			case 'biometric.setupSub': return 'আপনার পছন্দের প্রমাণীকরণ পদ্ধতি দিয়ে ভল্টটি সুরক্ষিত করুন।';
			case 'biometric.deviceTitle': return 'ডিভাইস বায়োমেট্রিক্স';
			case 'biometric.deviceSub': return 'Face ID বা আঙুলের ছাপ';
			case 'biometric.pinTitle': return 'PIN কোড';
			case 'biometric.pinSub': return 'একটি অনন্য ৪-সংখ্যার কোড সেট করুন';
			case 'biometric.dialogTitle': return 'বায়োমেট্রিক অ্যাক্সেসের অনুমতি দিন';
			case 'biometric.dialogSub': return 'ZiqeX আনলক করতে আপনার আঙুলের ছাপ বা মুখ শনাক্তকরণ ব্যবহার করুন';
			case 'biometric.cancel': return 'বাতিল করুন';
			case 'biometric.allow': return 'অনুমতি দিন';
			case 'security_screen.appBar': return 'অ্যাপ নিরাপত্তা';
			case 'security_screen.global_protection': return 'সামগ্রিক নিরাপত্তা';
			case 'security_screen.app_lock': return 'অ্যাপ লক';
			case 'security_screen.app_lock_sub': return 'ZiqeX খুলতে প্রমাণীকরণ প্রয়োজন';
			case 'security_screen.auth_methods': return 'প্রমাণীকরণ পদ্ধতি';
			case 'security_screen.biometrics_title': return 'ডিভাইস বায়োমেট্রিক্স';
			case 'security_screen.biometrics_sub': return 'আপনার আঙুলের ছাপ বা মুখ দিয়ে দ্রুত আনলক করুন';
			case 'security_screen.pin_title': return 'ZiqeX PIN';
			case 'security_screen.pin_active': return 'PIN সক্রিয় আছে';
			case 'security_screen.pin_setup': return 'অ্যাপ আনলক করতে একটি অনন্য ৪-সংখ্যার PIN সেট করুন';
			case 'security_screen.warning_title': return 'অতিরিক্ত ভুল প্রচেষ্টা';
			case 'security_screen.warning_sub': return 'ভুল PIN ১০ বার দেওয়া হলে ZiqeX স্বয়ংক্রিয়ভাবে রিসেট হবে। এই ডিভাইসে সংরক্ষিত সমস্ত ডেটা স্থায়ীভাবে মুছে ফেলা হবে';
			case 'security_screen.incomplete_title': return 'নিরাপত্তা সেটআপ অসম্পূর্ণ';
			case 'security_screen.incomplete_content': return 'আপনি অ্যাপ লক চালু করেছেন, কিন্তু PIN বা বায়োমেট্রিক্স সেট করেননি। কোনো একটি পদ্ধতি সেট না করা পর্যন্ত অ্যাপ লক নিষ্ক্রিয় থাকবে।';
			case 'security_screen.got_it': return 'বুঝেছি';
			case 'data.appBar': return 'ডেটা ব্যবস্থাপনা';
			case 'data.summary': return 'স্টোরেজের সারাংশ';
			case 'data.totalUsed': return 'মোট ব্যবহৃত: ';
			case 'data.legendModel': return 'মডেল ওয়েট';
			case 'data.legendFree': return 'খালি জায়গা';
			case 'data.mgmt': return 'মডেল ব্যবস্থাপনা';
			case 'data.deleteModels': return 'ডাউনলোড করা সব মডেল মুছে ফেলুন';
			case 'data.deleteModelsSub': return 'এই ডিভাইস থেকে সমস্ত স্থানীয় মডেল ওয়েট এবং ফাইন-টিউন করা প্যারামিটার সম্পূর্ণভাবে সরিয়ে দিন।';
			case 'data.selectDelete': return 'মুছে ফেলার জন্য মডেল নির্বাচন করুন';
			case 'data.autoDelete': return 'এর চেয়ে পুরোনো চ্যাট স্বয়ংক্রিয়ভাবে মুছুন:';
			case 'data.autoDeleteSub': return 'এই সেটিংটি সমস্ত আনলিঙ্কড কথোপকথন মোডে প্রযোজ্য।';
			case 'data.modes': return 'মোডসমূহ';
			case 'data.noData': return 'কোনো সক্রিয় চ্যাট ডেটা নেই';
			case 'data.deleteAll': return 'সমস্ত ডেটা মুছে ফেলুন';
			case 'data.authReq': return 'পুনরায় প্রমাণীকরণ প্রয়োজন';
			case 'data.viewChats': return 'চ্যাট দেখুন';
			case 'data.deleteAllPillar': return 'সব মুছে ফেলুন';
			case 'data.space': return 'জায়গা:';
			case 'data.activeInstances': return 'সক্রিয় ইনস্ট্যান্স:';
			case 'pin_setup.title_setup': return '৪-সংখ্যার PIN সেট করুন';
			case 'pin_setup.subtitle_setup': return 'অ্যাপ অ্যাক্সেস করার জন্য একটি নিরাপদ কোড তৈরি করুন';
			case 'pin_setup.title_confirm': return 'PIN নিশ্চিত করুন';
			case 'pin_setup.subtitle_confirm': return 'যাচাই করতে আপনার ৪-সংখ্যার PIN আবার লিখুন';
			case 'pin_setup.title_verify': return 'বর্তমান PIN লিখুন';
			case 'pin_setup.subtitle_verify': return 'চালিয়ে যেতে আপনার বর্তমান PIN লিখুন';
			case 'pin_setup.error_mismatch': return 'PIN দুটি মেলেনি। আবার চেষ্টা করুন।';
			case 'pin_setup.error_incorrect': return 'ভুল PIN। আবার চেষ্টা করুন।';
			case 'pin_setup.snack_success': return 'PIN সফলভাবে সেট করা হয়েছে';
			case 'pin_mgmt.appBar': return 'অ্যাপ PIN';
			case 'pin_mgmt.change_title': return 'PIN পরিবর্তন করুন';
			case 'pin_mgmt.change_sub': return 'আপনার ৪-সংখ্যার ZiqeX নিরাপত্তা কোড আপডেট করুন';
			case 'pin_mgmt.remove_title': return 'PIN সরিয়ে দিন';
			case 'pin_mgmt.remove_sub': return 'ZiqeX-এর জন্য PIN অ্যাক্সেস বন্ধ করুন';
			case 'pin_mgmt.snack_removed': return 'PIN সফলভাবে সরিয়ে দেওয়া হয়েছে';
			case 'lang_legacy.title1': return 'কোন ভাষাটি\n';
			case 'lang_legacy.title2': return 'আপনার নিজের মনে হয়?';
			case 'lang_legacy.subtitle': return 'আপনার মাতৃভাষায় ভয়েস, টেক্সট এবং উত্তর পান। যেকোনো সময় পরিবর্তন করতে পারেন।';
			case 'lang_legacy.first_reply': return 'প্রথম উত্তরটি হবে';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - আপনার লিপিতে লেখা ও বলা হবে';
			case 'lang_legacy.continueBtn': return 'চালিয়ে যান';
			case 'model_mgmt.appBar': return 'মডেল ম্যানেজমেন্ট';
			case 'model_mgmt.subtitle': return 'স্থানীয় এজ AI ভাষা মডেল কনফিগার করুন';
			case 'model_mgmt.status_loaded': return 'লোড হয়েছে';
			case 'model_mgmt.status_unloaded': return 'লোড হয়নি';
			case 'model_mgmt.status_loading': return 'লোড হচ্ছে...';
			case 'model_mgmt.size': return ({required Object size}) => 'আকার: ${size}';
			case 'model_mgmt.load': return 'লোড করুন';
			case 'model_mgmt.unload': return 'আনলোড করুন';
			case 'model_mgmt.download': return 'ডাউনলোড';
			case 'model_mgmt.delete': return 'মুছে ফেলুন';
			case 'model_mgmt.brahm_2b_desc': return 'মোবাইল ডিভাইসে লো-লেটেন্সি টেক্সট কমপ্লিশন এবং চ্যাটের জন্য ডিজাইন করা অতি-দ্রুত কমপ্যাক্ট এজ মডেল।';
			case 'model_mgmt.brahm_5b_desc': return 'উন্নত টাস্ক নির্ভুলতা এবং জটিল নির্দেশনামূলক কর্মক্ষমতা প্রদানকারী ভারসাম্যপূর্ণ রিজনিং মডেল।';
			default: return null;
		}
	}
}

extension on _StringsGu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'નમસ્તે';
			case 'mind_today': return 'આજે તમારા મનમાં શું ચાલી રહ્યું છે?';
			case 'on_device_only': return 'માત્ર આ ઉપકરણ પર';
			case 'offline': return 'ઑફલાઇન';
			case 'start_something': return 'કંઈક શરૂ કરો';
			case 'ask_anything': return 'કંઈપણ પૂછો';
			case 'ask_anything_sub': return 'સ્વાસ્થ્ય · કાનૂની · વ્યક્તિગત · કામ';
			case 'voice_mode': return 'વૉઇસ મોડ';
			case 'voice_mode_sub': return 'તમારી ભાષામાં બોલો';
			case 'ask_image': return 'છબી વિશે પૂછો';
			case 'ask_image_sub': return 'ફોર્મ · લેબલ · લખાણ';
			case 'panchang': return 'પંચાંગ';
			case 'panchang_sub': return 'આજની તિથિ અને મુહૂર્ત';
			case 'ephemeral': return 'કામચલાઉ';
			case 'ephemeral_sub': return 'કોઈ નિશાન રાખ્યા વિના ચેટ કરો';
			case 'recent': return 'તાજેતરના';
			case 'home': return 'હોમ';
			case 'chat': return 'ચેટ';
			case 'library': return 'લાઇબ્રેરી';
			case 'you': return 'તમે';
			case 'settings_pref': return 'પ્રોફાઇલ સેટિંગ્સ';
			case 'preferences': return 'પસંદગીઓ';
			case 'language': return 'ભાષા';
			case 'security': return 'સુરક્ષા';
			case 'security_sub': return 'એપ લૉક · 2FA';
			case 'privacy_tiers': return 'ગોપનીયતાના સ્તરો';
			case 'privacy_tiers_sub': return '૨ સક્રિય · ZiqeX કેવી રીતે સાંભળે છે';
			case 'storage_purge': return 'સ્ટોરેજ અને ડેટા કાઢી નાખવું';
			case 'storage_purge_sub': return 'ઉપકરણ પર ૧૮૪ KB';
			case 'ephemeral_mode': return 'કામચલાઉ મોડ';
			case 'about': return 'એપ વિશે';
			case 'reset_prototype': return 'પ્રોટોટાઇપ રીસેટ કરો';
			case 'built_in_india': return 'ભારતમાં નિર્મિત. વિશ્વ માટે.';
			case 'library_sub': return 'દરેક મોડેલ · દરેક મેમરી · આ ઉપકરણ પર';
			case 'on_this_device': return 'આ ઉપકરણ પર';
			case 'active': return 'સક્રિય';
			case 'add': return '+ ઉમેરો';
			case 'storage_used': return 'વપરાયેલ સ્ટોરેજ';
			case 'health_question': return 'સ્વાસ્થ્ય સંબંધિત પ્રશ્ન';
			case 'family': return 'પરિવાર';
			case 'work': return 'કામ';
			case 'just_thinking': return 'બસ વિચારી રહ્યો છું';
			case 'profile.access': return 'ઍક્સેસ';
			case 'profile.privacy': return 'ગોપનીયતા';
			case 'profile.system': return 'સિસ્ટમ';
			case 'profile.security_active': return 'સુરક્ષા સક્રિય છે';
			case 'profile.security_inactive': return 'સુરક્ષા નિષ્ક્રિય છે';
			case 'profile.dark_mode': return 'ડાર્ક મોડ';
			case 'profile.dark_mode_sub': return 'લાઇટ અને ડાર્ક થીમ વચ્ચે બદલો';
			case 'profile.data_mgmt': return 'ડેટા વ્યવસ્થાપન';
			case 'profile.data_mgmt_sub': return 'તમારા ચેટ ઇતિહાસનું સંચાલન કરો';
			case 'profile.app_lock': return 'એપ લૉક';
			case 'profile.app_lock_sub': return 'તમારી ફિંગરપ્રિન્ટ, ચહેરો અથવા PIN વડે ZiqeX ને સુરક્ષિત કરો';
			case 'profile.incognito_sub': return 'ઇતિહાસમાં સાચવ્યા વિના ચેટ કરો. બહાર નીકળ્યા પછી તેને પુનઃપ્રાપ્ત કરી શકાશે નહીં';
			case 'profile.version': return 'V0.1 • સાર્વભૌમ • ઉપકરણ પર';
			case 'welcome.meet': return 'ZiqeX ને મળો';
			case 'welcome.at_edge': return 'એજ પરની બુદ્ધિમત્તા';
			case 'welcome.private': return 'ખાનગી એજ AI\nZenteiQ દ્વારા';
			case 'welcome.begin': return 'શરૂ કરો';
			case 'info.title': return 'તમારા માટે રચાયેલી બુદ્ધિમત્તા';
			case 'info.subtitle': return 'ગોપનીયતા, પસંદગી અને સંપૂર્ણ નિયંત્રણ સાથેનો ઉપયોગી AI અનુભવ.';
			case 'info.privacy_title': return 'ગોપનીયતા પ્રથમ';
			case 'info.privacy_desc': return 'ZiqeX તમારી બુદ્ધિમત્તા અને માહિતીને તમારા ઉપકરણ પર જ સુરક્ષિત રાખવા માટે રચાયેલ છે.';
			case 'info.hand_title': return 'તમારા હાથમાં બુદ્ધિમત્તા';
			case 'info.hand_desc': return 'રોજિંદી જરૂરિયાતો માટેની બુદ્ધિમત્તા, સીધી તમારા ઉપકરણ પર ઉપલબ્ધ.';
			case 'info.control_title': return 'તમારો ડેટા. તમારું નિયંત્રણ.';
			case 'info.control_desc': return 'શું રાખવું તે પસંદ કરો, સાચવેલા ડેટાનું સંચાલન કરો અને જેની હવે જરૂર નથી તેને કાઢી નાખો.';
			case 'info.place_title': return 'દરેક માટે રચાયેલ';
			case 'info.place_desc': return 'વિવિધ ભાષાઓ, ઉપકરણો અને લોકો ટેક્નોલોજીનો ઉપયોગ કરે છે તે વિવિધ રીતોને ધ્યાનમાં રાખીને બનાવવામાં આવ્યું છે.';
			case 'info.footer': return 'તમારી બુદ્ધિમત્તા. તમારું ઉપકરણ. તમારું નિયંત્રણ.';
			case 'info.setup': return 'તમારું ZiqeX સેટ અપ કરો';
			case 'languageSelection.appBar': return 'ભાષા પસંદગી';
			case 'languageSelection.title': return 'તમારી ભાષા પસંદ કરો';
			case 'languageSelection.subtitle': return 'તમારા ઇન્ટરફેસ માટે ભાષા પસંદ કરો.';
			case 'languageSelection.back': return 'પાછળ';
			case 'languageSelection.continueBtn': return 'ચાલુ રાખો';
			case 'pillars.appBar': return 'પિલર પસંદગી';
			case 'pillars.title': return 'તમારા પિલર પસંદ કરો';
			case 'pillars.subtitle': return 'તમે જે મુખ્ય ક્ષમતાઓ પર ધ્યાન કેન્દ્રિત કરવા માંગો છો તે પસંદ કરો.';
			case 'pillars.general': return 'સામાન્ય';
			case 'pillars.operational': return 'પરિચાલનાત્મક';
			case 'pillars.personal': return 'વ્યક્તિગત સલાહ';
			case 'pillars.workplace': return 'કાર્યસ્થળ';
			case 'pillars.culture': return 'સંસ્કૃતિ અને પરિવાર';
			case 'pillars.journal': return 'દૈનિક ડાયરી';
			case 'pillars.back': return 'પાછળ';
			case 'pillars.continueBtn': return 'ચાલુ રાખો';
			case 'modelDownload.title1': return 'BrahmAI ને\nતમારા ઉપકરણ પર ';
			case 'modelDownload.title2': return 'લાવી રહ્યા છીએ.';
			case 'modelDownload.subtitle': return 'આ એક વખતનું સેટઅપ છે. ત્યાર પછી અમે તમારા ડેટાને ફરી ક્યારેય ઍક્સેસ કરીશું નહીં.';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'તૈયાર';
			case 'modelDownload.validating': return 'ચકાસણી થઈ રહી છે...';
			case 'modelDownload.langs': return '૧૪ ભાષાઓ';
			case 'modelDownload.toks': return '~18 tok/s';
			case 'modelDownload.ttft': return '~140 ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'ભૂલ: ${error}';
			case 'modelDownload.retry': return 'ફરી પ્રયાસ કરો';
			case 'modelDownload.open': return 'ખોલો';
			case 'modelDownload.download': return 'ડાઉનલોડ કરો';
			case 'modelDownload.later': return 'પછી સેટ અપ કરો';
			case 'modelDownload.continueSub': return 'મોડેલ ડાઉનલોડ કર્યા વિના આગળ વધો. જ્યારે તમે તૈયાર હોવ ત્યારે પછીથી એક મોડેલ ઉમેરી શકો છો';
			case 'library_v2.subtitle': return 'તમારા AI સંસાધનોનું સંચાલન કરો';
			case 'library_v2.language_title': return 'ભાષા';
			case 'library_v2.language_desc': return 'ભાષાઓ પસંદ કરો અને તેનું સંચાલન કરો';
			case 'library_v2.model_title': return 'મોડેલ';
			case 'library_v2.model_desc': return 'ઉપલબ્ધ AI મોડેલ શોધો અને તેનું સંચાલન કરો';
			case 'library_v2.saved_title': return 'સાચવેલા';
			case 'library_v2.saved_desc': return 'તમારી પ્રોમ્પ્ટ લાઇબ્રેરી';
			case 'library_v2.skills_title': return 'કૌશલ્યો';
			case 'library_v2.skills_desc': return 'AI ક્ષમતાઓ';
			case 'library_v2.pillars_title': return 'પિલર';
			case 'library_v2.pillars_desc': return 'મુખ્ય બુદ્ધિ ક્ષેત્રો';
			case 'biometric.vault': return 'વૉલ્ટ સુરક્ષા';
			case 'biometric.setupTitle': return 'સુરક્ષિત લૉક સેટ અપ કરો';
			case 'biometric.setupSub': return 'તમારી પસંદગીની પ્રમાણીકરણ પદ્ધતિ વડે તમારા વૉલ્ટને સુરક્ષિત કરો.';
			case 'biometric.deviceTitle': return 'ઉપકરણ બાયોમેટ્રિક્સ';
			case 'biometric.deviceSub': return 'Face ID અથવા ફિંગરપ્રિન્ટનો ઉપયોગ કરો';
			case 'biometric.pinTitle': return 'PIN કોડ';
			case 'biometric.pinSub': return 'એક અનન્ય ૪-અંકનો કોડ સેટ કરો';
			case 'biometric.dialogTitle': return 'બાયોમેટ્રિક ઍક્સેસની મંજૂરી આપો';
			case 'biometric.dialogSub': return 'ZiqeX અનલૉક કરવા માટે તમારી ફિંગરપ્રિન્ટ અથવા ચહેરાની ઓળખનો ઉપયોગ કરો';
			case 'biometric.cancel': return 'રદ કરો';
			case 'biometric.allow': return 'મંજૂરી આપો';
			case 'security_screen.appBar': return 'એપ સુરક્ષા';
			case 'security_screen.global_protection': return 'સર્વાંગી સુરક્ષા';
			case 'security_screen.app_lock': return 'એપ લૉક';
			case 'security_screen.app_lock_sub': return 'ZiqeX ખોલવા માટે પ્રમાણીકરણ જરૂરી છે';
			case 'security_screen.auth_methods': return 'પ્રમાણીકરણ પદ્ધતિઓ';
			case 'security_screen.biometrics_title': return 'ઉપકરણ બાયોમેટ્રિક્સ';
			case 'security_screen.biometrics_sub': return 'તમારી ફિંગરપ્રિન્ટ અથવા ચહેરા વડે તરત અનલૉક કરો';
			case 'security_screen.pin_title': return 'ZiqeX PIN';
			case 'security_screen.pin_active': return 'PIN સક્રિય છે';
			case 'security_screen.pin_setup': return 'એપ અનલૉક કરવા માટે એક અનન્ય ૪-અંકનો PIN સેટ કરો';
			case 'security_screen.warning_title': return 'ઘણા બધા ખોટા પ્રયાસો';
			case 'security_screen.warning_sub': return 'જો ખોટો PIN ૧૦ વખત દાખલ કરવામાં આવે, તો ZiqeX આપમેળે રીસેટ થશે. આ ઉપકરણ પર સાચવેલો તમામ ડેટા કાયમી ધોરણે કાઢી નાખવામાં આવશે';
			case 'security_screen.incomplete_title': return 'સુરક્ષા સેટઅપ અધૂરું છે';
			case 'security_screen.incomplete_content': return 'તમે એપ લૉક સક્ષમ કર્યું છે, પરંતુ PIN અથવા બાયોમેટ્રિક્સ સેટ કર્યા નથી. કોઈ એક પદ્ધતિ ગોઠવવામાં ન આવે ત્યાં સુધી એપ લૉક નિષ્ક્રિય રહેશે.';
			case 'security_screen.got_it': return 'સમજાઈ ગયું';
			case 'data.appBar': return 'ડેટા વ્યવસ્થાપન અને\nરીટેન્શન';
			case 'data.summary': return 'સ્ટોરેજનો સારાંશ';
			case 'data.totalUsed': return 'કુલ વપરાયેલ: ';
			case 'data.legendModel': return 'મોડેલ વેઇટ્સ';
			case 'data.legendFree': return 'ખાલી જગ્યા';
			case 'data.mgmt': return 'મોડેલ વ્યવસ્થાપન';
			case 'data.deleteModels': return 'ડાઉનલોડ કરેલા બધા મોડેલ કાઢી નાખો';
			case 'data.deleteModelsSub': return 'આ ઉપકરણમાંથી તમામ સ્થાનિક મોડેલ વેઇટ્સ અને પેરામીટર્સ સંપૂર્ણપણે દૂર કરો.';
			case 'data.selectDelete': return 'કાઢી નાખવા માટે મોડેલ પસંદ કરો';
			case 'data.autoDelete': return 'આ સમય કરતાં જૂની ચેટ્સ આપમેળે કાઢી નાખો:';
			case 'data.autoDeleteSub': return 'આ સેટિંગ તમામ અનલિંક કરેલી વાતચીતની સ્થિતિઓ પર લાગુ થાય છે.';
			case 'data.modes': return 'મોડ્સ';
			case 'data.noData': return 'કોઈ સક્રિય ચેટ ડેટા નથી';
			case 'data.deleteAll': return 'બધો ડેટા કાઢી નાખો';
			case 'data.authReq': return 'ફરીથી પ્રમાણીકરણ જરૂરી છે';
			case 'data.viewChats': return 'ચેટ જુઓ';
			case 'data.deleteAllPillar': return 'બધું કાઢી નાખો';
			case 'data.space': return 'જગ્યા:';
			case 'data.activeInstances': return 'સક્રિય ઇન્સ્ટન્સ:';
			case 'pin_setup.title_setup': return '૪-અંકનો PIN સેટ કરો';
			case 'pin_setup.subtitle_setup': return 'એપ ઍક્સેસ કરવા માટે એક સુરક્ષિત કોડ બનાવો';
			case 'pin_setup.title_confirm': return 'PINની પુષ્ટિ કરો';
			case 'pin_setup.subtitle_confirm': return 'ચકાસવા માટે તમારો ૪-અંકનો PIN ફરીથી દાખલ કરો';
			case 'pin_setup.title_verify': return 'વર્તમાન PIN દાખલ કરો';
			case 'pin_setup.subtitle_verify': return 'ચાલુ રાખવા માટે તમારો વર્તમાન PIN દાખલ કરો';
			case 'pin_setup.error_mismatch': return 'PIN મેળ ખાતા નથી. ફરી પ્રયાસ કરો.';
			case 'pin_setup.error_incorrect': return 'ખોટો PIN. કૃપા કરીને ફરી પ્રયાસ કરો.';
			case 'pin_setup.snack_success': return 'PIN સફળતાપૂર્વક સેટ કરવામાં આવ્યો';
			case 'pin_mgmt.appBar': return 'એપ-વિશિષ્ટ PIN';
			case 'pin_mgmt.change_title': return 'PIN બદલો';
			case 'pin_mgmt.change_sub': return 'તમારો ૪-અંકનો ZiqeX સુરક્ષા કોડ અપડેટ કરો';
			case 'pin_mgmt.remove_title': return 'PIN દૂર કરો';
			case 'pin_mgmt.remove_sub': return 'ZiqeX માટે PIN ઍક્સેસ બંધ કરો';
			case 'pin_mgmt.snack_removed': return 'PIN સફળતાપૂર્વક દૂર કરવામાં આવ્યો';
			case 'lang_legacy.title1': return 'કઈ ભાષા\n';
			case 'lang_legacy.title2': return 'પોતાની લાગે છે?';
			case 'lang_legacy.subtitle': return 'તમારી માતૃભાષામાં અવાજ, લખાણ અને જવાબો. ગમે ત્યારે બદલો.';
			case 'lang_legacy.first_reply': return 'પહેલો જવાબ આ હશે';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - તમારી લિપિમાં લખાયેલ અને બોલાયેલ';
			case 'lang_legacy.continueBtn': return 'ચાલુ રાખો';
			case 'model_mgmt.appBar': return 'મોડેલ મેનેજમેન્ટ';
			case 'model_mgmt.subtitle': return 'સ્થાનિક એજ AI ભાષા મોડેલ્સ ગોઠવો';
			case 'model_mgmt.status_loaded': return 'લોડ થયેલ છે';
			case 'model_mgmt.status_unloaded': return 'લોડ થયેલ નથી';
			case 'model_mgmt.status_loading': return 'લોડ થઈ રહ્યું છે...';
			case 'model_mgmt.size': return ({required Object size}) => 'કદ: ${size}';
			case 'model_mgmt.load': return 'લોડ કરો';
			case 'model_mgmt.unload': return 'અનલોડ કરો';
			case 'model_mgmt.download': return 'ડાઉનલોડ';
			case 'model_mgmt.delete': return 'દૂર કરો';
			case 'model_mgmt.brahm_2b_desc': return 'મોબાઇલ ઉપકરણો પર ઓછી વિલંબિત ટેક્સ્ટ પૂર્ણતા અને ચેટ માટે રચાયેલ અલ્ટ્રા-ફાસ્ટ કોમ્પેક્ટ એજ મોડેલ.';
			case 'model_mgmt.brahm_5b_desc': return 'અદ્યતન કાર્ય ચોકસાઈ અને જટિલ સૂચનાત્મક પ્રદર્શન પ્રદાન કરતું સંતુલિત રીઝનિંગ મોડેલ.';
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
			case 'offline': return 'ऑफ़लाइन';
			case 'start_something': return 'कुछ शुरू करें';
			case 'ask_anything': return 'कुछ भी पूछें';
			case 'ask_anything_sub': return 'स्वास्थ्य · कानूनी · व्यक्तिगत · कार्य';
			case 'voice_mode': return 'वॉइस मोड';
			case 'voice_mode_sub': return 'अपनी भाषा में बोलें';
			case 'ask_image': return 'इमेज के बारे में पूछें';
			case 'ask_image_sub': return 'फ़ॉर्म · लेबल · टेक्स्ट';
			case 'panchang': return 'पंचांग';
			case 'panchang_sub': return 'आज की तिथि और मुहूर्त';
			case 'ephemeral': return 'अस्थायी';
			case 'ephemeral_sub': return 'बिना कोई निशान छोड़े चैट करें';
			case 'recent': return 'हाल की गतिविधियाँ';
			case 'home': return 'होम';
			case 'chat': return 'चैट';
			case 'library': return 'लाइब्रेरी';
			case 'you': return 'आप';
			case 'settings_pref': return 'प्रोफ़ाइल सेटिंग्स';
			case 'preferences': return 'प्राथमिकताएँ';
			case 'language': return 'भाषा';
			case 'security': return 'सुरक्षा';
			case 'security_sub': return 'ऐप लॉक · 2FA';
			case 'privacy_tiers': return 'गोपनीयता स्तर';
			case 'privacy_tiers_sub': return '2 सक्रिय हैं · ZiqeX कैसे सुनता है';
			case 'storage_purge': return 'स्टोरेज और डेटा हटाना';
			case 'storage_purge_sub': return 'डिवाइस पर 184 KB';
			case 'ephemeral_mode': return 'अस्थायी मोड';
			case 'about': return 'ऐप के बारे में';
			case 'reset_prototype': return 'प्रोटोटाइप रीसेट करें';
			case 'built_in_india': return 'भारत में निर्मित। दुनिया के लिए।';
			case 'library_sub': return 'हर मॉडल · हर मेमोरी · इसी डिवाइस पर';
			case 'on_this_device': return 'इसी डिवाइस पर';
			case 'active': return 'सक्रिय';
			case 'add': return '+ जोड़ें';
			case 'storage_used': return 'उपयोग किया गया स्टोरेज';
			case 'health_question': return 'स्वास्थ्य संबंधी प्रश्न';
			case 'family': return 'परिवार';
			case 'work': return 'काम';
			case 'just_thinking': return 'बस सोच रहा हूँ';
			case 'profile.access': return 'एक्सेस';
			case 'profile.privacy': return 'गोपनीयता';
			case 'profile.system': return 'सिस्टम';
			case 'profile.security_active': return 'सुरक्षा सक्रिय है';
			case 'profile.security_inactive': return 'सुरक्षा निष्क्रिय है';
			case 'profile.dark_mode': return 'डार्क मोड';
			case 'profile.dark_mode_sub': return 'लाइट और डार्क थीम के बीच स्विच करें';
			case 'profile.data_mgmt': return 'डेटा प्रबंधन';
			case 'profile.data_mgmt_sub': return 'अपना चैट इतिहास प्रबंधित करें';
			case 'profile.app_lock': return 'ऐप लॉक';
			case 'profile.app_lock_sub': return 'फ़िंगरप्रिंट, चेहरे या PIN से ZiqeX को सुरक्षित रखें';
			case 'profile.incognito_sub': return 'इतिहास में सहेजे बिना चैट करें। बाहर निकलने के बाद इसे पुनर्प्राप्त नहीं किया जा सकता';
			case 'profile.version': return 'V0.1 • संप्रभु • डिवाइस पर';
			case 'welcome.meet': return 'ZiqeX से मिलें';
			case 'welcome.at_edge': return 'एज पर इंटेलिजेंस';
			case 'welcome.private': return 'निजी एज AI\nZenteiQ द्वारा';
			case 'welcome.begin': return 'शुरू करें';
			case 'info.title': return 'आपके लिए बनाया गया इंटेलिजेंस';
			case 'info.subtitle': return 'गोपनीयता, विकल्प और पूर्ण नियंत्रण के साथ एक उपयोगी AI अनुभव।';
			case 'info.privacy_title': return 'गोपनीयता पहले';
			case 'info.privacy_desc': return 'ZiqeX को आपकी जानकारी और इंटेलिजेंस को आपके डिवाइस पर ही सुरक्षित रखने के लिए डिज़ाइन किया गया है।';
			case 'info.hand_title': return 'आपके हाथ में इंटेलिजेंस';
			case 'info.hand_desc': return 'रोज़मर्रा की ज़रूरतों के लिए इंटेलिजेंस, सीधे आपके डिवाइस पर उपलब्ध।';
			case 'info.control_title': return 'आपका डेटा। आपका नियंत्रण।';
			case 'info.control_desc': return 'चुनें कि क्या रखना है, अपने संग्रहीत डेटा को प्रबंधित करें और जिसकी अब आवश्यकता नहीं है उसे हटा दें।';
			case 'info.place_title': return 'हर जगह के लिए बनाया गया';
			case 'info.place_desc': return 'विभिन्न भाषाओं, डिवाइसों और लोगों के तकनीक इस्तेमाल करने के अलग-अलग तरीकों के लिए बनाया गया।';
			case 'info.footer': return 'आपका इंटेलिजेंस। आपका डिवाइस। आपका नियंत्रण।';
			case 'info.setup': return 'अपना ZiqeX सेटअप करें';
			case 'languageSelection.appBar': return 'भाषा चुनें';
			case 'languageSelection.title': return 'अपनी भाषा चुनें';
			case 'languageSelection.subtitle': return 'अपने इंटरफ़ेस के लिए भाषा चुनें।';
			case 'languageSelection.back': return 'वापस';
			case 'languageSelection.continueBtn': return 'जारी रखें';
			case 'pillars.appBar': return 'पिलर चुनें';
			case 'pillars.title': return 'अपने पिलर चुनें';
			case 'pillars.subtitle': return 'उन मुख्य क्षमताओं को चुनें जिन पर आप ध्यान केंद्रित करना चाहते हैं।';
			case 'pillars.general': return 'सामान्य';
			case 'pillars.operational': return 'परिचालन';
			case 'pillars.personal': return 'व्यक्तिगत सलाह';
			case 'pillars.workplace': return 'कार्यस्थल';
			case 'pillars.culture': return 'संस्कृति और परिवार';
			case 'pillars.journal': return 'दैनिक डायरी';
			case 'pillars.back': return 'वापस';
			case 'pillars.continueBtn': return 'जारी रखें';
			case 'modelDownload.title1': return 'BrahmAI को\nआपके डिवाइस पर ';
			case 'modelDownload.title2': return 'ला रहे हैं।';
			case 'modelDownload.subtitle': return 'यह केवल एक बार का सेटअप है। इसके बाद, हम आपके डेटा को कभी नहीं छुएँगे।';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'तैयार';
			case 'modelDownload.validating': return 'सत्यापित किया जा रहा है...';
			case 'modelDownload.langs': return '14 भाषाएँ';
			case 'modelDownload.toks': return '~18 tok/s';
			case 'modelDownload.ttft': return '~140 ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'त्रुटि: ${error}';
			case 'modelDownload.retry': return 'पुनः प्रयास करें';
			case 'modelDownload.open': return 'खोलें';
			case 'modelDownload.download': return 'डाउनलोड करें';
			case 'modelDownload.later': return 'बाद में सेटअप करें';
			case 'modelDownload.continueSub': return 'मॉडल डाउनलोड किए बिना जारी रखें। जब आप तैयार हों, तब इसे जोड़ सकते हैं';
			case 'library_v2.subtitle': return 'अपने AI संसाधनों को प्रबंधित करें';
			case 'library_v2.language_title': return 'भाषा';
			case 'library_v2.language_desc': return 'भाषाएँ चुनें और प्रबंधित करें';
			case 'library_v2.model_title': return 'मॉडल';
			case 'library_v2.model_desc': return 'AI मॉडल खोजें और प्रबंधित करें';
			case 'library_v2.saved_title': return 'सहेजे गए';
			case 'library_v2.saved_desc': return 'आपकी प्रॉम्प्ट लाइब्रेरी';
			case 'library_v2.skills_title': return 'कौशल';
			case 'library_v2.skills_desc': return 'AI क्षमताएँ';
			case 'library_v2.pillars_title': return 'पिलर';
			case 'library_v2.pillars_desc': return 'मुख्य बुद्धिमत्ता क्षेत्र';
			case 'biometric.vault': return 'वॉल्ट सुरक्षा';
			case 'biometric.setupTitle': return 'सुरक्षित लॉक सेट करें';
			case 'biometric.setupSub': return 'अपनी पसंदीदा प्रमाणीकरण विधि से अपने वॉल्ट को सुरक्षित रखें।';
			case 'biometric.deviceTitle': return 'डिवाइस बायोमेट्रिक्स';
			case 'biometric.deviceSub': return 'Face ID या फ़िंगरप्रिंट';
			case 'biometric.pinTitle': return 'PIN कोड';
			case 'biometric.pinSub': return 'एक अद्वितीय 4-अंकों का कोड सेट करें';
			case 'biometric.dialogTitle': return 'बायोमेट्रिक एक्सेस की अनुमति दें';
			case 'biometric.dialogSub': return 'ZiqeX को अनलॉक करने के लिए अपने फ़िंगरप्रिंट या चेहरे की पहचान का उपयोग करें';
			case 'biometric.cancel': return 'रद्द करें';
			case 'biometric.allow': return 'अनुमति दें';
			case 'security_screen.appBar': return 'ऐप सुरक्षा';
			case 'security_screen.global_protection': return 'समग्र सुरक्षा';
			case 'security_screen.app_lock': return 'ऐप लॉक';
			case 'security_screen.app_lock_sub': return 'ZiqeX खोलने के लिए प्रमाणीकरण आवश्यक है';
			case 'security_screen.auth_methods': return 'प्रमाणीकरण विधियाँ';
			case 'security_screen.biometrics_title': return 'डिवाइस बायोमेट्रिक्स';
			case 'security_screen.biometrics_sub': return 'अपने फ़िंगरप्रिंट या चेहरे से तुरंत अनलॉक करें';
			case 'security_screen.pin_title': return 'ZiqeX PIN';
			case 'security_screen.pin_active': return 'PIN सक्रिय है';
			case 'security_screen.pin_setup': return 'ऐप अनलॉक करने के लिए एक अद्वितीय 4-अंकों का PIN सेट करें';
			case 'security_screen.warning_title': return 'बहुत अधिक गलत प्रयास';
			case 'security_screen.warning_sub': return 'यदि गलत PIN 10 बार दर्ज किया जाता है, तो ZiqeX अपने आप रीसेट हो जाएगा। इस डिवाइस पर संग्रहीत सभी डेटा स्थायी रूप से हटा दिया जाएगा';
			case 'security_screen.incomplete_title': return 'सुरक्षा सेटअप अधूरा है';
			case 'security_screen.incomplete_content': return 'आपने ऐप लॉक सक्षम किया है, लेकिन PIN या बायोमेट्रिक्स सेट नहीं किए हैं। किसी एक विधि को सेट करने तक ऐप लॉक निष्क्रिय रहेगा।';
			case 'security_screen.got_it': return 'समझ गया';
			case 'data.appBar': return 'डेटा प्रबंधन';
			case 'data.summary': return 'स्टोरेज सारांश';
			case 'data.totalUsed': return 'कुल उपयोग: ';
			case 'data.legendModel': return 'मॉडल वेट्स';
			case 'data.legendFree': return 'खाली जगह';
			case 'data.mgmt': return 'मॉडल प्रबंधन';
			case 'data.deleteModels': return 'सभी डाउनलोड किए गए मॉडल हटाएँ';
			case 'data.deleteModelsSub': return 'इस डिवाइस से सभी स्थानीय मॉडल वेट्स और फ़ाइन-ट्यून किए गए पैरामीटर पूरी तरह हटा दें।';
			case 'data.selectDelete': return 'हटाने के लिए मॉडल चुनें';
			case 'data.autoDelete': return 'पुरानी चैट अपने आप हटाएँ:';
			case 'data.autoDeleteSub': return 'यह सेटिंग सभी चैट मोड पर लागू होती है।';
			case 'data.modes': return 'मोड';
			case 'data.noData': return 'कोई सक्रिय चैट डेटा नहीं है';
			case 'data.deleteAll': return 'सारा डेटा हटाएँ';
			case 'data.authReq': return 'पुनः प्रमाणीकरण आवश्यक है';
			case 'data.viewChats': return 'चैट देखें';
			case 'data.deleteAllPillar': return 'सभी हटाएँ';
			case 'data.space': return 'जगह:';
			case 'data.activeInstances': return 'सक्रिय इंस्टेंस:';
			case 'pin_setup.title_setup': return '4-अंकों का PIN सेट करें';
			case 'pin_setup.subtitle_setup': return 'ऐप एक्सेस करने के लिए एक सुरक्षित कोड बनाएँ';
			case 'pin_setup.title_confirm': return 'PIN की पुष्टि करें';
			case 'pin_setup.subtitle_confirm': return 'सत्यापित करने के लिए अपना 4-अंकों का PIN फिर से दर्ज करें';
			case 'pin_setup.title_verify': return 'वर्तमान PIN दर्ज करें';
			case 'pin_setup.subtitle_verify': return 'जारी रखने के लिए अपना वर्तमान PIN दर्ज करें';
			case 'pin_setup.error_mismatch': return 'PIN मेल नहीं खाते। फिर से प्रयास करें।';
			case 'pin_setup.error_incorrect': return 'गलत PIN। फिर से प्रयास करें।';
			case 'pin_setup.snack_success': return 'PIN सफलतापूर्वक सेट हो गया';
			case 'pin_mgmt.appBar': return 'ऐप PIN';
			case 'pin_mgmt.change_title': return 'PIN बदलें';
			case 'pin_mgmt.change_sub': return 'अपना 4-अंकों का ZiqeX सुरक्षा कोड अपडेट करें';
			case 'pin_mgmt.remove_title': return 'PIN हटाएँ';
			case 'pin_mgmt.remove_sub': return 'ZiqeX के लिए PIN एक्सेस बंद करें';
			case 'pin_mgmt.snack_removed': return 'PIN सफलतापूर्वक हटा दिया गया';
			case 'lang_legacy.title1': return 'कौन सी भाषा\n';
			case 'lang_legacy.title2': return 'आपको अपनी जैसी लगती है?';
			case 'lang_legacy.subtitle': return 'अपनी मातृभाषा में वॉइस, टेक्स्ट और जवाब पाएँ। इसे कभी भी बदला जा सकता है।';
			case 'lang_legacy.first_reply': return 'पहला जवाब इस तरह होगा';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - आपकी लिपि में लिखा और बोला जाएगा';
			case 'lang_legacy.continueBtn': return 'जारी रखें';
			case 'model_mgmt.appBar': return 'मॉडल प्रबंधन';
			case 'model_mgmt.subtitle': return 'स्थानीय एज AI भाषा मॉडल कॉन्फ़िगर करें';
			case 'model_mgmt.status_loaded': return 'लोडेड';
			case 'model_mgmt.status_unloaded': return 'अनलोडेड';
			case 'model_mgmt.status_loading': return 'लोड हो रहा है...';
			case 'model_mgmt.size': return ({required Object size}) => 'आकार: ${size}';
			case 'model_mgmt.load': return 'लोड करें';
			case 'model_mgmt.unload': return 'अनलोड करें';
			case 'model_mgmt.download': return 'डाउनलोड';
			case 'model_mgmt.delete': return 'हटाएं';
			case 'model_mgmt.brahm_2b_desc': return 'अल्ट्रा-फास्ट कॉम्पैक्ट एज मॉडल, मोबाइल उपकरणों पर कम विलंबता वाले टेक्स्ट पूर्णता और चैट के लिए डिज़ाइन किया गया।';
			case 'model_mgmt.brahm_5b_desc': return 'संतुलित तर्क मॉडल, उन्नत कार्य सटीकता और जटिल निर्देशात्मक प्रदर्शन की पेशकश करता है।';
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
			case 'start_something': return 'ಏನನ್ನಾದರೂ ಪ್ರಾರಂಭಿಸಿ';
			case 'ask_anything': return 'ಏನನ್ನಾದರೂ ಕೇಳಿ';
			case 'ask_anything_sub': return 'ಆರೋಗ್ಯ · ಕಾನೂನು · ವೈಯಕ್ತಿಕ · ಕೆಲಸ';
			case 'voice_mode': return 'ಧ್ವನಿ ಮೋಡ್';
			case 'voice_mode_sub': return 'ನಿಮ್ಮ ಭಾಷೆಯಲ್ಲಿ ಮಾತನಾಡಿ';
			case 'ask_image': return 'ಚಿತ್ರದ ಕುರಿತು ಕೇಳಿ';
			case 'ask_image_sub': return 'ಫಾರ್ಮ್, ಲೇಬಲ್, ಬರಹ';
			case 'panchang': return 'ಪಂಚಾಂಗ';
			case 'panchang_sub': return 'ಇಂದಿನ ತಿಥಿ ಮತ್ತು ಮುಹೂರ್ತ';
			case 'ephemeral': return 'ತಾತ್ಕಾಲಿಕ';
			case 'ephemeral_sub': return 'ಯಾವುದೇ ಗುರುತು ಉಳಿಯದಂತೆ ಮಾತನಾಡಿ';
			case 'recent': return 'ಇತ್ತೀಚಿನವು';
			case 'home': return 'ಮುಖಪುಟ';
			case 'chat': return 'ಚಾಟ್';
			case 'library': return 'ಲೈಬ್ರರಿ';
			case 'you': return 'ನೀವು';
			case 'settings_pref': return 'ಪ್ರೊಫೈಲ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';
			case 'preferences': return 'ಆದ್ಯತೆಗಳು ಮತ್ತು ಭದ್ರತೆ';
			case 'language': return 'ಭಾಷೆ';
			case 'security': return 'ಭದ್ರತೆ';
			case 'security_sub': return 'ಆ್ಯಪ್ ಲಾಕ್ · 2FA';
			case 'privacy_tiers': return 'ಗೌಪ್ಯತಾ ಮೋಡ್‌ಗಳು';
			case 'privacy_tiers_sub': return '1 ಸಕ್ರಿಯ \'ZiqeX ಆಲಿಸುವ ಮೋಡ್\'';
			case 'storage_purge': return 'ಡೇಟಾ ಮತ್ತು ಸಂಗ್ರಹಣೆ';
			case 'storage_purge_sub': return 'ಸಾಧನದಲ್ಲಿ 184 KB';
			case 'ephemeral_mode': return 'ಅಜ್ಞಾತ ಚಾಟ್';
			case 'about': return 'ಸಿಸ್ಟಮ್ ಮಾಹಿತಿ';
			case 'reset_prototype': return 'ಪ್ರೋಟೋಟೈಪ್ ಮರುಹೊಂದಿಸಿ';
			case 'built_in_india': return 'ಭಾರತದಲ್ಲಿ ನಿರ್ಮಿಸಲಾಗಿದೆ. ಜಗತ್ತಿಗಾಗಿ.';
			case 'library_sub': return 'ಪ್ರತಿ ಮಾದರಿ · ಪ್ರತಿ ಸ್ಮರಣೆ · ಈ ಸಾಧನದಲ್ಲಿ';
			case 'on_this_device': return 'ಈ ಸಾಧನದಲ್ಲಿ';
			case 'active': return 'ಸಕ್ರಿಯ';
			case 'add': return '+ ಸೇರಿಸಿ';
			case 'storage_used': return 'ಬಳಸಿದ ಸಂಗ್ರಹಣೆ';
			case 'health_question': return 'ಆರೋಗ್ಯ ಪ್ರಶ್ನೆ';
			case 'family': return 'ಕುಟುಂಬ';
			case 'work': return 'ಕೆಲಸ';
			case 'just_thinking': return 'ಸುಮ್ಮನೆ ಯೋಚಿಸುತ್ತಿದ್ದೇನೆ';
			case 'profile.access': return 'ಪ್ರವೇಶ';
			case 'profile.privacy': return 'ಗೌಪ್ಯತೆ';
			case 'profile.system': return 'ಸಿಸ್ಟಮ್';
			case 'profile.security_active': return 'ಭದ್ರತೆ ಸಕ್ರಿಯವಾಗಿದೆ';
			case 'profile.security_inactive': return 'ಭದ್ರತೆ ನಿಷ್ಕ್ರಿಯವಾಗಿದೆ';
			case 'profile.dark_mode': return 'ಡಾರ್ಕ್ ಮೋಡ್';
			case 'profile.dark_mode_sub': return 'ಲೈಟ್ ಮತ್ತು ಡಾರ್ಕ್ ವರ್ಕ್‌ಸ್ಪೇಸ್ ಥೀಮ್‌ಗಳ ನಡುವೆ ಬದಲಾಯಿಸಿ';
			case 'profile.data_mgmt': return 'ಚಾಟ್ ಡೇಟಾ ನಿರ್ವಹಣೆ ಮತ್ತು ಸಂಗ್ರಹಣೆ';
			case 'profile.data_mgmt_sub': return 'ನಿಮ್ಮ ಸಂಭಾಷಣೆ ಇತಿಹಾಸವನ್ನು ನಿರ್ವಹಿಸಿ';
			case 'profile.app_lock': return 'ಆ್ಯಪ್ ಲಾಕ್';
			case 'profile.app_lock_sub': return 'ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್, ಮುಖ ಅಥವಾ ಪಿನ್ ಮೂಲಕ ZiqeX ಅನ್ನು ಸುರಕ್ಷಿತಗೊಳಿಸಿ';
			case 'profile.incognito_sub': return 'ಇತಿಹಾಸದಲ್ಲಿ ಉಳಿಸದೆ ಚಾಟ್ ಮಾಡಿ. ಚಾಟ್‌ನಿಂದ ಹೊರಬಂದ ನಂತರ ಅದನ್ನು ಮರುಪಡೆಯಲು ಸಾಧ್ಯವಿಲ್ಲ';
			case 'profile.version': return 'V0.1 • ಸಾರ್ವಭೌಮ • ಸಾಧನದಲ್ಲೇ';
			case 'welcome.meet': return 'ZiqeX ಅನ್ನು ಪರಿಚಯಿಸಿಕೊಳ್ಳಿ';
			case 'welcome.at_edge': return 'ಎಡ್ಜ್‌ನಲ್ಲಿ ಬುದ್ಧಿಮತ್ತೆ';
			case 'welcome.private': return 'ಖಾಸಗಿ ಮತ್ತು ಎಡ್ಜ್ AI\nZenteiQ ಮೂಲಕ';
			case 'welcome.begin': return 'ಆನ್‌ಬೋರ್ಡಿಂಗ್ ಪ್ರಾರಂಭಿಸಿ';
			case 'info.title': return 'ನಿಮಗಾಗಿ ವಿನ್ಯಾಸಗೊಳಿಸಿದ ಬುದ್ಧಿಮತ್ತೆ';
			case 'info.subtitle': return 'ಗೌಪ್ಯತೆ ಮತ್ತು ಸಂಪೂರ್ಣ ನಿಯಂತ್ರಣದೊಂದಿಗೆ AI ಅನುಭವ.';
			case 'info.privacy_title': return 'ಗೌಪ್ಯತೆ ಮೊದಲು';
			case 'info.privacy_desc': return 'ZiqeX ನಿಮ್ಮ ಬುದ್ಧಿಮತ್ತೆ ಮತ್ತು ಮಾಹಿತಿಯನ್ನು ನಿಮ್ಮ ಸಾಧನದಲ್ಲೇ ಸುರಕ್ಷಿತವಾಗಿರಿಸುವಂತೆ ವಿನ್ಯಾಸಗೊಳಿಸಲಾಗಿದೆ.';
			case 'info.hand_title': return 'ನಿಮ್ಮ ಕೈಯಲ್ಲೇ ಬುದ್ಧಿಮತ್ತೆ';
			case 'info.hand_desc': return 'ದೈನಂದಿನ ಅಗತ್ಯಗಳಿಗಾಗಿ ಬುದ್ಧಿಮತ್ತೆ ನೇರವಾಗಿ ನಿಮ್ಮ ಸಾಧನದಲ್ಲೇ ಲಭ್ಯವಿದೆ.';
			case 'info.control_title': return 'ನಿಮ್ಮ ಡೇಟಾ. ನಿಮ್ಮ ನಿಯಂತ್ರಣ.';
			case 'info.control_desc': return 'ಏನನ್ನು ಉಳಿಸಬೇಕು ಎಂಬುದನ್ನು ಆಯ್ಕೆಮಾಡಿ, ಸಂಗ್ರಹಿಸಿರುವುದನ್ನು ನಿರ್ವಹಿಸಿ ಮತ್ತು ಇನ್ನು ಮುಂದೆ ಅಗತ್ಯವಿಲ್ಲದದ್ದನ್ನು ಅಳಿಸಿ.';
			case 'info.place_title': return 'ಎಲ್ಲರಿಗಾಗಿ ವಿನ್ಯಾಸಗೊಳಿಸಲಾಗಿದೆ';
			case 'info.place_desc': return 'ವಿವಿಧ ಭಾಷೆಗಳು, ಸಾಧನಗಳು ಮತ್ತು ಜನರು ತಂತ್ರಜ್ಞಾನವನ್ನು ಬಳಸುವ ವಿಭಿನ್ನ ವಿಧಾನಗಳಿಗಾಗಿ ನಿರ್ಮಿಸಲಾಗಿದೆ.';
			case 'info.footer': return 'ನಿಮ್ಮ ಬುದ್ಧಿಮತ್ತೆ. ನಿಮ್ಮ ಸಾಧನ. ನಿಮ್ಮ ನಿಯಂತ್ರಣ.';
			case 'info.setup': return 'ನಿಮ್ಮ ZiqeX ಅನ್ನು ಹೊಂದಿಸಿ';
			case 'languageSelection.appBar': return 'ಭಾಷೆ ಆಯ್ಕೆ';
			case 'languageSelection.title': return 'ನಿಮ್ಮ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';
			case 'languageSelection.subtitle': return 'ನಿಮ್ಮ ಇಂಟರ್‌ಫೇಸ್‌ಗಾಗಿ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ.';
			case 'languageSelection.back': return 'ಹಿಂದಕ್ಕೆ';
			case 'languageSelection.continueBtn': return 'ಮುಂದುವರಿಸಿ';
			case 'pillars.appBar': return 'ಪಿಲ್ಲರ್‌ಗಳ ಆಯ್ಕೆ';
			case 'pillars.title': return 'ನಿಮ್ಮ ಪಿಲ್ಲರ್‌ಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';
			case 'pillars.subtitle': return 'ನೀವು ಗಮನಹರಿಸಲು ಬಯಸುವ ಪ್ರಮುಖ ಸಾಮರ್ಥ್ಯಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ.';
			case 'pillars.general': return 'ಸಾಮಾನ್ಯ';
			case 'pillars.operational': return 'ಕಾರ್ಯಾಚರಣೆ';
			case 'pillars.personal': return 'ವೈಯಕ್ತಿಕ ಸಲಹೆ';
			case 'pillars.workplace': return 'ಕೆಲಸದ ಸ್ಥಳ';
			case 'pillars.culture': return 'ಸಂಸ್ಕೃತಿ ಮತ್ತು ಕುಟುಂಬ';
			case 'pillars.journal': return 'ದೈನಂದಿನ ದಿನಚರಿ';
			case 'pillars.back': return 'ಹಿಂದಕ್ಕೆ';
			case 'pillars.continueBtn': return 'ಮುಂದುವರಿಸಿ';
			case 'modelDownload.title1': return 'BrahmAI ಅನ್ನು\nನಿಮ್ಮ ಬಳಿಗೆ ';
			case 'modelDownload.title2': return 'ತರುತ್ತಿದ್ದೇವೆ.';
			case 'modelDownload.subtitle': return 'ಇದು ಒಂದು ಬಾರಿಯ ಸೆಟಪ್. ಇದರ ನಂತರ, ನಾವು ನಿಮ್ಮ ಡೇಟಾವನ್ನು ಎಂದಿಗೂ ಮುಟ್ಟುವುದಿಲ್ಲ.';
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
			case 'modelDownload.continueSub': return 'ಮಾದರಿಯನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡದೆಯೇ ಮುಂದುವರಿಯಿರಿ. ನೀವು ಸಿದ್ಧರಾದಾಗ ಒಂದನ್ನು ಸೇರಿಸಬಹುದು';
			case 'library_v2.subtitle': return 'ನಿಮ್ಮ AI ಸಂಪನ್ಮೂಲಗಳನ್ನು ನಿರ್ವಹಿಸಿ';
			case 'library_v2.language_title': return 'ಭಾಷೆ';
			case 'library_v2.language_desc': return 'ನಿಮ್ಮ ಆದ್ಯತೆಯ ಭಾಷೆಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ ಮತ್ತು ನಿರ್ವಹಿಸಿ';
			case 'library_v2.model_title': return 'ಮಾದರಿ';
			case 'library_v2.model_desc': return 'ಲಭ್ಯವಿರುವ AI ಮಾದರಿಗಳನ್ನು ಅನ್ವೇಷಿಸಿ ಮತ್ತು ನಿರ್ವಹಿಸಿ';
			case 'library_v2.saved_title': return 'ಉಳಿಸಿರುವವು';
			case 'library_v2.saved_desc': return 'ನಿಮ್ಮ ಪ್ರಾಂಪ್ಟ್ ಲೈಬ್ರರಿ';
			case 'library_v2.skills_title': return 'ಕೌಶಲ್ಯಗಳು';
			case 'library_v2.skills_desc': return 'AI ಸಾಮರ್ಥ್ಯಗಳು';
			case 'library_v2.pillars_title': return 'ಸ್ತಂಭಗಳು';
			case 'library_v2.pillars_desc': return 'ಪ್ರಮುಖ ಸಾಮರ್ಥ್ಯಗಳು';
			case 'biometric.vault': return 'ವಾಲ್ಟ್ ಭದ್ರತೆ';
			case 'biometric.setupTitle': return 'ಸುರಕ್ಷಿತ ಲಾಕ್ ಸೆಟಪ್';
			case 'biometric.setupSub': return 'ನಿಮ್ಮ ಆದ್ಯತೆಯ ದೃಢೀಕರಣ ವಿಧಾನದಿಂದ ನಿಮ್ಮ ವಾಲ್ಟ್ ಅನ್ನು ಸುರಕ್ಷಿತಗೊಳಿಸಿ.';
			case 'biometric.deviceTitle': return 'ಸಾಧನ ಬಯೋಮೆಟ್ರಿಕ್ಸ್';
			case 'biometric.deviceSub': return 'Face ID ಅಥವಾ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಬಳಸಿ';
			case 'biometric.pinTitle': return 'ಆ್ಯಪ್-ನಿರ್ದಿಷ್ಟ ಪಿನ್';
			case 'biometric.pinSub': return 'ವಿಶಿಷ್ಟವಾದ 4-ಅಂಕಿಯ ಕೋಡ್ ಹೊಂದಿಸಿ';
			case 'biometric.dialogTitle': return 'ಬಯೋಮೆಟ್ರಿಕ್ ಪ್ರವೇಶಕ್ಕೆ ಅನುಮತಿ ನೀಡಿ';
			case 'biometric.dialogSub': return 'ZiqeX ಅನ್ನು ಅನ್‌ಲಾಕ್ ಮಾಡಲು ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಅಥವಾ ಸಾಧನದ ಮುಖ ಗುರುತಿಸುವಿಕೆಯನ್ನು ಬಳಸಿ';
			case 'biometric.cancel': return 'ರದ್ದುಮಾಡಿ';
			case 'biometric.allow': return 'ಬಯೋಮೆಟ್ರಿಕ್ಸ್‌ಗೆ ಅನುಮತಿ ನೀಡಿ';
			case 'security_screen.appBar': return 'ಆ್ಯಪ್ ಭದ್ರತೆ';
			case 'security_screen.global_protection': return 'ಜಾಗತಿಕ ಭದ್ರತೆ';
			case 'security_screen.app_lock': return 'ಆ್ಯಪ್ ಲಾಕ್';
			case 'security_screen.app_lock_sub': return 'ZiqeX ತೆರೆಯಲು ದೃಢೀಕರಣದ ಅಗತ್ಯವಿದೆ';
			case 'security_screen.auth_methods': return 'ದೃಢೀಕರಣ ವಿಧಾನಗಳು';
			case 'security_screen.biometrics_title': return 'ಸಾಧನ ಬಯೋಮೆಟ್ರಿಕ್ಸ್';
			case 'security_screen.biometrics_sub': return 'ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಅಥವಾ ಮುಖದ ಮೂಲಕ ತಕ್ಷಣ ಅನ್‌ಲಾಕ್ ಮಾಡಿ';
			case 'security_screen.pin_title': return 'ZiqeX ಪಿನ್';
			case 'security_screen.pin_active': return 'ಪಿನ್ ಸಕ್ರಿಯವಾಗಿದೆ';
			case 'security_screen.pin_setup': return 'ಆ್ಯಪ್ ಅನ್‌ಲಾಕ್ ಮಾಡಲು ವಿಶಿಷ್ಟವಾದ 4-ಅಂಕಿಯ ಕೋಡ್ ಹೊಂದಿಸಿ';
			case 'security_screen.warning_title': return 'ಹೆಚ್ಚಿನ ಸಂಖ್ಯೆಯ ತಪ್ಪು ಪ್ರಯತ್ನಗಳು';
			case 'security_screen.warning_sub': return 'ತಪ್ಪಾದ ಪಿನ್ ಅನ್ನು 10 ಬಾರಿ ನಮೂದಿಸಿದರೆ, ZiqeX ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಮರುಹೊಂದಿಸಲಾಗುತ್ತದೆ. ಈ ಸಾಧನದಲ್ಲಿ ಉಳಿಸಿರುವ ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಶಾಶ್ವತವಾಗಿ ಅಳಿಸಲಾಗುತ್ತದೆ';
			case 'security_screen.incomplete_title': return 'ಭದ್ರತಾ ಸೆಟಪ್ ಅಪೂರ್ಣವಾಗಿದೆ';
			case 'security_screen.incomplete_content': return 'ನೀವು ಆ್ಯಪ್ ಲಾಕ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿದ್ದೀರಿ, ಆದರೆ ಪಿನ್ ಅಥವಾ ಬಯೋಮೆಟ್ರಿಕ್ಸ್ ಅನ್ನು ಹೊಂದಿಸಿಲ್ಲ. ಒಂದು ವಿಧಾನವನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡುವವರೆಗೆ ಆ್ಯಪ್ ಲಾಕ್ ನಿಷ್ಕ್ರಿಯವಾಗಿರುತ್ತದೆ.';
			case 'security_screen.got_it': return 'ಅರ್ಥವಾಯಿತು';
			case 'data.appBar': return 'ಡೇಟಾ ನಿರ್ವಹಣೆ ಮತ್ತು\nಸಂಗ್ರಹಣೆ';
			case 'data.summary': return 'ಸಂಗ್ರಹಣೆ ಸಾರಾಂಶ';
			case 'data.totalUsed': return 'ಒಟ್ಟು ಬಳಕೆ: ';
			case 'data.legendModel': return 'ಮಾದರಿ ತೂಕಗಳು';
			case 'data.legendFree': return 'ಖಾಲಿ ಸ್ಥಳ';
			case 'data.mgmt': return 'ಮಾದರಿ ನಿರ್ವಹಣೆ';
			case 'data.deleteModels': return 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಿದ ಎಲ್ಲಾ ಮಾದರಿಗಳನ್ನು ಅಳಿಸಿ';
			case 'data.deleteModelsSub': return 'ಈ ಸಾಧನದಿಂದ ಎಲ್ಲಾ ಸ್ಥಳೀಯ ಮಾದರಿ ತೂಕಗಳು ಮತ್ತು ಪ್ಯಾರಾಮೀಟರ್‌ಗಳನ್ನು ಸಂಪೂರ್ಣವಾಗಿ ತೆಗೆದುಹಾಕಿ.';
			case 'data.selectDelete': return 'ಅಳಿಸಲು ಮಾದರಿಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';
			case 'data.autoDelete': return 'ಇದಕ್ಕಿಂತ ಹಳೆಯ ಚಾಟ್‌ಗಳನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಅಳಿಸಿ:';
			case 'data.autoDeleteSub': return 'ಈ ಸೆಟ್ಟಿಂಗ್ ಎಲ್ಲಾ ಲಿಂಕ್ ಮಾಡದ ಸಂಭಾಷಣೆ ಮೋಡ್‌ಗಳಿಗೆ ಅನ್ವಯಿಸುತ್ತದೆ.';
			case 'data.modes': return 'ಮೋಡ್‌ಗಳು';
			case 'data.noData': return 'ಯಾವುದೇ ಸಕ್ರಿಯ ಚಾಟ್ ಡೇಟಾ ಇಲ್ಲ';
			case 'data.deleteAll': return 'ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಅಳಿಸಿ';
			case 'data.authReq': return 'ಆ್ಯಪ್ ಲಾಕ್ ಮರು-ದೃಢೀಕರಣದ ಅಗತ್ಯವಿದೆ';
			case 'data.viewChats': return 'ಚಾಟ್‌ಗಳನ್ನು ವೀಕ್ಷಿಸಿ';
			case 'data.deleteAllPillar': return 'ಎಲ್ಲವನ್ನೂ ಅಳಿಸಿ';
			case 'data.space': return 'ಸ್ಥಳ:';
			case 'data.activeInstances': return 'ಸಕ್ರಿಯ ಇನ್‌ಸ್ಟೆನ್ಸ್‌ಗಳು:';
			case 'pin_setup.title_setup': return '4-ಅಂಕಿಯ ಪಿನ್ ಹೊಂದಿಸಿ';
			case 'pin_setup.subtitle_setup': return 'ಆ್ಯಪ್ ಪ್ರವೇಶಿಸಲು ಸುರಕ್ಷಿತ ಕೋಡ್ ರಚಿಸಿ';
			case 'pin_setup.title_confirm': return 'ಪಿನ್ ದೃಢೀಕರಿಸಿ';
			case 'pin_setup.subtitle_confirm': return 'ಪರಿಶೀಲಿಸಲು ನಿಮ್ಮ 4-ಅಂಕಿಯ ಕೋಡ್ ಅನ್ನು ಮತ್ತೆ ನಮೂದಿಸಿ';
			case 'pin_setup.title_verify': return 'ಪ್ರಸ್ತುತ ಪಿನ್ ನಮೂದಿಸಿ';
			case 'pin_setup.subtitle_verify': return 'ಮುಂದುವರಿಯಲು ನಿಮ್ಮ ಪ್ರಸ್ತುತ ಕೋಡ್ ಅನ್ನು ನಮೂದಿಸಿ';
			case 'pin_setup.error_mismatch': return 'ಪಿನ್‌ಗಳು ಹೊಂದಿಕೆಯಾಗುತ್ತಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
			case 'pin_setup.error_incorrect': return 'ತಪ್ಪಾದ ಪಿನ್. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
			case 'pin_setup.snack_success': return 'ಪಿನ್ ಯಶಸ್ವಿಯಾಗಿ ಹೊಂದಿಸಲಾಗಿದೆ';
			case 'pin_mgmt.appBar': return 'ಆ್ಯಪ್-ನಿರ್ದಿಷ್ಟ ಪಿನ್';
			case 'pin_mgmt.change_title': return 'ಪಿನ್ ಬದಲಾಯಿಸಿ';
			case 'pin_mgmt.change_sub': return 'ನಿಮ್ಮ 4-ಅಂಕಿಯ ZiqeX ಭದ್ರತಾ ಕೋಡ್ ಅನ್ನು ನವೀಕರಿಸಿ';
			case 'pin_mgmt.remove_title': return 'ಪಿನ್ ತೆಗೆದುಹಾಕಿ';
			case 'pin_mgmt.remove_sub': return 'ZiqeX ಗಾಗಿ ಪಿನ್ ಪ್ರವೇಶವನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಿ';
			case 'pin_mgmt.snack_removed': return 'ಪಿನ್ ಯಶಸ್ವಿಯಾಗಿ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';
			case 'lang_legacy.title1': return 'ಯಾವ ಭಾಷೆ\n';
			case 'lang_legacy.title2': return 'ಮನೆಯಂತಿದೆ?';
			case 'lang_legacy.subtitle': return 'ನಿಮ್ಮ ಮಾತೃಭಾಷೆಯಲ್ಲಿ ಧ್ವನಿ, ಪಠ್ಯ ಮತ್ತು ಉತ್ತರಗಳು. ಯಾವಾಗ ಬೇಕಾದರೂ ಬದಲಾಯಿಸಿ.';
			case 'lang_legacy.first_reply': return 'ಮೊದಲ ಉತ್ತರ ಹೀಗಿರುತ್ತದೆ';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - ನಿಮ್ಮ ಲಿಪಿಯಲ್ಲಿ ಬರೆಯಲಾಗುತ್ತದೆ ಮತ್ತು ಮಾತನಾಡಲಾಗುತ್ತದೆ';
			case 'lang_legacy.continueBtn': return 'ಮುಂದುವರಿಸಿ';
			case 'model_mgmt.appBar': return 'ಮಾದರಿ ನಿರ್ವಹಣೆ';
			case 'model_mgmt.subtitle': return 'ಸ್ಥಳೀಯ ಎಡ್ಜ್ AI ಭಾಷಾ ಮಾದರಿಗಳನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡಿ';
			case 'model_mgmt.status_loaded': return 'ಲೋಡ್ ಮಾಡಲಾಗಿದೆ';
			case 'model_mgmt.status_unloaded': return 'ಲೋಡ್ ಆಗಿಲ್ಲ';
			case 'model_mgmt.status_loading': return 'ಲೋಡ್ ಆಗುತ್ತಿದೆ...';
			case 'model_mgmt.size': return ({required Object size}) => 'ಗಾತ್ರ: ${size}';
			case 'model_mgmt.load': return 'ಲೋಡ್ ಮಾಡಿ';
			case 'model_mgmt.unload': return 'ಅನ್‌ಲೋಡ್ ಮಾಡಿ';
			case 'model_mgmt.download': return 'ಡೌನ್‌ಲೋಡ್';
			case 'model_mgmt.delete': return 'ಅಳಿಸಿ';
			case 'model_mgmt.brahm_2b_desc': return 'ಮೊಬೈಲ್ ಸಾಧನಗಳಲ್ಲಿ ಕಡಿಮೆ-ಲೇಟೆನ್ಸಿ ಪಠ್ಯ ಪೂರ್ಣಗೊಳಿಸುವಿಕೆ ಮತ್ತು ಚಾಟ್‌ಗಾಗಿ ವಿನ್ಯಾಸಗೊಳಿಸಲಾದ ಅತಿ ವೇಗದ ಕಾಂಪ್ಯಾಕ್ಟ್ ಎಡ್ಜ್ ಮಾದರಿ.';
			case 'model_mgmt.brahm_5b_desc': return 'ಸುಧಾರಿತ ಕಾರ್ಯ ನಿಖರತೆ ಮತ್ತು ಸಂಕೀರ್ણ ಸೂಚನಾ ಕಾರ್ಯಕ್ಷಮತೆಯನ್ನು ನೀಡುವ ಸಮತೋಲಿತ ರೀಸನಿಂಗ್ ಮಾದರಿ.';
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
			case 'settings_pref': return 'പ്രൊഫൈൽ സെറ്റ്';
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
			case 'profile.app_lock_sub': return 'विരലടയാളം, മുഖം അല്ലെങ്കിൽ പിൻ ഉപയോഗിച്ച് ZiqeX സുരക്ഷിതമാക്കാം';
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
			case 'info.hand_desc': return 'ദൈനദിന കാര്യങ്ങൾക്കുള്ള ബുദ്ധിശക്തി നിങ്ങളുടെ ഉപകരണത്തിൽ ലഭ്യം.';
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
			case 'pillars.personal': return 'ব্যক্তিഗത ഉപദേശം';
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
			case 'library_v2.pillars_title': return 'പില്ലറുകൾ';
			case 'library_v2.pillars_desc': return 'പ്രധാന കാര്യങ്ങൾ';
			case 'biometric.vault': return 'വോൾട്ട് സുരക്ഷ';
			case 'biometric.setupTitle': return 'സുരക്ഷിത ലോക്ക് സജ്ജീകരണം';
			case 'biometric.setupSub': return 'നിങ്ങളുടെ പ്രിയപ്പെട്ട രീതി ഉപയോഗിച്ച് നിങ്ങളുടെ വോൾട്ട് സുരക്ഷിതമാക്കുക.';
			case 'biometric.deviceTitle': return 'ബയോമെട്രിക്സ്';
			case 'biometric.deviceSub': return 'വിരലടയാളം ഉപയോഗിക്കുക';
			case 'biometric.pinTitle': return 'പിൻ കോഡ്';
			case 'biometric.pinSub': return '4 അക്ക പിൻ സജ്ಜമാക്കുക';
			case 'biometric.dialogTitle': return 'അനുമതി നൽകുക';
			case 'biometric.dialogSub': return 'ZiqeX തുറക്കാൻ വിരലടയാളം ഉപയോഗിക്കുക';
			case 'biometric.cancel': return 'റദ്ദാക്കുക';
			case 'biometric.allow': return 'അനുവദിക്കുക';
			case 'security_screen.appBar': return 'ആപ്പ് സെക്യൂരിറ്റി';
			case 'security_screen.global_protection': return 'ഗ്ലോബൽ പ്രൊട്ടക്ഷൻ';
			case 'security_screen.app_lock': return 'ആപ്പ് ലോക്ക്';
			case 'security_screen.app_lock_sub': return 'ZiqeX തുറക്കാൻ ഓതന്റിക്കേഷൻ ആവശ്യമാണ്';
			case 'security_screen.auth_methods': return 'ഓതന്റിക്കേഷൻ രീതികൾ';
			case 'security_screen.biometrics_title': return 'ഡിവൈസ് ბയോമെട്രിക്സ്';
			case 'security_screen.biometrics_sub': return 'നിങ്ങളുടെ ഫിംഗർപ്രിന്റ് അല്ലെങ്കിൽ മുഖം ഉപയോഗിച്ച് തൽക്ഷണം അൺലോക്ക് ചെയ്യുക';
			case 'security_screen.pin_title': return 'ZiqeX പിൻ';
			case 'security_screen.pin_active': return 'പിൻ സജീവമാണ്';
			case 'security_screen.pin_setup': return 'ആപ്പ് അൺലോക്ക് ചെയ്യാൻ 4 അക്കങ്ങളുള്ള ഒരു തനതായ കോഡ് സജ്ಜമാക്കുക';
			case 'security_screen.warning_title': return 'തെറ്റായ ശ്രമങ്ങൾ പരിധി കവിഞ്ഞു';
			case 'security_screen.warning_sub': return 'തെറ്റായ പിൻ 10 തവണ നൽകിയാൽ, ZiqeX സ്വയമേവ റീസെറ്റ് ചെയ്യപ്പെടും. ഈ ഉപകരണത്തിൽ സംരക്ഷിച്ചിട്ടുള്ള എല്ലാ ഡാറ്റയും ശാശ്വതമായി ഇല്ലാതാക്കപ്പെടும்';
			case 'security_screen.incomplete_title': return 'സെക്യൂരിറ്റി സെറ്റപ്പ് അപൂർണ്ണമാണ്';
			case 'security_screen.incomplete_content': return 'നിങ്ങൾ ആപ്പ് ലോക്ക് പ്രവർത്തനക്ഷമമാക്കി, പക്ഷേ പിൻ അല്ലെങ്കിൽ ബയോമെട്രിക്സ് സജ്ಜീകരിച്ചിട്ടില്ല. ഒരു രീതി കോൺഫിഗർ ചെയ്യുന്നത് വരെ ആപ്പ് ലോക്ക് പ്രവർത്തനരഹിതമായിരിക്കും.';
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
			case 'data.autoDelete': return 'പഴയവ ഓട്ടো-ഡിലീറ്റ് ചെയ്യുക:';
			case 'data.autoDeleteSub': return 'എല്ലാ ചാറ്റ് മോഡുകൾക്കും ఇది ബാധകമാണ്.';
			case 'data.modes': return 'മോഡുകൾ';
			case 'data.noData': return 'ചാറ്റുകൾ ലഭ്യമല്ല';
			case 'data.deleteAll': return 'എല്ലാ ഡാറ്റയും ഡിലീറ്റ് ചെയ്യുക';
			case 'data.authReq': return 'വീണ്ടും ലോഗിൻ ചെയ്യേണ്ടതുണ്ട്';
			case 'data.viewChats': return 'കാണുക';
			case 'data.deleteAllPillar': return 'ഡിലീറ്റ്';
			case 'data.space': return 'ഇടം:';
			case 'data.activeInstances': return 'സജീവമായവ:';
			case 'pin_setup.title_setup': return '4-അക്ക പിൻ സജ്ಜമാക്കുക';
			case 'pin_setup.subtitle_setup': return 'ആപ്പ് ആക്സസ് ചെയ്യുന്നതിന് ഒരു സുരക്ഷിത കോഡ് സൃഷ്ടിക്കുക';
			case 'pin_setup.title_confirm': return 'പിൻ സ്ഥിരീകരിക്കുക';
			case 'pin_setup.subtitle_confirm': return 'സ്ഥിരീകരിക്കുന്നതിന് നിങ്ങളുടെ 4-അക്ക കോഡ് വീണ്ടും നൽകുക';
			case 'pin_setup.title_verify': return 'നിലവിലെ പിൻ നൽകുക';
			case 'pin_setup.subtitle_verify': return 'തുടരുന്നതിന് നിങ്ങളുടെ നിലവിലുള്ള കോഡ് നൽകുക';
			case 'pin_setup.error_mismatch': return 'പിന്നുകൾ പൊരുത്തപ്പെടുന്നില്ല. വീണ്ടും ശ്രമിക്കുക.';
			case 'pin_setup.error_incorrect': return 'തെറ്റായ പിൻ. ദയവായി വീണ്ടും ശ്രമിക്കുക.';
			case 'pin_setup.snack_success': return 'പിൻ വിജയകരമായി സജ്ജമാക്കി';
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
			case 'model_mgmt.appBar': return 'മോഡൽ മാനേജ്‌മെന്റ്';
			case 'model_mgmt.subtitle': return 'ലോക്കൽ എഡ്ജ് AI ഭാഷാ മോഡലുകൾ ക്രമീകരിക്കുക';
			case 'model_mgmt.status_loaded': return 'ലോഡ് ചെയ്തു';
			case 'model_mgmt.status_unloaded': return 'ലോഡ് ചെയ്തിട്ടില്ല';
			case 'model_mgmt.status_loading': return 'ലോഡ് ചെയ്യുന്നു...';
			case 'model_mgmt.size': return ({required Object size}) => 'വലുപ്പം: ${size}';
			case 'model_mgmt.load': return 'ലോഡ് ചെയ്യുക';
			case 'model_mgmt.unload': return 'അൺലോഡ് ചെയ്യുക';
			case 'model_mgmt.download': return 'ഡൗൺലോഡ്';
			case 'model_mgmt.delete': return 'നീക്കം ചെയ്യുക';
			case 'model_mgmt.brahm_2b_desc': return 'മൊബൈൽ ഉപകരണങ്ങളിൽ കുറഞ്ഞ ലാറ്റൻസി ടെക്സ്റ്റ് കംപ്ലീഷനും ചാറ്റിനുമായി രൂപകൽപ്പന ചെയ്ത അതിവേഗ കോംപാക്റ്റ് എഡ്ജ് മോഡൽ.';
			case 'model_mgmt.brahm_5b_desc': return 'മെച്ചപ്പെട്ട ടാസ്ക് കൃത്യതയും സങ്കീർണ്ണമായ ഇൻസ്ട്രക്ഷണൽ പെർഫോമൻസും വാഗ്ദാനം ചെയ്യുന്ന സന്തുലിതമായ റീസണിംഗ് മോഡൽ.';
			default: return null;
		}
	}
}

extension on _StringsMr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'नमस्कार';
			case 'mind_today': return 'आज तुमच्या मनात काय आहे?';
			case 'on_device_only': return 'फक्त या डिव्हाइसवर';
			case 'offline': return 'ऑफलाइन';
			case 'start_something': return 'काहीतरी सुरू करा';
			case 'ask_anything': return 'काहीही विचारा';
			case 'ask_anything_sub': return 'आरोग्य · कायदेशीर · वैयक्तिक · काम';
			case 'voice_mode': return 'व्हॉइस मोड';
			case 'voice_mode_sub': return 'तुमच्या भाषेत बोला';
			case 'ask_image': return 'प्रतिमेबद्दल विचारा';
			case 'ask_image_sub': return 'फॉर्म, लेबले, स्क्रिप्ट';
			case 'panchang': return 'पंचांग';
			case 'panchang_sub': return 'आजची तिथी आणि मुहूर्त';
			case 'ephemeral': return 'तात्पुरते';
			case 'ephemeral_sub': return 'कोणताही माग न ठेवता बोला';
			case 'recent': return 'अलीकडील';
			case 'home': return 'होम';
			case 'chat': return 'चॅट';
			case 'library': return 'लायब्ररी';
			case 'you': return 'तुम्ही';
			case 'settings_pref': return 'प्रोफाइल सेटिंग्ज';
			case 'preferences': return 'प्राधान्ये आणि सुरक्षा';
			case 'language': return 'भाषा';
			case 'security': return 'सुरक्षा';
			case 'security_sub': return 'अॅप लॉक · 2FA';
			case 'privacy_tiers': return 'गोपनीयता मोड';
			case 'privacy_tiers_sub': return '१ सक्रिय \'ZiqeX ऐकण्याचा मोड\'';
			case 'storage_purge': return 'डेटा आणि संचय';
			case 'storage_purge_sub': return 'डिव्हाइसवर १८४ KB';
			case 'ephemeral_mode': return 'गुप्त चॅट';
			case 'about': return 'सिस्टम माहिती';
			case 'reset_prototype': return 'प्रोटोटाइप रीसेट करा';
			case 'built_in_india': return 'भारतात निर्मित. जगासाठी.';
			case 'library_sub': return 'प्रत्येक मॉडेल · प्रत्येक स्मृती · या डिव्हाइसवर';
			case 'on_this_device': return 'या डिव्हाइसवर';
			case 'active': return 'सक्रिय';
			case 'add': return '+ जोडा';
			case 'storage_used': return 'वापरलेले स्टोरेज';
			case 'health_question': return 'आरोग्यविषयक प्रश्न';
			case 'family': return 'कुटुंब';
			case 'work': return 'काम';
			case 'just_thinking': return 'फक्त विचार करत आहे';
			case 'profile.access': return 'प्रवेश';
			case 'profile.privacy': return 'गोपनीयता';
			case 'profile.system': return 'सिस्टम';
			case 'profile.security_active': return 'सुरक्षा सक्रिय';
			case 'profile.security_inactive': return 'सुरक्षा निष्क्रिय';
			case 'profile.dark_mode': return 'डार्क मोड';
			case 'profile.dark_mode_sub': return 'लाइट आणि डार्क वर्कस्पेस थीममध्ये बदला';
			case 'profile.data_mgmt': return 'चॅट डेटा व्यवस्थापन आणि संचय';
			case 'profile.data_mgmt_sub': return 'तुमचा संभाषण इतिहास व्यवस्थापित करा';
			case 'profile.app_lock': return 'अॅप लॉक';
			case 'profile.app_lock_sub': return 'फिंगरप्रिंट, चेहरा किंवा पिनद्वारे ZiqeX सुरक्षित करा';
			case 'profile.incognito_sub': return 'इतिहासात जतन न करता चॅट करा. चॅटमधून बाहेर पडल्यानंतर ते पुनर्प्राप्त करता येणार नाही';
			case 'profile.version': return 'V0.1 • सार्वभौम • ऑन-डिव्हाइस';
			case 'welcome.meet': return 'ZiqeX ला भेटा';
			case 'welcome.at_edge': return 'एजवरील बुद्धिमत्ता';
			case 'welcome.private': return 'खासगी आणि एज AI\nZenteiQ द्वारे';
			case 'welcome.begin': return 'ऑनबोर्डिंग सुरू करा';
			case 'info.title': return 'तुमच्यासाठी डिझाइन केलेली बुद्धिमत्ता';
			case 'info.subtitle': return 'गोपनीयता, निवड आणि नियंत्रणासह उपयुक्त AI अनुभव.';
			case 'info.privacy_title': return 'गोपनीयता प्रथम';
			case 'info.privacy_desc': return 'ZiqeX ची बुद्धिमत्ता आणि तुमची माहिती तुमच्या डिव्हाइसवरच सुरक्षित ठेवण्यासाठी डिझाइन केली आहे.';
			case 'info.hand_title': return 'तुमच्या हातात बुद्धिमत्ता';
			case 'info.hand_desc': return 'दैनंदिन गरजांसाठीची बुद्धिमत्ता थेट तुमच्या डिव्हाइसवर उपलब्ध.';
			case 'info.control_title': return 'तुमचा डेटा. तुमचे नियंत्रण.';
			case 'info.control_desc': return 'काय ठेवायचे ते निवडा, साठवलेल्या माहितीचे व्यवस्थापन करा आणि ज्याची गरज नाही ते हटवा.';
			case 'info.place_title': return 'प्रत्येक ठिकाणासाठी डिझाइन केलेले';
			case 'info.place_desc': return 'विविध भाषा, डिव्हाइस आणि लोक तंत्रज्ञानाचा वापर करण्याच्या विविध पद्धतींसाठी तयार केलेले.';
			case 'info.footer': return 'तुमची बुद्धिमत्ता. तुमचे डिव्हाइस. तुमचे नियंत्रण.';
			case 'info.setup': return 'तुमचे ZiqeX सेट अप करा';
			case 'languageSelection.appBar': return 'भाषा निवड';
			case 'languageSelection.title': return 'तुमची भाषा निवडा';
			case 'languageSelection.subtitle': return 'तुमच्या इंटरफेससाठी भाषा निवडा.';
			case 'languageSelection.back': return 'मागे';
			case 'languageSelection.continueBtn': return 'पुढे जा';
			case 'pillars.appBar': return 'स्तंभ निवड';
			case 'pillars.title': return 'तुमचे स्तंभ निवडा';
			case 'pillars.subtitle': return 'तुम्हाला ज्या मुख्य क्षमतांवर लक्ष केंद्रित करायचे आहे त्या निवडा.';
			case 'pillars.general': return 'सामान्य';
			case 'pillars.operational': return 'कार्यात्मक';
			case 'pillars.personal': return 'वैयक्तिक सल्ला';
			case 'pillars.workplace': return 'कार्यस्थळ';
			case 'pillars.culture': return 'संस्कृती आणि कुटुंब';
			case 'pillars.journal': return 'दैनंदिन डायरी';
			case 'pillars.back': return 'मागे';
			case 'pillars.continueBtn': return 'पुढे जा';
			case 'modelDownload.title1': return 'BrahmAI\nतुमच्या डिव्हाइसवर ';
			case 'modelDownload.title2': return 'आणत आहोत.';
			case 'modelDownload.subtitle': return 'फक्त एकदाच. यानंतर आम्ही तुमच्या डेटाला कधीही स्पर्श करणार नाही.';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'तयार';
			case 'modelDownload.validating': return 'तपासणी सुरू आहे...';
			case 'modelDownload.langs': return '१४ भाषा';
			case 'modelDownload.toks': return '~१८ tok/s';
			case 'modelDownload.ttft': return '~१४० ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'त्रुटी: ${error}';
			case 'modelDownload.retry': return 'पुन्हा प्रयत्न करा';
			case 'modelDownload.open': return 'BrahmAI उघडा';
			case 'modelDownload.download': return 'मॉडेल डाउनलोड करा';
			case 'modelDownload.later': return 'नंतर सेट अप करा';
			case 'modelDownload.continueSub': return 'मॉडेल डाउनलोड न करता पुढे जा. तुम्ही तयार झाल्यावर ते जोडू शकता';
			case 'library_v2.subtitle': return 'तुमच्या AI संसाधनांचे व्यवस्थापन करा';
			case 'library_v2.language_title': return 'भाषा';
			case 'library_v2.language_desc': return 'तुमच्या पसंतीच्या भाषा निवडा आणि व्यवस्थापित करा';
			case 'library_v2.model_title': return 'मॉडेल';
			case 'library_v2.model_desc': return 'उपलब्ध AI मॉडेल्स एक्सप्लोर करा आणि व्यवस्थापित करा';
			case 'library_v2.saved_title': return 'साठवलेले';
			case 'library_v2.saved_desc': return 'तुमची प्रॉम्प्ट लायब्ररी';
			case 'library_v2.skills_title': return 'कौशल्ये';
			case 'library_v2.skills_desc': return 'AI क्षमता';
			case 'library_v2.pillars_title': return 'स्तंभ';
			case 'library_v2.pillars_desc': return 'मुख्य बुद्धिमत्ता क्षेत्र';
			case 'biometric.vault': return 'व्हॉल्ट सुरक्षा';
			case 'biometric.setupTitle': return 'सुरक्षित लॉक सेटअप';
			case 'biometric.setupSub': return 'तुमच्या पसंतीच्या प्रमाणीकरण पद्धतीने तुमचा व्हॉल्ट सुरक्षित करा.';
			case 'biometric.deviceTitle': return 'डिव्हाइस बायोमेट्रिक्स';
			case 'biometric.deviceSub': return 'Face ID किंवा फिंगरप्रिंट वापरा';
			case 'biometric.pinTitle': return 'अॅप-विशिष्ट पिन';
			case 'biometric.pinSub': return 'एक अद्वितीय ४-अंकी कोड सेट करा';
			case 'biometric.dialogTitle': return 'बायोमेट्रिक प्रवेशाला परवानगी द्या';
			case 'biometric.dialogSub': return 'ZiqeX अनलॉक करण्यासाठी तुमचा फिंगरप्रिंट किंवा डिव्हाइसवरील चेहरा ओळख वापरा';
			case 'biometric.cancel': return 'रद्द करा';
			case 'biometric.allow': return 'बायोमेट्रिक्सला परवानगी द्या';
			case 'security_screen.appBar': return 'अॅप सुरक्षा';
			case 'security_screen.global_protection': return 'एकूण सुरक्षा';
			case 'security_screen.app_lock': return 'अॅप लॉक';
			case 'security_screen.app_lock_sub': return 'ZiqeX उघडण्यासाठी प्रमाणीकरण आवश्यक आहे';
			case 'security_screen.auth_methods': return 'प्रमाणीकरण पद्धती';
			case 'security_screen.biometrics_title': return 'डिव्हाइस बायोमेट्रिक्स';
			case 'security_screen.biometrics_sub': return 'फिंगरप्रिंट किंवा चेहऱ्याद्वारे त्वरित अनलॉक करा';
			case 'security_screen.pin_title': return 'ZiqeX पिन';
			case 'security_screen.pin_active': return 'पिन सक्रिय आहे';
			case 'security_screen.pin_setup': return 'अॅप अनलॉक करण्यासाठी एक अद्वितीय ४-अंकी कोड सेट करा';
			case 'security_screen.warning_title': return 'खूप जास्त चुकीचे प्रयत्न';
			case 'security_screen.warning_sub': return '१० वेळा चुकीचा पिन टाकल्यास ZiqeX आपोआप रीसेट होईल. या डिव्हाइसवर साठवलेला सर्व डेटा कायमचा हटवला जाईल';
			case 'security_screen.incomplete_title': return 'सुरक्षा सेटअप अपूर्ण';
			case 'security_screen.incomplete_content': return 'तुम्ही अॅप लॉक सक्षम केले आहे, परंतु पिन किंवा बायोमेट्रिक्स सेट केलेले नाहीत. कोणतीही पद्धत कॉन्फिगर करेपर्यंत अॅप लॉक निष्क्रिय राहील.';
			case 'security_screen.got_it': return 'समजले';
			case 'data.appBar': return 'डेटा व्यवस्थापन आणि\nसंचय';
			case 'data.summary': return 'स्टोरेज सारांश';
			case 'data.totalUsed': return 'एकूण वापरलेले: ';
			case 'data.legendModel': return 'मॉडेल वेट्स';
			case 'data.legendFree': return 'मोकळी जागा';
			case 'data.mgmt': return 'मॉडेल व्यवस्थापन';
			case 'data.deleteModels': return 'डाउनलोड केलेली सर्व मॉडेल्स हटवा';
			case 'data.deleteModelsSub': return 'या डिव्हाइसवरून सर्व स्थानिक मॉडेल वेट्स आणि फाइन-ट्यून केलेले पॅरामीटर्स पूर्णपणे काढून टाका.';
			case 'data.selectDelete': return 'हटवण्यासाठी मॉडेल निवडा';
			case 'data.autoDelete': return 'यापेक्षा जुने चॅट आपोआप हटवा:';
			case 'data.autoDeleteSub': return 'ही सेटिंग सर्व अनलिंक केलेल्या संभाषण मोड्सना लागू होते.';
			case 'data.modes': return 'मोड्स';
			case 'data.noData': return 'कोणताही सक्रिय चॅट डेटा नाही';
			case 'data.deleteAll': return 'सर्व डेटा हटवा';
			case 'data.authReq': return 'अॅप लॉकसाठी पुन्हा प्रमाणीकरण आवश्यक आहे';
			case 'data.viewChats': return 'चॅट्स पहा';
			case 'data.deleteAllPillar': return 'सर्व हटवा';
			case 'data.space': return 'जागा:';
			case 'data.activeInstances': return 'सक्रिय इंस्टन्सेस:';
			case 'pin_setup.title_setup': return '४-अंकी पिन सेट करा';
			case 'pin_setup.subtitle_setup': return 'अॅपमध्ये प्रवेश करण्यासाठी सुरक्षित कोड तयार करा';
			case 'pin_setup.title_confirm': return 'पिनची पुष्टी करा';
			case 'pin_setup.subtitle_confirm': return 'पडताळणीसाठी तुमचा ४-अंकी कोड पुन्हा प्रविष्ट करा';
			case 'pin_setup.title_verify': return 'सध्याचा पिन प्रविष्ट करा';
			case 'pin_setup.subtitle_verify': return 'पुढे जाण्यासाठी तुमचा सध्याचा कोड प्रविष्ट करा';
			case 'pin_setup.error_mismatch': return 'पिन जुळत नाहीत. पुन्हा प्रयत्न करा.';
			case 'pin_setup.error_incorrect': return 'चुकीचा पिन. कृपया पुन्हा प्रयत्न करा.';
			case 'pin_setup.snack_success': return 'पिन यशस्वीरित्या सेट केला';
			case 'pin_mgmt.appBar': return 'अॅप-विशिष्ट पिन';
			case 'pin_mgmt.change_title': return 'पिन बदला';
			case 'pin_mgmt.change_sub': return 'तुमचा ४-अंकी ZiqeX सुरक्षा कोड अपडेट करा';
			case 'pin_mgmt.remove_title': return 'पिन काढा';
			case 'pin_mgmt.remove_sub': return 'ZiqeX साठी पिनद्वारे प्रवेश बंद करा';
			case 'pin_mgmt.snack_removed': return 'पिन यशस्वीरित्या काढला';
			case 'lang_legacy.title1': return 'कोणती भाषा\n';
			case 'lang_legacy.title2': return 'आपलीशी वाटते?';
			case 'lang_legacy.subtitle': return 'तुमच्या मातृभाषेत व्हॉइस, मजकूर आणि उत्तरे. कधीही बदला.';
			case 'lang_legacy.first_reply': return 'पहिले उत्तर असे असेल';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - तुमच्या लिपीत लिहिले आणि बोलले जाईल';
			case 'lang_legacy.continueBtn': return 'पुढे जा';
			case 'model_mgmt.appBar': return 'मॉडेल व्यवस्थापन';
			case 'model_mgmt.subtitle': return 'स्थानिक एज AI भाषा मॉडेल्स कॉन्फिगर करा';
			case 'model_mgmt.status_loaded': return 'लोडेड';
			case 'model_mgmt.status_unloaded': return 'अनलोडेड';
			case 'model_mgmt.status_loading': return 'लोड होत आहे...';
			case 'model_mgmt.size': return ({required Object size}) => 'आकार: ${size}';
			case 'model_mgmt.load': return 'लोड करा';
			case 'model_mgmt.unload': return 'अनलोड करा';
			case 'model_mgmt.download': return 'डाउनलोड';
			case 'model_mgmt.delete': return 'हटवा';
			case 'model_mgmt.brahm_2b_desc': return 'मोबाईल उपकरणांवर कमी विलंबाने मजकूर पूर्ण करण्यासाठी आणि चॅटसाठी डिझाइन केलेले अल्ट्रा-फास्ट कॉम्पॅक्ट एज मॉडेल.';
			case 'model_mgmt.brahm_5b_desc': return 'प्रगत कार्य अचूकता आणि जटिल सूचनात्मक कामगिरी देणारे संतुलित रिझनिंग मॉडेल.';
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
			case 'start_something': return 'କିଛି ଆରମ୍ଭ କରନ୍ତୁ';
			case 'ask_anything': return 'ଯାହା କିଛି ପଚାରନ୍ତୁ';
			case 'ask_anything_sub': return 'ସ୍ୱାସ୍ଥ୍ୟ · ଆଇନଗତ · ବ୍ୟକ୍ତିଗତ · କାର୍ଯ୍ୟ';
			case 'voice_mode': return 'ଭଏସ୍ ମୋଡ୍';
			case 'voice_mode_sub': return 'ଆପଣଙ୍କ ଭାଷାରେ କଥା ହୁଅନ୍ତୁ';
			case 'ask_image': return 'ଛବି ବିଷୟରେ ପଚାରନ୍ତୁ';
			case 'ask_image_sub': return 'ଫର୍ମ, ଲେବଲ୍, ସ୍କ୍ରିପ୍ଟ';
			case 'panchang': return 'ପଞ୍ଜିକା';
			case 'panchang_sub': return 'ଆଜିର ତିଥି ଓ ମୁହୂର୍ତ୍ତ';
			case 'ephemeral': return 'କ୍ଷଣସ୍ଥାୟୀ';
			case 'ephemeral_sub': return 'କୌଣସି ଚିହ୍ନ ନରଖି କଥା ହୁଅନ୍ତୁ';
			case 'recent': return 'ସମ୍ପ୍ରତିକ';
			case 'home': return 'ହୋମ୍';
			case 'chat': return 'ଚାଟ୍';
			case 'library': return 'ଲାଇବ୍ରେରୀ';
			case 'you': return 'ଆପଣ';
			case 'settings_pref': return 'ପ୍ରୋଫାଇଲ୍ ସେଟିଂସ୍';
			case 'preferences': return 'ପସନ୍ଦ ଏବଂ ସୁରକ୍ଷା';
			case 'language': return 'ଭାଷା';
			case 'security': return 'ସୁରକ୍ଷା';
			case 'security_sub': return 'ଆପ୍ ଲକ୍ · 2FA';
			case 'privacy_tiers': return 'ଗୋପନୀୟତା ମୋଡ୍';
			case 'privacy_tiers_sub': return '୧ଟି ସକ୍ରିୟ \'ZiqeX ଶୁଣିବା ମୋଡ୍\'';
			case 'storage_purge': return 'ଡାଟା ଏବଂ ସଂରକ୍ଷଣ';
			case 'storage_purge_sub': return 'ଡିଭାଇସରେ ୧୮୪ KB';
			case 'ephemeral_mode': return 'ଗୁପ୍ତ ଚାଟ୍';
			case 'about': return 'ସିଷ୍ଟମ୍ ସୂଚନା';
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
			case 'profile.dark_mode_sub': return 'ଲାଇଟ୍ ଏବଂ ଡାର୍କ ୱର୍କସ୍ପେସ୍ ଥିମ୍ ମଧ୍ୟରେ ପରିବର୍ତ୍ତନ କରନ୍ତୁ';
			case 'profile.data_mgmt': return 'ଚାଟ୍ ଡାଟା ପରିଚାଳନା ଏବଂ ସଂରକ୍ଷଣ';
			case 'profile.data_mgmt_sub': return 'ଆପଣଙ୍କର ବାର୍ତ୍ତାଳାପ ଇତିହାସ ପରିଚାଳନା କରନ୍ତୁ';
			case 'profile.app_lock': return 'ଆପ୍ ଲକ୍';
			case 'profile.app_lock_sub': return 'ଆପଣଙ୍କ ଫିଙ୍ଗରପ୍ରିଣ୍ଟ, ମୁହଁ କିମ୍ବା ପିନ୍ ସହିତ ZiqeX କୁ ସୁରକ୍ଷିତ କରନ୍ତୁ';
			case 'profile.incognito_sub': return 'ଇତିହାସରେ ସଂରକ୍ଷଣ ନକରି ଚାଟ୍ କରନ୍ତୁ। ଚାଟ୍ ରୁ ବାହାରିବା ପରେ ଏହାକୁ ପୁନରୁଦ୍ଧାର କରାଯାଇପାରିବ ନାହିଁ';
			case 'profile.version': return 'V0.1 • ସାର୍ବଭୌମ • ଅନ୍-ଡିଭାଇସ୍';
			case 'welcome.meet': return 'ZiqeX ସହିତ ପରିଚିତ ହୁଅନ୍ତୁ';
			case 'welcome.at_edge': return 'ଏଜ୍‌ରେ ବୁଦ୍ଧିମତା';
			case 'welcome.private': return 'ବ୍ୟକ୍ତିଗତ ଏବଂ ଏଜ୍ AI\nZenteiQ ଦ୍ୱାରା';
			case 'welcome.begin': return 'ଅନବୋର୍ଡିଂ ଆରମ୍ଭ କରନ୍ତୁ';
			case 'info.title': return 'ଆପଣଙ୍କ ପାଇଁ ନିର୍ମିତ ବୁଦ୍ଧିମତା';
			case 'info.subtitle': return 'ଗୋପନୀୟତା, ପସନ୍ଦ ଏବଂ ନିୟନ୍ତ୍ରଣ ସହିତ ନିର୍ମିତ ଉପଯୋଗୀ AI ଅନୁଭୂତି।';
			case 'info.privacy_title': return 'ଗୋପନୀୟତା ପ୍ରଥମେ';
			case 'info.privacy_desc': return 'ZiqeX ଆପଣଙ୍କ ବୁଦ୍ଧିମତା ଏବଂ ସୂଚନାକୁ ଆପଣଙ୍କ ଡିଭାଇସ୍‌ରେ ରଖିବା ପାଇଁ ଡିଜାଇନ୍ କରାଯାଇଛି।';
			case 'info.hand_title': return 'ଆପଣଙ୍କ ହାତରେ ବୁଦ୍ଧିମତା';
			case 'info.hand_desc': return 'ଦୈନନ୍ଦିନ ବୁଦ୍ଧିମତା, ସିଧାସଳଖ ଆପଣଙ୍କ ଡିଭାଇସରେ ଉପଲବ୍ଧ।';
			case 'info.control_title': return 'ଆପଣଙ୍କ ଡାଟା। ଆପଣଙ୍କ ନିୟନ୍ତ୍ରଣ।';
			case 'info.control_desc': return 'କ’ଣ ରଖିବେ ତାହା ବାଛନ୍ତୁ, ସଂରକ୍ଷିତ ଡାଟା ପରିଚାଳନା କରନ୍ତୁ ଏବଂ ଆଉ ଆବଶ୍ୟକ ନଥିବା ଡାଟାକୁ ଡିଲିଟ୍ କରନ୍ତୁ।';
			case 'info.place_title': return 'ପ୍ରତ୍ୟେକ ସ୍ଥାନ ପାଇଁ ନିର୍ମିତ';
			case 'info.place_desc': return 'ବିଭିନ୍ନ ଭାଷା, ଡିଭାଇସ୍ ଏବଂ ଲୋକମାନେ ପ୍ରଯୁକ୍ତି ବ୍ୟବହାର କରୁଥିବା ବିଭିନ୍ନ ଉପାୟ ପାଇଁ ନିର୍ମିତ।';
			case 'info.footer': return 'ଆପଣଙ୍କ ବୁଦ୍ଧିମତା। ଆପଣଙ୍କ ଡିଭାଇସ୍। ଆପଣଙ୍କ ନିୟନ୍ତ୍ରଣ।';
			case 'info.setup': return 'ଆପଣଙ୍କ ZiqeX ସେଟ୍ ଅପ୍ କରନ୍ତୁ';
			case 'languageSelection.appBar': return 'ଭାଷା ଚୟନ';
			case 'languageSelection.title': return 'ଆପଣଙ୍କ ଭାଷା ବାଛନ୍ତୁ';
			case 'languageSelection.subtitle': return 'ଆପଣଙ୍କ ଇଣ୍ଟରଫେସ୍ ପାଇଁ ଭାଷା ବାଛନ୍ତୁ।';
			case 'languageSelection.back': return 'ପଛକୁ';
			case 'languageSelection.continueBtn': return 'ଜାରି ରଖନ୍ତୁ';
			case 'pillars.appBar': return 'ପିଲାର୍ ଚୟନ';
			case 'pillars.title': return 'ଆପଣଙ୍କ ପିଲାର୍ ବାଛନ୍ତୁ';
			case 'pillars.subtitle': return 'ଆପଣ ଯେଉଁ ମୁଖ୍ୟ କ୍ଷମତାଗୁଡ଼ିକ ଉପରେ ଧ୍ୟାନ ଦେବାକୁ ଚାହୁଁଛନ୍ତି, ସେଗୁଡ଼ିକ ବାଛନ୍ତୁ।';
			case 'pillars.general': return 'ସାଧାରଣ';
			case 'pillars.operational': return 'କାର୍ଯ୍ୟକ୍ଷମତା';
			case 'pillars.personal': return 'ବ୍ୟକ୍ତିଗତ ପରାମର୍ଶ';
			case 'pillars.workplace': return 'କର୍ମକ୍ଷେତ୍ର';
			case 'pillars.culture': return 'ସଂସ୍କୃତି ଏବଂ ପରିବାର';
			case 'pillars.journal': return 'ଦୈନିକ ଡାଏରୀ';
			case 'pillars.back': return 'ପଛକୁ';
			case 'pillars.continueBtn': return 'ଜାରି ରଖନ୍ତୁ';
			case 'modelDownload.title1': return 'BrahmAI-କୁ\nଆପଣଙ୍କ ନିକଟକୁ ';
			case 'modelDownload.title2': return 'ଆଣୁଛୁ।';
			case 'modelDownload.subtitle': return 'କେବଳ ଥରେ। ଏହା ପରେ, ଆମେ ଆପଣଙ୍କ ଡାଟାକୁ କେବେବି ସ୍ପର୍ଶ କରିବୁ ନାହିଁ।';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'ପ୍ରସ୍ତୁତ';
			case 'modelDownload.validating': return 'ଯାଞ୍ଚ କରାଯାଉଛି...';
			case 'modelDownload.langs': return '୧୪ଟି ଭାଷା';
			case 'modelDownload.toks': return '~୧୮ tok/s';
			case 'modelDownload.ttft': return '~୧୪୦ ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'ତ୍ରୁଟି: ${error}';
			case 'modelDownload.retry': return 'ପୁନର୍ବାର ଚେଷ୍ଟା କରନ୍ତୁ';
			case 'modelDownload.open': return 'BrahmAI ଖୋଲନ୍ତୁ';
			case 'modelDownload.download': return 'ମଡେଲ୍ ଡାଉନଲୋଡ୍ କରନ୍ତୁ';
			case 'modelDownload.later': return 'ପରେ ସେଟ୍ ଅପ୍ କରନ୍ତୁ';
			case 'modelDownload.continueSub': return 'ମଡେଲ୍ ଡାଉନଲୋଡ୍ ନକରି ଆଗକୁ ବଢନ୍ତୁ। ଆପଣ ପ୍ରସ୍ତୁତ ହେଲେ ଗୋଟିଏ ଯୋଡିପାରିବେ';
			case 'library_v2.subtitle': return 'ଆପଣଙ୍କ AI ସମ୍ବଳଗୁଡ଼ିକ ପରିଚାଳନା କରନ୍ତୁ';
			case 'library_v2.language_title': return 'ଭାଷା';
			case 'library_v2.language_desc': return 'ଆପଣଙ୍କ ପସନ୍ଦର ଭାଷାଗୁଡ଼ିକ ବାଛନ୍ତୁ ଏବଂ ପରିଚାଳନା କରନ୍ତୁ';
			case 'library_v2.model_title': return 'ମଡେଲ୍';
			case 'library_v2.model_desc': return 'ଉପଲବ୍ଧ AI ମଡେଲଗୁଡ଼ିକୁ ଖୋଜନ୍ତୁ ଏବଂ ପରିଚାଳନା କରନ୍ତୁ';
			case 'library_v2.saved_title': return 'ସଂରକ୍ଷିତ';
			case 'library_v2.saved_desc': return 'ଆପଣଙ୍କ ପ୍ରମ୍ପ୍ଟ ଲାଇବ୍ରେରୀ';
			case 'library_v2.skills_title': return 'ଦକ୍ଷତା';
			case 'library_v2.skills_desc': return 'AI କ୍ଷମତା';
			case 'library_v2.pillars_title': return 'ପିଲାର୍';
			case 'library_v2.pillars_desc': return 'ମୁଖ୍ୟ କ୍ଷମତା';
			case 'biometric.vault': return 'ଭଲ୍ଟ ସୁରକ୍ଷା';
			case 'biometric.setupTitle': return 'ସୁରକ୍ଷିତ ଲକ୍ ସେଟ୍ ଅପ୍';
			case 'biometric.setupSub': return 'ଆପଣଙ୍କ ପସନ୍ଦର ପ୍ରମାଣୀକରଣ ପଦ୍ଧତି ସହିତ ଆପଣଙ୍କ ଭଲ୍ଟକୁ ସୁରକ୍ଷିତ କରନ୍ତୁ।';
			case 'biometric.deviceTitle': return 'ଡିଭାଇସ୍ ବାୟୋମେଟ୍ରିକ୍ସ';
			case 'biometric.deviceSub': return 'Face ID କିମ୍ବା ଫିଙ୍ଗରପ୍ରିଣ୍ଟ ବ୍ୟବହାର କରନ୍ତୁ';
			case 'biometric.pinTitle': return 'ଆପ୍-ନିର୍ଦ୍ଦିଷ୍ଟ ପିନ୍';
			case 'biometric.pinSub': return 'ଏକ ଅନନ୍ୟ ୪-ଅଙ୍କ ବିଶିଷ୍ଟ କୋଡ୍ ସେଟ୍ କରନ୍ତୁ';
			case 'biometric.dialogTitle': return 'ବାୟୋମେଟ୍ରିକ୍ ଆକ୍ସେସ୍‌କୁ ଅନୁମତି ଦିଅନ୍ତୁ';
			case 'biometric.dialogSub': return 'ZiqeX ଅନଲକ୍ କରିବା ପାଇଁ ଆପଣଙ୍କ ଫିଙ୍ଗରପ୍ରିଣ୍ଟ କିମ୍ବା ଡିଭାଇସ୍‌ର ମୁହଁ ଚିହ୍ନଟ ବ୍ୟବହାର କରନ୍ତୁ';
			case 'biometric.cancel': return 'ବାତିଲ୍ କରନ୍ତୁ';
			case 'biometric.allow': return 'ବାୟୋମେଟ୍ରିକ୍ସକୁ ଅନୁମତି ଦିଅନ୍ତୁ';
			case 'security_screen.appBar': return 'ଆପ୍ ସୁରକ୍ଷା';
			case 'security_screen.global_protection': return 'ସାମଗ୍ରିକ ସୁରକ୍ଷା';
			case 'security_screen.app_lock': return 'ଆପ୍ ଲକ୍';
			case 'security_screen.app_lock_sub': return 'ZiqeX ଖୋଲିବା ପାଇଁ ପ୍ରମାଣୀକରଣ ଆବଶ୍ୟକ';
			case 'security_screen.auth_methods': return 'ପ୍ରମାଣୀକରଣ ପଦ୍ଧତି';
			case 'security_screen.biometrics_title': return 'ଡିଭାଇସ୍ ବାୟୋମେଟ୍ରିକ୍ସ';
			case 'security_screen.biometrics_sub': return 'ଆପଣଙ୍କ ଫିଙ୍ଗରପ୍ରିଣ୍ଟ କିମ୍ବା ମୁହଁ ଦ୍ୱାରା ତୁରନ୍ତ ଅନଲକ୍ କରନ୍ତୁ';
			case 'security_screen.pin_title': return 'ZiqeX ପିନ୍';
			case 'security_screen.pin_active': return 'ପିନ୍ ସକ୍ରିୟ ଅଛି';
			case 'security_screen.pin_setup': return 'ଆପ୍ ଅନଲକ୍ କରିବା ପାଇଁ ଏକ ଅନନ୍ୟ ୪-ଅଙ୍କ ବିଶିଷ୍ଟ କୋଡ୍ ସେଟ୍ କରନ୍ତୁ';
			case 'security_screen.warning_title': return 'ଅତ୍ୟଧିକ ଭୁଲ୍ ପ୍ରୟାସ';
			case 'security_screen.warning_sub': return 'ଭୁଲ୍ ପିନ୍ ୧୦ ଥର ଦିଆଗଲେ, ZiqeX ସ୍ୱୟଂଚାଳିତ ଭାବେ ରିସେଟ୍ ହୋଇଯିବ। ଏହି ଡିଭାଇସରେ ସଂରକ୍ଷିତ ସମସ୍ତ ଡାଟା ସ୍ଥାୟୀ ଭାବେ ଡିଲିଟ୍ ହୋଇଯିବ';
			case 'security_screen.incomplete_title': return 'ସୁରକ୍ଷା ସେଟ୍ ଅପ୍ ଅସମ୍ପୂର୍ଣ୍ଣ';
			case 'security_screen.incomplete_content': return 'ଆପଣ ଆପ୍ ଲକ୍ ସକ୍ଷମ କରିଛନ୍ତି, କିନ୍ତୁ ପିନ୍ କିମ୍ବା ବାୟୋମେଟ୍ରିକ୍ସ ସେଟ୍ କରିନାହାନ୍ତି। କୌଣସି ଏକ ପଦ୍ଧତି ସେଟ୍ ଅପ୍ ନହେବା ପର୍ଯ୍ୟନ୍ତ ଆପ୍ ଲକ୍ ଅକ୍ଷମ ରହିବ।';
			case 'security_screen.got_it': return 'ବୁଝିଲି';
			case 'data.appBar': return 'ଡାଟା ପରିଚାଳନା ଏବଂ\nସଂରକ୍ଷଣ';
			case 'data.summary': return 'ଷ୍ଟୋରେଜ୍ ସାରାଂଶ';
			case 'data.totalUsed': return 'ମୋଟ ବ୍ୟବହୃତ: ';
			case 'data.legendModel': return 'ମଡେଲ୍ ୱେଟ୍';
			case 'data.legendFree': return 'ଖାଲି ସ୍ଥାନ';
			case 'data.mgmt': return 'ମଡେଲ୍ ପରିଚାଳନା';
			case 'data.deleteModels': return 'ଡାଉନଲୋଡ୍ କରାଯାଇଥିବା ସମସ୍ତ ମଡେଲ୍ ଡିଲିଟ୍ କରନ୍ତୁ';
			case 'data.deleteModelsSub': return 'ଏହି ଡିଭାଇସରୁ ସମସ୍ତ ସ୍ଥାନୀୟ ମଡେଲ୍ ୱେଟ୍ ଏବଂ ପାରାମିଟର୍ ସମ୍ପୂର୍ଣ୍ଣ ଭାବେ ହଟାନ୍ତୁ।';
			case 'data.selectDelete': return 'ଡିଲିଟ୍ କରିବା ପାଇଁ ମଡେଲ୍ ବାଛନ୍ତୁ';
			case 'data.autoDelete': return 'ଏହାଠାରୁ ପୁରୁଣା ଚାଟ୍‌ଗୁଡ଼ିକୁ ସ୍ୱୟଂଚାଳିତ ଭାବେ ଡିଲିଟ୍ କରନ୍ତୁ:';
			case 'data.autoDeleteSub': return 'ଏହି ସେଟିଂ ସମସ୍ତ ଅନଲିଙ୍କ୍ ହୋଇଥିବା ବାର୍ତ୍ତାଳାପ ମୋଡ୍‌ରେ ପ୍ରଯୁଜ୍ୟ।';
			case 'data.modes': return 'ମୋଡ୍‌ଗୁଡ଼ିକ';
			case 'data.noData': return 'କୌଣସି ସକ୍ରିୟ ଚାଟ୍ ଡାଟା ନାହିଁ';
			case 'data.deleteAll': return 'ସମସ୍ତ ଡାଟା ଡିଲିଟ୍ କରନ୍ତୁ';
			case 'data.authReq': return 'ଆପ୍ ଲକ୍ ପାଇଁ ପୁନଃ-ପ୍ରମାଣୀକରଣ ଆବଶ୍ୟକ';
			case 'data.viewChats': return 'ଚାଟ୍‌ଗୁଡ଼ିକ ଦେଖନ୍ତୁ';
			case 'data.deleteAllPillar': return 'ସବୁ ଡିଲିଟ୍ କରନ୍ତୁ';
			case 'data.space': return 'ସ୍ଥାନ:';
			case 'data.activeInstances': return 'ସକ୍ରିୟ ଇନ୍‌ଷ୍ଟାନ୍ସ:';
			case 'pin_setup.title_setup': return '୪-ଅଙ୍କ ବିଶିଷ୍ଟ ପିନ୍ ସେଟ୍ କରନ୍ତୁ';
			case 'pin_setup.subtitle_setup': return 'ଆପ୍ ଆକ୍ସେସ୍ କରିବା ପାଇଁ ଏକ ସୁରକ୍ଷିତ କୋଡ୍ ସୃଷ୍ଟି କରନ୍ତୁ';
			case 'pin_setup.title_confirm': return 'ପିନ୍ ନିଶ୍ଚିତ କରନ୍ତୁ';
			case 'pin_setup.subtitle_confirm': return 'ଯାଞ୍ଚ କରିବା ପାଇଁ ଆପଣଙ୍କ ୪-ଅଙ୍କ କୋଡ୍ ପୁନର୍ବାର ପ୍ରବେଶ କରନ୍ତୁ';
			case 'pin_setup.title_verify': return 'ବର୍ତ୍ତମାନର ପିନ୍ ପ୍ରବେଶ କରନ୍ତୁ';
			case 'pin_setup.subtitle_verify': return 'ଜାରି ରଖିବା ପାଇଁ ଆପଣଙ୍କ ବର୍ତ୍ତମାନର କୋଡ୍ ପ୍ରବେଶ କରନ୍ତୁ';
			case 'pin_setup.error_mismatch': return 'ପିନ୍‌ଗୁଡ଼ିକ ମେଳ ହେଉନାହିଁ। ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';
			case 'pin_setup.error_incorrect': return 'ଭୁଲ୍ ପିନ୍। ଦୟାକରି ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ।';
			case 'pin_setup.snack_success': return 'ପିନ୍ ସଫଳତାର ସହିତ ସେଟ୍ ହୋଇଛି';
			case 'pin_mgmt.appBar': return 'ଆପ୍-ନିର୍ଦ୍ଦିଷ୍ଟ ପିନ୍';
			case 'pin_mgmt.change_title': return 'ପିନ୍ ପରିବର୍ତ୍ତନ କରନ୍ତୁ';
			case 'pin_mgmt.change_sub': return 'ଆପଣଙ୍କ ୪-ଅଙ୍କ ବିଶିଷ୍ଟ ZiqeX ସୁରକ୍ଷା କୋଡ୍ ଅପଡେଟ୍ କରନ୍ତୁ';
			case 'pin_mgmt.remove_title': return 'ପିନ୍ ହଟାନ୍ତୁ';
			case 'pin_mgmt.remove_sub': return 'ZiqeX ପାଇଁ ପିନ୍ ଆକ୍ସେସ୍ ବନ୍ଦ କରନ୍ତୁ';
			case 'pin_mgmt.snack_removed': return 'ପିନ୍ ସଫଳତାର ସହିତ ହଟାଯାଇଛି';
			case 'lang_legacy.title1': return 'କେଉଁ ଭାଷା\n';
			case 'lang_legacy.title2': return 'ନିଜର ପରି ଲାଗେ?';
			case 'lang_legacy.subtitle': return 'ଆପଣଙ୍କ ମାତୃଭାଷାରେ ଭଏସ୍, ଟେକ୍ସଟ୍ ଏବଂ ଉତ୍ତର। ଯେକୌଣସି ସମୟରେ ପରିବର୍ତ୍ତନ କରନ୍ତୁ।';
			case 'lang_legacy.first_reply': return 'ପ୍ରଥମ ଉତ୍ତର ଏହିପରି ହେବ';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - ଆପଣଙ୍କ ଲିପିରେ ଲିଖିତ ଏବଂ କଥିତ';
			case 'lang_legacy.continueBtn': return 'ଜାରି ରଖନ୍ତୁ';
			case 'model_mgmt.appBar': return 'ମଡେଲ ପରିଚାଳନା';
			case 'model_mgmt.subtitle': return 'ସ୍ଥାନୀୟ ଏଜ୍ AI ଭାଷା ମଡେଲଗୁଡିକ କନଫିଗର୍ କରନ୍ତୁ';
			case 'model_mgmt.status_loaded': return 'ଲୋଡ୍ ହୋଇଛି';
			case 'model_mgmt.status_unloaded': return 'ଲୋଡ୍ ହୋଇନାହିଁ';
			case 'model_mgmt.status_loading': return 'ଲୋଡ୍ ହେଉଛି...';
			case 'model_mgmt.size': return ({required Object size}) => 'ଆକାର: ${size}';
			case 'model_mgmt.load': return 'ଲୋଡ୍ କରନ୍ତୁ';
			case 'model_mgmt.unload': return 'ଅନଲୋଡ୍ କରନ୍ତୁ';
			case 'model_mgmt.download': return 'ଡାଉନଲୋଡ୍';
			case 'model_mgmt.delete': return 'ଡିଲିଟ୍ କରନ୍ତୁ';
			case 'model_mgmt.brahm_2b_desc': return 'ମୋବାଇଲ୍ ଡିଭାଇସରେ କମ୍-ଲେଟେନ୍ସି ଟେକ୍ସଟ୍ ସଂପୂର୍ଣ୍ଣ ଏବଂ ଚାଟ୍ ପାଇଁ ପରିକଳ୍ପିତ ଅଲ୍ଟ୍ରା-ଫାଷ୍ଟ କମ୍ପାକ୍ଟ ଏଜ୍ ମଡେଲ୍ |';
			case 'model_mgmt.brahm_5b_desc': return 'ଉନ୍ନତ କାର୍ଯ୍ୟ ସଠିକତା ଏବଂ ଜଟିଳ ନିର୍ଦ୍ଦେଶାତ୍ମକ ପ୍ରଦର୍ଶନ ପ୍ରଦାନ କରୁଥିବା ସନ୍ତୁଳିତ ଯୁକ୍ତି ମଡେଲ୍ |';
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
			case 'voice_mode_sub': return 'ਆਪਣੀ ਭਾਸ਼ਾ ਵਿੱਚ ਗੱਲ ਕਰੋ';
			case 'ask_image': return 'ਤਸਵੀਰ ਬਾਰੇ ਪੁੱਛੋ';
			case 'ask_image_sub': return 'ਫਾਰਮ, ਲੇਬਲ, ਸਕ੍ਰਿਪਟਾਂ';
			case 'panchang': return 'ਪੰਚਾਂਗ';
			case 'panchang_sub': return 'ਅੱਜ ਦੀ ਤਿਥੀ ਅਤੇ ਮੁਹੂਰਤ';
			case 'ephemeral': return 'ਥੋੜ੍ਹੇ ਸਮੇਂ ਲਈ';
			case 'ephemeral_sub': return 'ਬਿਨਾਂ ਕੋਈ ਨਿਸ਼ਾਨ ਛੱਡੇ ਗੱਲ ਕਰੋ';
			case 'recent': return 'ਹਾਲੀਆ';
			case 'home': return 'ਹੋਮ';
			case 'chat': return 'ਚੈਟ';
			case 'library': return 'ਲਾਇਬ੍ਰੇਰੀ';
			case 'you': return 'ਤੁਸੀਂ';
			case 'settings_pref': return 'ਪ੍ਰੋਫਾਈਲ ਸੈਟਿੰਗਾਂ';
			case 'preferences': return 'ਪਸੰਦਾਂ ਅਤੇ ਸੁਰੱਖਿਆ';
			case 'language': return 'ਭਾਸ਼ਾ';
			case 'security': return 'ਸੁਰੱਖਿਆ';
			case 'security_sub': return 'ਐਪ ਲੌਕ · 2FA';
			case 'privacy_tiers': return 'ਪ੍ਰਾਈਵੇਸੀ ਮੋਡ';
			case 'privacy_tiers_sub': return '1 ਸਰਗਰਮ \'ZiqeX ਸੁਣਨ ਮੋਡ\'';
			case 'storage_purge': return 'ਡੇਟਾ ਅਤੇ ਸਟੋਰੇਜ';
			case 'storage_purge_sub': return 'ਡਿਵਾਈਸ \'ਤੇ 184 KB';
			case 'ephemeral_mode': return 'ਗੁਪਤ ਚੈਟ';
			case 'about': return 'ਸਿਸਟਮ ਜਾਣਕਾਰੀ';
			case 'reset_prototype': return 'ਪ੍ਰੋਟੋਟਾਈਪ ਰੀਸੈਟ ਕਰੋ';
			case 'built_in_india': return 'ਭਾਰਤ ਵਿੱਚ ਬਣਿਆ। ਦੁਨੀਆ ਲਈ।';
			case 'library_sub': return 'ਹਰ ਮਾਡਲ · ਹਰ ਮੈਮੋਰੀ · ਇਸ ਡਿਵਾਈਸ \'ਤੇ';
			case 'on_this_device': return 'ਇਸ ਡਿਵਾਈਸ \'ਤੇ';
			case 'active': return 'ਸਰਗਰਮ';
			case 'add': return '+ ਜੋੜੋ';
			case 'storage_used': return 'ਵਰਤੀ ਗਈ ਸਟੋਰੇਜ';
			case 'health_question': return 'ਸਿਹਤ ਸੰਬੰਧੀ ਸਵਾਲ';
			case 'family': return 'ਪਰਿਵਾਰ';
			case 'work': return 'ਕੰਮ';
			case 'just_thinking': return 'ਬਸ ਸੋਚ ਰਿਹਾ ਹਾਂ';
			case 'profile.access': return 'ਪਹੁੰਚ';
			case 'profile.privacy': return 'ਪ੍ਰਾਈਵੇਸੀ';
			case 'profile.system': return 'ਸਿਸਟਮ';
			case 'profile.security_active': return 'ਸੁਰੱਖਿਆ ਸਰਗਰਮ ਹੈ';
			case 'profile.security_inactive': return 'ਸੁਰੱਖਿਆ ਸਰਗਰਮ ਨਹੀਂ ਹੈ';
			case 'profile.dark_mode': return 'ਡਾਰਕ ਮੋਡ';
			case 'profile.dark_mode_sub': return 'ਲਾਈਟ ਅਤੇ ਡਾਰਕ ਵਰਕਸਪੇਸ ਥੀਮ ਵਿਚਕਾਰ ਬਦਲੋ';
			case 'profile.data_mgmt': return 'ਚੈਟ ਡੇਟਾ ਪ੍ਰਬੰਧਨ ਅਤੇ ਸਟੋਰੇਜ';
			case 'profile.data_mgmt_sub': return 'ਆਪਣੀ ਗੱਲਬਾਤ ਦੀ ਹਿਸਟਰੀ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ';
			case 'profile.app_lock': return 'ਐਪ ਲੌਕ';
			case 'profile.app_lock_sub': return 'ਆਪਣੇ ਫਿੰਗਰਪ੍ਰਿੰਟ, ਚਿਹਰੇ ਜਾਂ ਪਿੰਨ ਨਾਲ ZiqeX ਨੂੰ ਸੁਰੱਖਿਅਤ ਕਰੋ';
			case 'profile.incognito_sub': return 'ਹਿਸਟਰੀ ਵਿੱਚ ਸੁਰੱਖਿਅਤ ਕੀਤੇ ਬਿਨਾਂ ਚੈਟ ਕਰੋ। ਚੈਟ ਤੋਂ ਬਾਹਰ ਆਉਣ ਤੋਂ ਬਾਅਦ ਇਸਨੂੰ ਮੁੜ ਪ੍ਰਾਪਤ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ';
			case 'profile.version': return 'V0.1 • ਸਰਵਭੌਮ • ਆਨ-ਡਿਵਾਈਸ';
			case 'welcome.meet': return 'ZiqeX ਨੂੰ ਮਿਲੋ';
			case 'welcome.at_edge': return 'ਐਜ \'ਤੇ ਬੁੱਧੀਮਤਾ';
			case 'welcome.private': return 'ਨਿੱਜੀ ਅਤੇ ਐਜ AI\nZenteiQ ਦੁਆਰਾ';
			case 'welcome.begin': return 'ਆਨਬੋਰਡਿੰਗ ਸ਼ੁਰੂ ਕਰੋ';
			case 'info.title': return 'ਤੁਹਾਡੇ ਆਲੇ-ਦੁਆਲੇ ਲਈ ਤਿਆਰ ਕੀਤੀ ਬੁੱਧੀਮਤਾ';
			case 'info.subtitle': return 'ਪ੍ਰਾਈਵੇਸੀ, ਚੋਣ ਅਤੇ ਨਿਯੰਤਰਣ ਦੇ ਨਾਲ ਤਿਆਰ ਕੀਤਾ ਗਿਆ ਉਪਯੋਗੀ AI।';
			case 'info.privacy_title': return 'ਪ੍ਰਾਈਵੇਸੀ ਪਹਿਲਾਂ';
			case 'info.privacy_desc': return 'ZiqeX ਨੂੰ ਬੁੱਧੀਮਤਾ ਅਤੇ ਤੁਹਾਡੀ ਜਾਣਕਾਰੀ ਨੂੰ ਤੁਹਾਡੇ ਡਿਵਾਈਸ ਦੇ ਨੇੜੇ ਰੱਖਣ ਲਈ ਤਿਆਰ ਕੀਤਾ ਗਿਆ ਹੈ।';
			case 'info.hand_title': return 'ਤੁਹਾਡੇ ਹੱਥ ਵਿੱਚ ਬੁੱਧੀਮਤਾ';
			case 'info.hand_desc': return 'ਰੋਜ਼ਾਨਾ ਦੀ ਬੁੱਧੀਮਤਾ, ਸਿੱਧੀ ਤੁਹਾਡੇ ਡਿਵਾਈਸ \'ਤੇ ਉਪਲਬਧ।';
			case 'info.control_title': return 'ਤੁਹਾਡਾ ਡੇਟਾ। ਤੁਹਾਡਾ ਨਿਯੰਤਰਣ।';
			case 'info.control_desc': return 'ਚੁਣੋ ਕਿ ਕੀ ਰੱਖਣਾ ਹੈ, ਸਟੋਰ ਕੀਤੇ ਡੇਟਾ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ ਅਤੇ ਜਿਸਦੀ ਹੁਣ ਲੋੜ ਨਹੀਂ ਹੈ ਉਸਨੂੰ ਮਿਟਾਓ।';
			case 'info.place_title': return 'ਹਰ ਥਾਂ ਲਈ ਤਿਆਰ ਕੀਤਾ ਗਿਆ';
			case 'info.place_desc': return 'ਵੱਖ-ਵੱਖ ਭਾਸ਼ਾਵਾਂ, ਡਿਵਾਈਸਾਂ ਅਤੇ ਲੋਕਾਂ ਵੱਲੋਂ ਤਕਨਾਲੋਜੀ ਦੀ ਵਰਤੋਂ ਕਰਨ ਦੇ ਵੱਖ-ਵੱਖ ਤਰੀਕਿਆਂ ਨੂੰ ਧਿਆਨ ਵਿੱਚ ਰੱਖ ਕੇ ਬਣਾਇਆ ਗਿਆ।';
			case 'info.footer': return 'ਤੁਹਾਡੀ ਬੁੱਧੀਮਤਾ। ਤੁਹਾਡਾ ਡਿਵਾਈਸ। ਤੁਹਾਡਾ ਨਿਯੰਤਰਣ।';
			case 'info.setup': return 'ਆਪਣਾ ZiqeX ਸੈੱਟ ਅੱਪ ਕਰੋ';
			case 'languageSelection.appBar': return 'ਭਾਸ਼ਾ ਦੀ ਚੋਣ';
			case 'languageSelection.title': return 'ਆਪਣੀ ਭਾਸ਼ਾ ਚੁਣੋ';
			case 'languageSelection.subtitle': return 'ਆਪਣੇ ਇੰਟਰਫੇਸ ਲਈ ਭਾਸ਼ਾ ਚੁਣੋ।';
			case 'languageSelection.back': return 'ਪਿੱਛੇ';
			case 'languageSelection.continueBtn': return 'ਜਾਰੀ ਰੱਖੋ';
			case 'pillars.appBar': return 'ਪਿਲਰਾਂ ਦੀ ਚੋਣ';
			case 'pillars.title': return 'ਆਪਣੇ ਪਿਲਰ ਚੁਣੋ';
			case 'pillars.subtitle': return 'ਉਹ ਮੁੱਖ ਸਮਰੱਥਾਵਾਂ ਚੁਣੋ ਜਿਨ੍ਹਾਂ \'ਤੇ ਤੁਸੀਂ ਧਿਆਨ ਕੇਂਦਰਿਤ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ।';
			case 'pillars.general': return 'ਆਮ';
			case 'pillars.operational': return 'ਕਾਰਜਕਾਰੀ';
			case 'pillars.personal': return 'ਨਿੱਜੀ ਸਲਾਹ';
			case 'pillars.workplace': return 'ਕੰਮਕਾਜ ਦੀ ਥਾਂ';
			case 'pillars.culture': return 'ਸੱਭਿਆਚਾਰ ਅਤੇ ਪਰਿਵਾਰ';
			case 'pillars.journal': return 'ਰੋਜ਼ਾਨਾ ਡਾਇਰੀ';
			case 'pillars.back': return 'ਪਿੱਛੇ';
			case 'pillars.continueBtn': return 'ਜਾਰੀ ਰੱਖੋ';
			case 'modelDownload.title1': return 'BrahmAI ਨੂੰ\nਤੁਹਾਡੇ ਕੋਲ ';
			case 'modelDownload.title2': return 'ਲਿਆ ਰਹੇ ਹਾਂ।';
			case 'modelDownload.subtitle': return 'ਇਹ ਸਿਰਫ਼ ਇੱਕ ਵਾਰ ਹੋਵੇਗਾ। ਇਸ ਤੋਂ ਬਾਅਦ, ਅਸੀਂ ਤੁਹਾਡੇ ਡੇਟਾ ਨੂੰ ਕਦੇ ਵੀ ਨਹੀਂ ਛੂਹਾਂਗੇ।';
			case 'modelDownload.modelName': return 'BrahmAI · 2B';
			case 'modelDownload.modelSpecs': return '2.0 B params · Q4_K_M · v0.9';
			case 'modelDownload.ready': return 'ਤਿਆਰ';
			case 'modelDownload.validating': return 'ਜਾਂਚ ਕੀਤੀ ਜਾ ਰਹੀ ਹੈ...';
			case 'modelDownload.langs': return '14 ਭਾਸ਼ਾਵਾਂ';
			case 'modelDownload.toks': return '~18 tok/s';
			case 'modelDownload.ttft': return '~140 ms TTFT';
			case 'modelDownload.error': return ({required Object error}) => 'ਗਲਤੀ: ${error}';
			case 'modelDownload.retry': return 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';
			case 'modelDownload.open': return 'BrahmAI ਖੋਲ੍ਹੋ';
			case 'modelDownload.download': return 'ਮਾਡਲ ਡਾਊਨਲੋਡ ਕਰੋ';
			case 'modelDownload.later': return 'ਬਾਅਦ ਵਿੱਚ ਸੈੱਟ ਅੱਪ ਕਰੋ';
			case 'modelDownload.continueSub': return 'ਮਾਡਲ ਡਾਊਨਲੋਡ ਕੀਤੇ ਬਿਨਾਂ ਜਾਰੀ ਰੱਖੋ। ਜਦੋਂ ਤੁਸੀਂ ਤਿਆਰ ਹੋਵੋ ਤਾਂ ਬਾਅਦ ਵਿੱਚ ਇੱਕ ਮਾਡਲ ਜੋੜ ਸਕਦੇ ਹੋ';
			case 'library_v2.subtitle': return 'ਆਪਣੇ AI ਸਰੋਤਾਂ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ';
			case 'library_v2.language_title': return 'ਭਾਸ਼ਾ';
			case 'library_v2.language_desc': return 'ਆਪਣੀਆਂ ਪਸੰਦੀਦਾ ਭਾਸ਼ਾਵਾਂ ਚੁਣੋ ਅਤੇ ਪ੍ਰਬੰਧਿਤ ਕਰੋ';
			case 'library_v2.model_title': return 'ਮਾਡਲ';
			case 'library_v2.model_desc': return 'ਉਪਲਬਧ AI ਮਾਡਲਾਂ ਨੂੰ ਖੋਜੋ ਅਤੇ ਪ੍ਰਬੰਧਿਤ ਕਰੋ';
			case 'library_v2.saved_title': return 'ਸੁਰੱਖਿਅਤ ਕੀਤੇ';
			case 'library_v2.saved_desc': return 'ਤੁਹਾਡੀ ਪ੍ਰੌਂਪਟ ਲਾਇਬ੍ਰੇਰੀ';
			case 'library_v2.skills_title': return 'ਹੁਨਰ';
			case 'library_v2.skills_desc': return 'AI ਸਮਰੱਥਾਵਾਂ';
			case 'library_v2.pillars_title': return 'ਪਿਲਰ';
			case 'library_v2.pillars_desc': return 'ਮੁੱਖ ਸਮਰੱਥਾਵਾਂ';
			case 'biometric.vault': return 'ਵੌਲਟ ਸੁਰੱਖਿਆ';
			case 'biometric.setupTitle': return 'ਸੁਰੱਖਿਅਤ ਲੌਕ ਸੈੱਟਅੱਪ';
			case 'biometric.setupSub': return 'ਆਪਣੀ ਪਸੰਦੀਦਾ ਪ੍ਰਮਾਣੀਕਰਨ ਵਿਧੀ ਨਾਲ ਆਪਣੇ ਵੌਲਟ ਨੂੰ ਸੁਰੱਖਿਅਤ ਕਰੋ।';
			case 'biometric.deviceTitle': return 'ਡਿਵਾਈਸ ਬਾਇਓਮੈਟ੍ਰਿਕਸ';
			case 'biometric.deviceSub': return 'Face ID ਜਾਂ ਫਿੰਗਰਪ੍ਰਿੰਟ ਦੀ ਵਰਤੋਂ ਕਰੋ';
			case 'biometric.pinTitle': return 'ਐਪ-ਵਿਸ਼ੇਸ਼ ਪਿੰਨ';
			case 'biometric.pinSub': return 'ਇੱਕ ਵਿਲੱਖਣ 4-ਅੰਕਾਂ ਵਾਲਾ ਕੋਡ ਸੈੱਟ ਕਰੋ';
			case 'biometric.dialogTitle': return 'ਬਾਇਓਮੈਟ੍ਰਿਕ ਪਹੁੰਚ ਦੀ ਇਜਾਜ਼ਤ ਦਿਓ';
			case 'biometric.dialogSub': return 'ZiqeX ਨੂੰ ਅਨਲੌਕ ਕਰਨ ਲਈ ਆਪਣੇ ਫਿੰਗਰਪ੍ਰਿੰਟ ਜਾਂ ਡਿਵਾਈਸ ਦੇ ਚਿਹਰਾ ਪਛਾਣ ਫੀਚਰ ਦੀ ਵਰਤੋਂ ਕਰੋ';
			case 'biometric.cancel': return 'ਰੱਦ ਕਰੋ';
			case 'biometric.allow': return 'ਬਾਇਓਮੈਟ੍ਰਿਕਸ ਦੀ ਇਜਾਜ਼ਤ ਦਿਓ';
			case 'security_screen.appBar': return 'ਐਪ ਸੁਰੱਖਿਆ';
			case 'security_screen.global_protection': return 'ਵਿਆਪਕ ਸੁਰੱਖਿਆ';
			case 'security_screen.app_lock': return 'ਐਪ ਲੌਕ';
			case 'security_screen.app_lock_sub': return 'ZiqeX ਖੋਲ੍ਹਣ ਲਈ ਪ੍ਰਮਾਣੀਕਰਨ ਦੀ ਲੋੜ ਹੈ';
			case 'security_screen.auth_methods': return 'ਪ੍ਰਮਾਣੀਕਰਨ ਵਿਧੀਆਂ';
			case 'security_screen.biometrics_title': return 'ਡਿਵਾਈਸ ਬਾਇਓਮੈਟ੍ਰਿਕਸ';
			case 'security_screen.biometrics_sub': return 'ਆਪਣੇ ਫਿੰਗਰਪ੍ਰਿੰਟ ਜਾਂ ਚਿਹਰੇ ਨਾਲ ਤੁਰੰਤ ਅਨਲੌਕ ਕਰੋ';
			case 'security_screen.pin_title': return 'ZiqeX ਪਿੰਨ';
			case 'security_screen.pin_active': return 'ਪਿੰਨ ਸਰਗਰਮ ਹੈ';
			case 'security_screen.pin_setup': return 'ਐਪ ਨੂੰ ਅਨਲੌਕ ਕਰਨ ਲਈ ਇੱਕ ਵਿਲੱਖਣ 4-ਅੰਕਾਂ ਵਾਲਾ ਕੋਡ ਸੈੱਟ ਕਰੋ';
			case 'security_screen.warning_title': return 'ਬਹੁਤ ਜ਼ਿਆਦਾ ਗਲਤ ਕੋਸ਼ਿਸ਼ਾਂ';
			case 'security_screen.warning_sub': return 'ਜੇਕਰ ਗਲਤ ਪਿੰਨ 10 ਵਾਰ ਦਰਜ ਕੀਤਾ ਜਾਂਦਾ ਹੈ, ਤਾਂ ZiqeX ਆਪਣੇ ਆਪ ਰੀਸੈਟ ਹੋ ਜਾਵੇਗਾ। ਇਸ ਡਿਵਾਈਸ \'ਤੇ ਸਟੋਰ ਕੀਤਾ ਸਾਰਾ ਡੇਟਾ ਸਥਾਈ ਤੌਰ \'ਤੇ ਮਿਟਾ ਦਿੱਤਾ ਜਾਵੇਗਾ';
			case 'security_screen.incomplete_title': return 'ਸੁਰੱਖਿਆ ਸੈੱਟਅੱਪ ਅਧੂਰਾ ਹੈ';
			case 'security_screen.incomplete_content': return 'ਤੁਸੀਂ ਐਪ ਲੌਕ ਚਾਲੂ ਕੀਤਾ ਹੈ, ਪਰ ਪਿੰਨ ਜਾਂ ਬਾਇਓਮੈਟ੍ਰਿਕਸ ਸੈੱਟ ਨਹੀਂ ਕੀਤੇ ਹਨ। ਜਦੋਂ ਤੱਕ ਕੋਈ ਇੱਕ ਵਿਧੀ ਕੌਂਫਿਗਰ ਨਹੀਂ ਕੀਤੀ ਜਾਂਦੀ, ਐਪ ਲੌਕ ਅਯੋਗ ਰਹੇਗਾ।';
			case 'security_screen.got_it': return 'ਸਮਝ ਗਿਆ';
			case 'data.appBar': return 'ਡੇਟਾ ਪ੍ਰਬੰਧਨ ਅਤੇ\nਸਟੋਰੇਜ';
			case 'data.summary': return 'ਸਟੋਰੇਜ ਦਾ ਸਾਰ';
			case 'data.totalUsed': return 'ਕੁੱਲ ਵਰਤੀ ਗਈ: ';
			case 'data.legendModel': return 'ਮਾਡਲ ਵਜ਼ਨ';
			case 'data.legendFree': return 'ਖਾਲੀ ਥਾਂ';
			case 'data.mgmt': return 'ਮਾਡਲ ਪ੍ਰਬੰਧਨ';
			case 'data.deleteModels': return 'ਸਾਰੇ ਡਾਊਨਲੋਡ ਕੀਤੇ ਮਾਡਲ ਮਿਟਾਓ';
			case 'data.deleteModelsSub': return 'ਇਸ ਡਿਵਾਈਸ ਤੋਂ ਸਾਰੇ ਸਥਾਨਕ ਮਾਡਲ ਵਜ਼ਨ ਅਤੇ ਪੈਰਾਮੀਟਰ ਪੂਰੀ ਤਰ੍ਹਾਂ ਹਟਾਓ।';
			case 'data.selectDelete': return 'ਮਿਟਾਉਣ ਲਈ ਮਾਡਲ ਚੁਣੋ';
			case 'data.autoDelete': return 'ਇਸ ਤੋਂ ਪੁਰਾਣੀਆਂ ਚੈਟਾਂ ਆਪਣੇ ਆਪ ਮਿਟਾਓ:';
			case 'data.autoDeleteSub': return 'ਇਹ ਸੈਟਿੰਗ ਸਾਰੇ ਅਨਲਿੰਕ ਕੀਤੇ ਗਏ ਗੱਲਬਾਤ ਮੋਡਾਂ \'ਤੇ ਲਾਗੂ ਹੁੰਦੀ ਹੈ।';
			case 'data.modes': return 'ਮੋਡ';
			case 'data.noData': return 'ਕੋਈ ਸਰਗਰਮ ਚੈਟ ਡੇਟਾ ਨਹੀਂ ਹੈ';
			case 'data.deleteAll': return 'ਸਾਰਾ ਡੇਟਾ ਮਿਟਾਓ';
			case 'data.authReq': return 'ਐਪ ਲੌਕ ਲਈ ਮੁੜ-ਪ੍ਰਮਾਣੀਕਰਨ ਲੋੜੀਂਦਾ ਹੈ';
			case 'data.viewChats': return 'ਚੈਟਾਂ ਦੇਖੋ';
			case 'data.deleteAllPillar': return 'ਸਭ ਮਿਟਾਓ';
			case 'data.space': return 'ਥਾਂ:';
			case 'data.activeInstances': return 'ਸਰਗਰਮ ਇੰਸਟੈਂਸ:';
			case 'pin_setup.title_setup': return '4-ਅੰਕਾਂ ਵਾਲਾ ਪਿੰਨ ਸੈੱਟ ਕਰੋ';
			case 'pin_setup.subtitle_setup': return 'ਐਪ ਤੱਕ ਪਹੁੰਚ ਕਰਨ ਲਈ ਇੱਕ ਸੁਰੱਖਿਅਤ ਕੋਡ ਬਣਾਓ';
			case 'pin_setup.title_confirm': return 'ਪਿੰਨ ਦੀ ਪੁਸ਼ਟੀ ਕਰੋ';
			case 'pin_setup.subtitle_confirm': return 'ਪੁਸ਼ਟੀ ਕਰਨ ਲਈ ਆਪਣਾ 4-ਅੰਕਾਂ ਵਾਲਾ ਕੋਡ ਦੁਬਾਰਾ ਦਰਜ ਕਰੋ';
			case 'pin_setup.title_verify': return 'ਮੌਜੂਦਾ ਪਿੰਨ ਦਰਜ ਕਰੋ';
			case 'pin_setup.subtitle_verify': return 'ਜਾਰੀ ਰੱਖਣ ਲਈ ਆਪਣਾ ਮੌਜੂਦਾ ਕੋਡ ਦਰਜ ਕਰੋ';
			case 'pin_setup.error_mismatch': return 'ਪਿੰਨ ਮੇਲ ਨਹੀਂ ਖਾਂਦੇ। ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';
			case 'pin_setup.error_incorrect': return 'ਗਲਤ ਪਿੰਨ। ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';
			case 'pin_setup.snack_success': return 'ਪਿੰਨ ਸਫਲਤਾਪੂਰਵਕ ਸੈੱਟ ਹੋ ਗਿਆ ਹੈ';
			case 'pin_mgmt.appBar': return 'ਐਪ-ਵਿਸ਼ੇਸ਼ ਪਿੰਨ';
			case 'pin_mgmt.change_title': return 'ਪਿੰਨ ਬਦਲੋ';
			case 'pin_mgmt.change_sub': return 'ਆਪਣਾ 4-ਅੰਕਾਂ ਵਾਲਾ ZiqeX ਸੁਰੱਖਿਆ ਕੋਡ ਅੱਪਡੇਟ ਕਰੋ';
			case 'pin_mgmt.remove_title': return 'ਪਿੰਨ ਹਟਾਓ';
			case 'pin_mgmt.remove_sub': return 'ZiqeX ਲਈ ਪਿੰਨ ਰਾਹੀਂ ਪਹੁੰਚ ਬੰਦ ਕਰੋ';
			case 'pin_mgmt.snack_removed': return 'ਪਿੰਨ ਸਫਲਤਾਪੂਰਵਕ ਹਟਾ ਦਿੱਤਾ ਗਿਆ ਹੈ';
			case 'lang_legacy.title1': return 'ਕਿਹੜੀ ਭਾਸ਼ਾ\n';
			case 'lang_legacy.title2': return 'ਤੁਹਾਨੂੰ ਆਪਣੀ ਲੱਗਦੀ ਹੈ?';
			case 'lang_legacy.subtitle': return 'ਤੁਹਾਡੀ ਮਾਤ੍ਰ-ਭਾਸ਼ਾ ਵਿੱਚ ਆਵਾਜ਼, ਟੈਕਸਟ ਅਤੇ ਜਵਾਬ। ਇਸਨੂੰ ਕਿਸੇ ਵੀ ਸਮੇਂ ਬਦਲੋ।';
			case 'lang_legacy.first_reply': return 'ਪਹਿਲਾ ਜਵਾਬ ਇਸ ਤਰ੍ਹਾਂ ਹੋਵੇਗਾ';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - ਤੁਹਾਡੀ ਲਿਪੀ ਵਿੱਚ ਲਿਖਿਆ ਅਤੇ ਬੋਲਿਆ ਗਿਆ';
			case 'lang_legacy.continueBtn': return 'ਜਾਰੀ ਰੱਖੋ';
			case 'model_mgmt.appBar': return 'ਮਾਡਲ ਪ੍ਰਬੰਧਨ';
			case 'model_mgmt.subtitle': return 'ਸਥਾਨਕ ਐਜ AI ਭਾਸ਼ਾ ਮਾਡਲਾਂ ਨੂੰ ਕੌਂਫਿਗਰ ਕਰੋ';
			case 'model_mgmt.status_loaded': return 'ਲੋਡ ਕੀਤਾ ਗਿਆ';
			case 'model_mgmt.status_unloaded': return 'ਲੋਡ ਨਹੀਂ ਹੋਇਆ';
			case 'model_mgmt.status_loading': return 'ਲੋਡ ਹੋ ਰਿਹਾ ਹੈ...';
			case 'model_mgmt.size': return ({required Object size}) => 'ਆਕਾਰ: ${size}';
			case 'model_mgmt.load': return 'ਲੋਡ ਕਰੋ';
			case 'model_mgmt.unload': return 'ਅਨਲੋਡ ਕਰੋ';
			case 'model_mgmt.download': return 'ਡਾਊਨਲੋડ';
			case 'model_mgmt.delete': return 'ਮਿਟਾਓ';
			case 'model_mgmt.brahm_2b_desc': return 'ਮੋਬਾਈਲ ਡਿਵਾਈਸਾਂ \'ਤੇ ਘੱਟ ਦੇਰੀ ਵਾਲੇ ਟੈਕਸਟ ਨੂੰ ਪੂਰਾ ਕਰਨ ਅਤੇ ਚੈਟ ਲਈ ਤਿਆਰ ਕੀਤਾ ਗਿਆ ਅਲਟਰਾ-ਫਾਸਟ ਕੰਪੈਕਟ ਐਜ ਮਾਡਲ।';
			case 'model_mgmt.brahm_5b_desc': return 'ਉੱਨਤ ਕਾਰਜ ਸ਼ੁੱਧਤਾ ਅਤੇ ਗੁੰਝલਦਾਰ ਨਿਰਦੇਸ਼ਕ ਪ੍ਰਦਰਸ਼ਨ ਦੀ ਪੇਸ਼ਕਸ਼ ਕਰਨ ਵਾਲਾ ਸੰਤੁਲਿਤ ਰੀਜ਼ਨਿੰਗ ਮਾਡਲ।';
			default: return null;
		}
	}
}

extension on _StringsTa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'வணக்கம்';
			case 'mind_today': return 'இன்று உங்கள் மனதில் என்ன இருக்கிறது?';
			case 'on_device_only': return 'இந்த சாதனத்தில் மட்டுமே';
			case 'offline': return 'ஆஃப்லைன்';
			case 'start_something': return 'தொடங்குங்கள்';
			case 'ask_anything': return 'எதையும் கேளுங்கள்';
			case 'ask_anything_sub': return 'உடல்நலம் · சட்டம் · தனிப்பட்டது · வேலை';
			case 'voice_mode': return 'குரல் முறை';
			case 'voice_mode_sub': return 'உங்கள் மொழியில் பேசுங்கள்';
			case 'ask_image': return 'படத்தைப் பற்றி கேளுங்கள்';
			case 'ask_image_sub': return 'படிவம் · லேபிள் · உரை';
			case 'panchang': return 'பஞ்சாங்கம்';
			case 'panchang_sub': return 'இன்றைய திதி மற்றும் முகூர்த்தம்';
			case 'ephemeral': return 'தற்காலிகம்';
			case 'ephemeral_sub': return 'எந்தத் தடயமும் இல்லாமல்';
			case 'recent': return 'சமீபத்தியவை';
			case 'home': return 'முகப்பு';
			case 'chat': return 'அரட்டை';
			case 'library': return 'நூலகம்';
			case 'you': return 'நீங்கள்';
			case 'settings_pref': return 'சுயவிவர அமைப்புகள்';
			case 'preferences': return 'விருப்பத்தேர்வுகள்';
			case 'language': return 'மொழி';
			case 'security': return 'பாதுகாப்பு';
			case 'security_sub': return 'செயலி பூட்டு · 2FA';
			case 'privacy_tiers': return 'தனியுரிமை அடுக்குகள்';
			case 'privacy_tiers_sub': return '2 செயல்பாட்டில் உள்ளன · ZiqeX AI எவ்வாறு செயல்படுகிறது';
			case 'storage_purge': return 'சேமிப்பு மற்றும் நீக்கம்';
			case 'storage_purge_sub': return 'சாதனத்தில் 184 KB';
			case 'ephemeral_mode': return 'தற்காலிக முறை';
			case 'about': return 'பற்றி';
			case 'reset_prototype': return 'மாதிரியை மீட்டமைக்கவும்';
			case 'built_in_india': return 'இந்தியாவில் உருவாக்கப்பட்டது. உலகிற்காக.';
			case 'library_sub': return 'ஒவ்வொரு மாதிரியும் · ஒவ்வொரு நினைவகமும் · இந்த சாதனத்தில்';
			case 'on_this_device': return 'இந்த சாதனத்தில்';
			case 'active': return 'செயலில்';
			case 'add': return '+ சேர்க்கவும்';
			case 'storage_used': return 'பயன்படுத்தப்பட்ட சேமிப்பு';
			case 'health_question': return 'சுகாதாரக் கேள்வி';
			case 'family': return 'குடும்பம்';
			case 'work': return 'வேலை';
			case 'just_thinking': return 'சும்மா யோசித்துக்கொண்டிருக்கிறேன்';
			case 'profile.access': return 'அணுகல்';
			case 'profile.privacy': return 'தனியுரிமை';
			case 'profile.system': return 'அமைப்பு';
			case 'profile.security_active': return 'பாதுகாப்பு செயல்பாட்டில் உள்ளது';
			case 'profile.security_inactive': return 'பாதுகாப்பு செயல்பாட்டில் இல்லை';
			case 'profile.dark_mode': return 'இருண்ட பயன்முறை';
			case 'profile.dark_mode_sub': return 'ஒளி மற்றும் இருண்ட தீம்களுக்கு இடையே மாறவும்';
			case 'profile.data_mgmt': return 'தரவு மேலாண்மை';
			case 'profile.data_mgmt_sub': return 'அரட்டை வரலாற்றை நிர்வகிக்கவும்';
			case 'profile.app_lock': return 'செயலி பூட்டு';
			case 'profile.app_lock_sub': return 'கைரேகை, முகம் அல்லது PIN மூலம் பாதுகாக்கவும்';
			case 'profile.incognito_sub': return 'வரலாற்றில் சேமிக்காமல் அரட்டை அடிக்கவும். இதை மீட்டெடுக்க முடியாது';
			case 'profile.version': return 'V0.1 • இறையாண்மை • சாதனத்தில்';
			case 'welcome.meet': return 'ZiqeX-ஐ சந்திக்கவும்';
			case 'welcome.at_edge': return 'எட்ஜில் உள்ள நுண்ணறிவு';
			case 'welcome.private': return 'தனியார் எட்ஜ் AI\nZenteiQ வழங்கியது';
			case 'welcome.begin': return 'தொடங்கலாம்';
			case 'info.title': return 'உங்களுக்கான நுண்ணறிவு';
			case 'info.subtitle': return 'தனியுரிமை மற்றும் முழுமையான கட்டுப்பாட்டுடன் கூடிய AI அனுபவம்.';
			case 'info.privacy_title': return 'தனியுரிமைக்கு முன்னுரிமை';
			case 'info.privacy_desc': return 'உங்கள் தகவல்கள் உங்கள் சாதனத்திலேயே பாதுகாப்பாக இருக்கும்.';
			case 'info.hand_title': return 'கைக்குள் நுண்ணறிவு';
			case 'info.hand_desc': return 'உங்கள் அன்றாட தேவைகளுக்கான நுண்ணறிவு உங்கள் சாதனத்திலேயே கிடைக்கும்.';
			case 'info.control_title': return 'முழுமையான கட்டுப்பாடு';
			case 'info.control_desc': return 'தேவையானவற்றை வைத்துக்கொண்டு, தேவையற்றவற்றை நீக்கலாம்.';
			case 'info.place_title': return 'அனைவருக்கும் ஏற்றது';
			case 'info.place_desc': return 'பல்வேறு மொழிகள் மற்றும் சாதனங்களுக்காக உருவாக்கப்பட்டது.';
			case 'info.footer': return 'உங்கள் நுண்ணறிவு. உங்கள் சாதனம். உங்கள் கட்டுப்பாடு.';
			case 'info.setup': return 'அமைப்பைத் தொடங்கவும்';
			case 'languageSelection.appBar': return 'மொழித் தேர்வு';
			case 'languageSelection.title': return 'உங்கள் மொழியைத் தேர்ந்தெடுக்கவும்';
			case 'languageSelection.subtitle': return 'பயன்பாட்டின் இடைமுகத்திற்கான மொழியைத் தேர்ந்தெடுக்கவும்.';
			case 'languageSelection.back': return 'பின்னால்';
			case 'languageSelection.continueBtn': return 'தொடரவும்';
			case 'pillars.appBar': return 'தூண்களைத் தேர்வு செய்யவும்';
			case 'pillars.title': return 'உங்கள் தூண்களைத் தேர்ந்தெடுக்கவும்';
			case 'pillars.subtitle': return 'நீங்கள் கவனம் செலுத்த விரும்பும் முக்கிய திறன்களைத் தேர்ந்தெடுக்கவும்.';
			case 'pillars.general': return 'பொதுவானது';
			case 'pillars.operational': return 'செயல்பாட்டு';
			case 'pillars.personal': return 'தனிப்பட்ட ஆலோசனை';
			case 'pillars.workplace': return 'பணியிடம்';
			case 'pillars.culture': return 'கலாச்சாரம் மற்றும் குடும்பம்';
			case 'pillars.journal': return 'தினசரி குறிப்பேடு';
			case 'pillars.back': return 'பின்னால்';
			case 'pillars.continueBtn': return 'தொடரவும்';
			case 'modelDownload.title1': return 'BrahmAI-ஐ\nஉங்கள் சாதனத்திற்கு ';
			case 'modelDownload.title2': return 'கொண்டு வருகிறோம்.';
			case 'modelDownload.subtitle': return 'ஒரு முறை மட்டும் பதிவிறக்கவும். இதற்குப் பிறகு, உங்கள் தரவை நாங்கள் அணுகமாட்டோம்.';
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
			case 'modelDownload.continueSub': return 'பதிவிறக்காமல் தொடரவும். நீங்கள் தயாராக இருக்கும்போது மாதிரியைச் சேர்க்கலாம்';
			case 'library_v2.subtitle': return 'AI வளங்களை நிர்வகிக்கவும்';
			case 'library_v2.language_title': return 'மொழி';
			case 'library_v2.language_desc': return 'மொழிகளைத் தேர்ந்தெடுத்து நிர்வகிக்கவும்';
			case 'library_v2.model_title': return 'மாதிரி';
			case 'library_v2.model_desc': return 'AI மாதிரிகளை ஆராய்ந்து நிர்வகிக்கவும்';
			case 'library_v2.saved_title': return 'சேமிக்கப்பட்டவை';
			case 'library_v2.saved_desc': return 'உங்கள் ப்ராம்ப்ட் நூலகம்';
			case 'library_v2.skills_title': return 'திறன்கள்';
			case 'library_v2.skills_desc': return 'AI திறன்கள்';
			case 'library_v2.pillars_title': return 'தூண்கள்';
			case 'library_v2.pillars_desc': return 'முக்கிய நுண்ணறிவு களங்கள்';
			case 'biometric.vault': return 'பெட்டகப் பாதுகாப்பு';
			case 'biometric.setupTitle': return 'பாதுகாப்பான பூட்டை அமைக்கவும்';
			case 'biometric.setupSub': return 'உங்களுக்கு விருப்பமான முறையில் உங்கள் பெட்டகத்தைப் பாதுகாக்கவும்.';
			case 'biometric.deviceTitle': return 'பயோமெட்ரிக்ஸ்';
			case 'biometric.deviceSub': return 'Face ID அல்லது கைரேகை';
			case 'biometric.pinTitle': return 'PIN குறியீடு';
			case 'biometric.pinSub': return '4 இலக்கக் குறியீட்டை அமைக்கவும்';
			case 'biometric.dialogTitle': return 'அனுமதி';
			case 'biometric.dialogSub': return 'ZiqeX ஐத் திறக்க உங்கள் கைரேகை அல்லது முகத்தைப் பயன்படுத்தவும்';
			case 'biometric.cancel': return 'ரத்து';
			case 'biometric.allow': return 'அனுமதி';
			case 'security_screen.appBar': return 'செயலி பாதுகாப்பு';
			case 'security_screen.global_protection': return 'உலகளாவிய பாதுகாப்பு';
			case 'security_screen.app_lock': return 'செயலி பூட்டு';
			case 'security_screen.app_lock_sub': return 'ZiqeX ஐத் திறக்க அங்கீகாரம் தேவை';
			case 'security_screen.auth_methods': return 'அங்கீகார முறைகள்';
			case 'security_screen.biometrics_title': return 'சாதன பயோமெட்ரிக்ஸ்';
			case 'security_screen.biometrics_sub': return 'உங்கள் கைரேகை அல்லது முகத்தைப் பயன்படுத்தி உடனடியாகத் திறக்கவும்';
			case 'security_screen.pin_title': return 'ZiqeX PIN';
			case 'security_screen.pin_active': return 'PIN செயல்பாட்டில் உள்ளது';
			case 'security_screen.pin_setup': return 'செயலியைத் திறக்க தனித்துவமான 4 இலக்க PIN குறியீட்டை அமைக்கவும்';
			case 'security_screen.warning_title': return 'அதிகப்படியான தவறான முயற்சிகள்';
			case 'security_screen.warning_sub': return 'தவறான PIN 10 முறை உள்ளிடப்பட்டால், ZiqeX தானாகவே மீட்டமைக்கப்படும். இந்த சாதனத்தில் சேமிக்கப்பட்டுள்ள அனைத்து தரவுகளும் நிரந்தரமாக நீக்கப்படும்';
			case 'security_screen.incomplete_title': return 'பாதுகாப்பு அமைப்பு முழுமையடையவில்லை';
			case 'security_screen.incomplete_content': return 'நீங்கள் செயலி பூட்டை இயக்கியுள்ளீர்கள், ஆனால் PIN அல்லது பயோமெட்ரிக்ஸை அமைக்கவில்லை. அவற்றில் ஒன்றை அமைக்கும் வரை செயலி பூட்டு முடக்கப்பட்டிருக்கும்.';
			case 'security_screen.got_it': return 'புரிந்தது';
			case 'data.appBar': return 'தரவு மேலாண்மை';
			case 'data.summary': return 'சேமிப்பகச் சுருக்கம்';
			case 'data.totalUsed': return 'பயன்படுத்தப்பட்டது: ';
			case 'data.legendModel': return 'மாதிரி எடைகள்';
			case 'data.legendFree': return 'காலி இடம்';
			case 'data.mgmt': return 'மாதிரி மேலாண்மை';
			case 'data.deleteModels': return 'அனைத்தையும் நீக்கவும்';
			case 'data.deleteModelsSub': return 'மாதிரி எடைகளை சாதனத்திலிருந்து முழுமையாக அகற்றவும்.';
			case 'data.selectDelete': return 'நீக்க வேண்டியவற்றைத் தேர்ந்தெடுக்கவும்';
			case 'data.autoDelete': return 'தானாக நீக்கு:';
			case 'data.autoDeleteSub': return 'அனைத்து அரட்டை முறைகளுக்கும் பொருந்தும்.';
			case 'data.modes': return 'முறைகள்';
			case 'data.noData': return 'தரவு இல்லை';
			case 'data.deleteAll': return 'அனைத்தையும் நீக்கவும்';
			case 'data.authReq': return 'மீண்டும் அங்கீகரிக்க வேண்டும்';
			case 'data.viewChats': return 'பார்க்கவும்';
			case 'data.deleteAllPillar': return 'நீக்கவும்';
			case 'data.space': return 'இடம்:';
			case 'data.activeInstances': return 'செயலில் உள்ள நிகழ்வுகள்:';
			case 'pin_setup.title_setup': return '4 இலக்க PIN-ஐ அமைக்கவும்';
			case 'pin_setup.subtitle_setup': return 'பயன்பாட்டை அணுக பாதுகாப்பான குறியீட்டை உருவாக்கவும்';
			case 'pin_setup.title_confirm': return 'PIN-ஐ உறுதிப்படுத்தவும்';
			case 'pin_setup.subtitle_confirm': return 'சரிபார்க்க உங்கள் 4 இலக்க PIN-ஐ மீண்டும் உள்ளிடவும்';
			case 'pin_setup.title_verify': return 'தற்போதைய PIN-ஐ உள்ளிடவும்';
			case 'pin_setup.subtitle_verify': return 'தொடர உங்கள் தற்போதைய PIN-ஐ உள்ளிடவும்';
			case 'pin_setup.error_mismatch': return 'PIN-கள் பொருந்தவில்லை. மீண்டும் முயற்சிக்கவும்.';
			case 'pin_setup.error_incorrect': return 'தவறான PIN. மீண்டும் முயற்சிக்கவும்.';
			case 'pin_setup.snack_success': return 'PIN வெற்றிகரமாக அமைக்கப்பட்டது';
			case 'pin_mgmt.appBar': return 'செயலி PIN';
			case 'pin_mgmt.change_title': return 'PIN-ஐ மாற்றவும்';
			case 'pin_mgmt.change_sub': return 'உங்கள் 4 இலக்க ZiqeX பாதுகாப்புக் குறியீட்டைப் புதுப்பிக்கவும்';
			case 'pin_mgmt.remove_title': return 'PIN-ஐ அகற்றவும்';
			case 'pin_mgmt.remove_sub': return 'ZiqeX க்கான PIN அணுகலை முடக்கவும்';
			case 'pin_mgmt.snack_removed': return 'PIN வெற்றிகரமாக அகற்றப்பட்டது';
			case 'lang_legacy.title1': return 'எந்த மொழி\n';
			case 'lang_legacy.title2': return 'உங்களுக்கு சொந்தமான உணர்வைத் தருகிறது?';
			case 'lang_legacy.subtitle': return 'உங்கள் தாய்மொழியில் குரல், உரை மற்றும் பதில்களைப் பெறுங்கள். இதை எப்போது வேண்டுமானாலும் மாற்றிக்கொள்ளலாம்.';
			case 'lang_legacy.first_reply': return 'முதல் பதில் இவ்வாறு இருக்கும்';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - உங்கள் எழுத்துமுறையில் எழுதப்பட்டு பேசப்படும்';
			case 'lang_legacy.continueBtn': return 'தொடரவும்';
			case 'model_mgmt.appBar': return 'மாடல் மேலாண்மை';
			case 'model_mgmt.subtitle': return 'உள்ளூர் எட்ஜ் AI மொழி மாடல்களை உள்ளமைக்கவும்';
			case 'model_mgmt.status_loaded': return 'ஏற்றப்பட்டது';
			case 'model_mgmt.status_unloaded': return 'ஏற்றப்படவில்லை';
			case 'model_mgmt.status_loading': return 'ஏற்றப்படுகிறது...';
			case 'model_mgmt.size': return ({required Object size}) => 'அளவு: ${size}';
			case 'model_mgmt.load': return 'ஏற்று';
			case 'model_mgmt.unload': return 'வெளியேற்று';
			case 'model_mgmt.download': return 'பதிவிறக்கு';
			case 'model_mgmt.delete': return 'நீக்கு';
			case 'model_mgmt.brahm_2b_desc': return 'மொபைல் சாதனங்களில் குறைந்த தாமத உரை நிறைவு மற்றும் அரட்டைக்காக வடிவமைக்கப்பட்ட அதிவேக சிறிய எட்ஜ் மாடல்.';
			case 'model_mgmt.brahm_5b_desc': return 'மேம்படுத்தப்பட்ட பணி துல்லியம் மற்றும் சிக்கலான அறிவுறுத்தல் செயல்திறனை வழங்கும் சமச்சீர் பகுத்தறிவு மாடல்.';
			default: return null;
		}
	}
}

extension on _StringsTe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'ನಮಸ್ಕಾರ';
			case 'mind_today': return 'ಇಂದು ನಿಮ್ಮ ಮನಸ್ಸಿನಲ್ಲಿ ಏನಿದೆ?';
			case 'on_device_only': return 'ಈ ಸಾಧನದಲ್ಲಿ ಮಾತ್ರ';
			case 'offline': return 'ಆಫ್‌ಲೈನ್';
			case 'start_something': return 'ಏನನ್ನಾದರೂ ಪ್ರಾರಂಭಿಸಿ';
			case 'ask_anything': return 'ಏನನ್ನಾದರೂ ಕೇಳಿ';
			case 'ask_anything_sub': return 'ಆರೋಗ್ಯ · ಕಾನೂನು · ವೈಯಕ್ತಿಕ · ಕೆಲಸ';
			case 'voice_mode': return 'ವಾಯ್ಸ್ ಮೋಡ್';
			case 'voice_mode_sub': return 'ನಿಮ್ಮ ಭಾಷೆಯಲ್ಲಿ ಮಾತನಾಡಿ';
			case 'ask_image': return 'ಚಿತ್ರದ ಬಗ್ಗೆ ಕೇಳಿ';
			case 'ask_image_sub': return 'ಫಾರ್ಮ್‌ಗಳು, ಲೇಬಲ್‌ಗಳು, ಸ್ಕ್ರಿಪ್ಟ್‌ಗಳು';
			case 'panchang': return 'ಪಂಚಾಂಗ';
			case 'panchang_sub': return 'ಇಂದಿನ ತಿಥಿ ಮತ್ತು ಮುಹೂರ್ತ';
			case 'ephemeral': return 'ಅಲ್ಪಕಾಲಿಕ';
			case 'ephemeral_sub': return 'ಯಾವುದೇ ಗುರುತು ಉಳಿಸದೆ ಮಾತನಾಡಿ';
			case 'recent': return 'ಇತ್ತೀಚಿನವು';
			case 'home': return 'ಹೋಮ್';
			case 'chat': return 'ಚಾಟ್';
			case 'library': return 'ಲೈಬ್ರರಿ';
			case 'you': return 'ನೀವು';
			case 'settings_pref': return 'ಪ್ರೊಫೈಲ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';
			case 'preferences': return 'ಆದ್ಯತೆಗಳು ಮತ್ತು ಭದ್ರತೆ';
			case 'language': return 'ಭಾಷೆ';
			case 'security': return 'ಭದ್ರತೆ';
			case 'security_sub': return 'ಆ್ಯಪ್ ಲಾಕ್ · 2FA';
			case 'privacy_tiers': return 'ಗೌಪ್ಯತೆ ಮೋಡ್';
			case 'privacy_tiers_sub': return '1 ಸಕ್ರಿಯ \'ZiqeX ಆಲಿಸುವ ಮೋಡ್\'';
			case 'storage_purge': return 'ಡೇಟಾ ಮತ್ತು ಸಂಗ್ರಹಣೆ';
			case 'storage_purge_sub': return 'ಸಾಧನದಲ್ಲಿ 184 KB';
			case 'ephemeral_mode': return 'ಗೋಪ್ಯ ಚಾಟ್';
			case 'about': return 'ಸಿಸ್ಟಮ್ ಮಾಹಿತಿ';
			case 'reset_prototype': return 'ಪ್ರೋಟೋಟೈಪ್ ಮರುಹೊಂದಿಸಿ';
			case 'built_in_india': return 'ಭಾರತದಲ್ಲಿ ನಿರ್ಮಿಸಲಾಗಿದೆ. ಜಗತ್ತಿಗಾಗಿ.';
			case 'library_sub': return 'ಪ್ರತಿ ಮಾದರಿ · ಪ್ರತಿ ಸ್ಮರಣೆ · ಈ ಸಾಧನದಲ್ಲಿ';
			case 'on_this_device': return 'ಈ ಸಾಧನದಲ್ಲಿ';
			case 'active': return 'ಸಕ್ರಿಯ';
			case 'add': return '+ ಸೇರಿಸಿ';
			case 'storage_used': return 'ಬಳಸಿದ ಸಂಗ್ರಹಣೆ';
			case 'health_question': return 'ಆರೋಗ್ಯ ಪ್ರಶ್ನೆ';
			case 'family': return 'ಕುಟುಂಬ';
			case 'work': return 'ಕೆಲಸ';
			case 'just_thinking': return 'ಸುಮ್ಮನೆ ಯೋಚಿಸುತ್ತಿದ್ದೇನೆ';
			case 'profile.access': return 'ಪ್ರವೇಶ';
			case 'profile.privacy': return 'ಗೌಪ್ಯತೆ';
			case 'profile.system': return 'ಸಿಸ್ಟಮ್';
			case 'profile.security_active': return 'ಭದ್ರತೆ ಸಕ್ರಿಯವಾಗಿದೆ';
			case 'profile.security_inactive': return 'ಭದ್ರತೆ ಸಕ್ರಿಯವಾಗಿಲ್ಲ';
			case 'profile.dark_mode': return 'ಡಾರ್ಕ್ ಮೋಡ್';
			case 'profile.dark_mode_sub': return 'ಲೈಟ್ ಮತ್ತು ಡಾರ್ಕ್ ವರ್ಕ್‌ಸ್ಪೇಸ್ ಥೀಮ್‌ಗಳ ನಡುವೆ ಬದಲಾಯಿಸಿ';
			case 'profile.data_mgmt': return 'ಚಾಟ್ ಡೇಟಾ ನಿರ್ವಹಣೆ ಮತ್ತು ಸಂಗ್ರಹಣೆ';
			case 'profile.data_mgmt_sub': return 'ನಿಮ್ಮ ಸಂಭಾಷಣೆ ಇತಿಹಾಸವನ್ನು ನಿರ್ವಹಿಸಿ';
			case 'profile.app_lock': return 'ಆ್ಯಪ್ ಲಾಕ್';
			case 'profile.app_lock_sub': return 'ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್, ಮುಖ ಅಥವಾ ಪಿನ್‌ನೊಂದಿಗೆ ZiqeX ಅನ್ನು ಸುರಕ್ಷಿತಗೊಳಿಸಿ';
			case 'profile.incognito_sub': return 'ಇತಿಹಾಸದಲ್ಲಿ ಉಳಿಸದೆ ಚಾಟ್ ಮಾಡಿ. ಚಾಟ್‌ನಿಂದ ಹೊರಬಂದ ನಂತರ ಅದನ್ನು ಮರುಪಡೆಯಲು ಸಾಧ್ಯವಿಲ್ಲ';
			case 'profile.version': return 'V0.1 • ಸಾರ್ವಭೌಮ • ಆನ್-ಡಿವೈಸ್';
			case 'welcome.meet': return 'ZiqeX ಅನ್ನು ಪರಿಚಯಿಸಿಕೊಳ್ಳಿ';
			case 'welcome.at_edge': return 'ಎಡ್ಜ್‌ನಲ್ಲಿ ಬುದ್ಧಿಮತ್ತೆ';
			case 'welcome.private': return 'ಖಾಸಗಿ ಮತ್ತು ಎಡ್ಜ್ AI\nZenteiQ ನಿಂದ';
			case 'welcome.begin': return 'ಆನ್‌ಬೋರ್ಡಿಂಗ್ ಪ್ರಾರಂಭಿಸಿ';
			case 'info.title': return 'ನಿಮ್ಮ ಸುತ್ತಲೂ ವಿನ್ಯಾಸಗೊಳಿಸಲಾದ ಬುದ್ಧಿಮತ್ತೆ';
			case 'info.subtitle': return 'ಗೌಪ್ಯತೆ, ಆಯ್ಕೆ ಮತ್ತು ನಿಯಂತ್ರಣವನ್ನು ಅನುಭವದಲ್ಲೇ ನಿರ್ಮಿಸಿರುವ ಉಪಯುಕ್ತ AI.';
			case 'info.privacy_title': return 'ಗೌಪ್ಯತೆ ಮೊದಲು';
			case 'info.privacy_desc': return 'ZiqeX ಬುದ್ಧಿಮತ್ತೆ ಮತ್ತು ನಿಮ್ಮ ಮಾಹಿತಿಯನ್ನು ನಿಮ್ಮ ಸಾಧನದ ಸಮೀಪದಲ್ಲೇ ಇರಿಸಲು ವಿನ್ಯಾಸಗೊಳಿಸಲಾಗಿದೆ.';
			case 'info.hand_title': return 'ನಿಮ್ಮ ಕೈಯಲ್ಲೇ ಬುದ್ಧಿಮತ್ತೆ';
			case 'info.hand_desc': return 'ದೈನಂದಿನ ಬುದ್ಧಿಮತ್ತೆ, ನೇರವಾಗಿ ನಿಮ್ಮ ಸಾಧನದಲ್ಲಿ ಲಭ್ಯ.';
			case 'info.control_title': return 'ನಿಮ್ಮ ಡೇಟಾ. ನಿಮ್ಮ ನಿಯಂತ್ರಣ.';
			case 'info.control_desc': return 'ಏನನ್ನು ಉಳಿಸಬೇಕು ಎಂಬುದನ್ನು ಆಯ್ಕೆಮಾಡಿ, ಸಂಗ್ರಹಿಸಿರುವುದನ್ನು ನಿರ್ವಹಿಸಿ ಮತ್ತು ಇನ್ನು ಮುಂದೆ ಅಗತ್ಯವಿಲ್ಲದದ್ದನ್ನು ಅಳಿಸಿ.';
			case 'info.place_title': return 'ಪ್ರತಿಯೊಂದು ಸ್ಥಳಕ್ಕಾಗಿ ವಿನ್ಯಾಸಗೊಳಿಸಲಾಗಿದೆ';
			case 'info.place_desc': return 'ವಿವಿಧ ಭಾಷೆಗಳು, ಸಾಧನಗಳು ಮತ್ತು ಜನರು ತಂತ್ರಜ್ಞಾನವನ್ನು ಬಳಸುವ ವಿಭಿನ್ನ ವಿಧಾನಗಳಿಗಾಗಿ ನಿರ್ಮಿಸಲಾಗಿದೆ.';
			case 'info.footer': return 'ನಿಮ್ಮ ಬುದ್ಧಿಮತ್ತೆ. ನಿಮ್ಮ ಸಾಧನ. ನಿಮ್ಮ ನಿಯಂತ್ರಣ.';
			case 'info.setup': return 'ನಿಮ್ಮ ZiqeX ಅನ್ನು ಹೊಂದಿಸಿ';
			case 'languageSelection.appBar': return 'ಭಾಷೆ ಆಯ್ಕೆ';
			case 'languageSelection.title': return 'ನಿಮ್ಮ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';
			case 'languageSelection.subtitle': return 'ನಿಮ್ಮ ಇಂಟರ್‌ಫೇಸ್‌ಗಾಗಿ ಭಾಷೆಯನ್ನು ಆಯ್ಕೆಮಾಡಿ.';
			case 'languageSelection.back': return 'ಹಿಂದೆ';
			case 'languageSelection.continueBtn': return 'ಮುಂದುವರಿಸಿ';
			case 'pillars.appBar': return 'ಸ್ತಂಭಗಳ ಆಯ್ಕೆ';
			case 'pillars.title': return 'ನಿಮ್ಮ ಸ್ತಂಭಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';
			case 'pillars.subtitle': return 'ನೀವು ಗಮನಹರಿಸಲು ಬಯಸುವ ಪ್ರಮುಖ ಸಾಮರ್ಥ್ಯಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ.';
			case 'pillars.general': return 'ಸಾಮಾನ್ಯ';
			case 'pillars.operational': return 'ಕಾರ್ಯಾಚರಣೆ';
			case 'pillars.personal': return 'ವೈಯಕ್ತಿಕ ಸಲಹೆ';
			case 'pillars.workplace': return 'ಕೆಲಸದ ಸ್ಥಳ';
			case 'pillars.culture': return 'ಸಂಸ್ಕೃತಿ ಮತ್ತು ಕುಟುಂಬ';
			case 'pillars.journal': return 'ದೈನಂದಿನ ದಿನಚರಿ';
			case 'pillars.back': return 'ಹಿಂದೆ';
			case 'pillars.continueBtn': return 'ಮುಂದುವರಿಸಿ';
			case 'modelDownload.title1': return 'BrahmAI ಅನ್ನು\nನಿಮ್ಮ ಬಳಿಗೆ ';
			case 'modelDownload.title2': return 'ತರುತ್ತಿದ್ದೇವೆ.';
			case 'modelDownload.subtitle': return 'ಒಮ್ಮೆ ಮಾತ್ರ. ಇದರ ನಂತರ, ನಾವು ನಿಮ್ಮ ಡೇಟಾವನ್ನು ಎಂದಿಗೂ ಸ್ಪರ್ಶಿಸುವುದಿಲ್ಲ.';
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
			case 'modelDownload.continueSub': return 'ಮಾದರಿಯನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡದೆ ಮುಂದುವರಿಸಿ. ನೀವು ಸಿದ್ಧರಾದಾಗ ಒಂದನ್ನು ಸೇರಿಸಬಹುದು';
			case 'library_v2.subtitle': return 'ನಿಮ್ಮ AI ಸಂಪನ್ಮೂಲಗಳನ್ನು ನಿರ್ವಹಿಸಿ';
			case 'library_v2.language_title': return 'ಭಾಷೆ';
			case 'library_v2.language_desc': return 'ನಿಮ್ಮ ಆದ್ಯತೆಯ ಭಾಷೆಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ ಮತ್ತು ನಿರ್ವಹಿಸಿ';
			case 'library_v2.model_title': return 'ಮಾದರಿ';
			case 'library_v2.model_desc': return 'ಲಭ್ಯವಿರುವ AI ಮಾದರಿಗಳನ್ನು ಅನ್ವೇಷಿಸಿ ಮತ್ತು ನಿರ್ವಹಿಸಿ';
			case 'library_v2.saved_title': return 'ಉಳಿಸಲಾಗಿದೆ';
			case 'library_v2.saved_desc': return 'ನಿಮ್ಮ ಪ್ರಾಂಪ್ಟ್ ಲೈಬ್ರರಿ';
			case 'library_v2.skills_title': return 'ಕೌಶಲ್ಯಗಳು';
			case 'library_v2.skills_desc': return 'AI ಸಾಮರ್ಥ್ಯಗಳು';
			case 'library_v2.pillars_title': return 'స్తంభాలు';
			case 'library_v2.pillars_desc': return 'కోర్ ఇంటెలిజెన్స్ డొమైన్‌లు';
			case 'biometric.vault': return 'ವಾಲ್ಟ್ ಭದ್ರತೆ';
			case 'biometric.setupTitle': return 'ಸುರಕ್ಷಿತ ಲಾಕ್ ಸೆಟಪ್';
			case 'biometric.setupSub': return 'ನಿಮ್ಮ ಆದ್ಯತೆಯ ದೃಢೀಕರಣ ವಿಧಾನದಿಂದ ನಿಮ್ಮ ವಾಲ್ಟ್ ಅನ್ನು ಸುರಕ್ಷಿತಗೊಳಿಸಿ.';
			case 'biometric.deviceTitle': return 'ಸಾಧನ ಬಯೋಮೆಟ್ರಿಕ್ಸ್';
			case 'biometric.deviceSub': return 'FaceID ಅಥವಾ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಬಳಸಿ';
			case 'biometric.pinTitle': return 'ಆ್ಯಪ್-ನಿರ್ದಿಷ್ಟ ಪಿನ್';
			case 'biometric.pinSub': return 'ವಿಶಿಷ್ಟ 4-ಅಂಕಿಯ ಕೋಡ್ ಹೊಂದಿಸಿ';
			case 'biometric.dialogTitle': return 'ಬಯೋಮೆಟ್ರಿಕ್ ಪ್ರವೇಶವನ್ನು ಅನುಮತಿಸಿ';
			case 'biometric.dialogSub': return 'ZiqeX ಅನ್ನು ಅನ್‌ಲಾಕ್ ಮಾಡಲು ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಅಥವಾ ಸಾಧನದ ಮುಖ ಗುರುತಿಸುವಿಕೆಯನ್ನು ಬಳಸಿ';
			case 'biometric.cancel': return 'ರದ್ದುಮಾಡಿ';
			case 'biometric.allow': return 'ಬಯೋಮೆಟ್ರಿಕ್ಸ್ ಅನುಮತಿಸಿ';
			case 'security_screen.appBar': return 'ಆ್ಯಪ್ ಭದ್ರತೆ';
			case 'security_screen.global_protection': return 'ಜಾಗತಿಕ ರಕ್ಷಣೆ';
			case 'security_screen.app_lock': return 'ಆ್ಯಪ್ ಲಾಕ್';
			case 'security_screen.app_lock_sub': return 'ZiqeX ತೆರೆಯಲು ದೃಢೀಕರಣದ ಅಗತ್ಯವಿದೆ';
			case 'security_screen.auth_methods': return 'ದೃಢೀಕರಣ ವಿಧಾನಗಳು';
			case 'security_screen.biometrics_title': return 'ಸಾಧನ ಬಯೋಮೆಟ್ರಿಕ್ಸ್';
			case 'security_screen.biometrics_sub': return 'ನಿಮ್ಮ ಫಿಂಗರ್‌ಪ್ರಿಂಟ್ ಅಥವಾ ಮುಖದಿಂದ ತಕ್ಷಣ ಅನ್‌ಲಾಕ್ ಮಾಡಿ';
			case 'security_screen.pin_title': return 'ZiqeX ಪಿನ್';
			case 'security_screen.pin_active': return 'ಪಿನ್ ಸಕ್ರಿಯವಾಗಿದೆ';
			case 'security_screen.pin_setup': return 'ಆ್ಯಪ್ ಅನ್‌ಲಾಕ್ ಮಾಡಲು ವಿಶಿಷ್ಟ 4-ಅಂಕಿಯ ಕೋಡ್ ಹೊಂದಿಸಿ';
			case 'security_screen.warning_title': return 'ಹೆಚ್ಚಿನ ತಪ್ಪು ಪ್ರಯತ್ನಗಳು';
			case 'security_screen.warning_sub': return 'ತಪ್ಪಾದ ಪಿನ್ ಅನ್ನು 10 ಬಾರಿ ನಮೂದಿಸಿದರೆ, ZiqeX ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಮರುಹೊಂದಿಸಲಾಗುತ್ತದೆ. ಈ ಸಾಧನದಲ್ಲಿ ಸಂಗ್ರಹಿಸಿರುವ ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಶಾಶ್ವತವಾಗಿ ಅಳಿಸಲಾಗುತ್ತದೆ';
			case 'security_screen.incomplete_title': return 'ಭದ್ರತಾ ಸೆಟಪ್ ಅಪೂರ್ಣವಾಗಿದೆ';
			case 'security_screen.incomplete_content': return 'ನೀವು ಆ್ಯಪ್ ಲಾಕ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿದ್ದೀರಿ ಆದರೆ ಪಿನ್ ಅಥವಾ ಬಯೋಮೆಟ್ರಿಕ್ಸ್ ಹೊಂದಿಸಿಲ್ಲ. ಯಾವುದೇ ವಿಧಾನವನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡುವವರೆಗೆ ಆ್ಯಪ್ ಲಾಕ್ ನಿಷ್ಕ್ರಿಯವಾಗಿರುತ್ತದೆ.';
			case 'security_screen.got_it': return 'ಅರ್ಥವಾಯಿತು';
			case 'data.appBar': return 'ಡೇಟಾ ನಿರ್ವಹಣೆ ಮತ್ತು\nಸಂಗ್ರಹಣೆ';
			case 'data.summary': return 'ಸಂಗ್ರಹಣೆ ಸಾರಾಂಶ';
			case 'data.totalUsed': return 'ಒಟ್ಟು ಬಳಸಲಾಗಿದೆ: ';
			case 'data.legendModel': return 'ಮಾದರಿ ಗಾತ್ರ';
			case 'data.legendFree': return 'ಖಾಲಿ ಸ್ಥಳ';
			case 'data.mgmt': return 'ಮಾದರಿ ನಿರ್ವಹಣೆ';
			case 'data.deleteModels': return 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಿದ ಎಲ್ಲಾ ಮಾದರಿಗಳನ್ನು ಅಳಿಸಿ';
			case 'data.deleteModelsSub': return 'ಈ ಸಾಧನದಿಂದ ಎಲ್ಲಾ ಸ್ಥಳೀಯ ಮಾದರಿ ಗಾತ್ರಗಳು ಮತ್ತು ಪ್ಯಾರಾಮೀಟರ್‌ಗಳನ್ನು ಸಂಪೂರ್ಣವಾಗಿ ತೆಗೆದುಹಾಕಿ.';
			case 'data.selectDelete': return 'ಅಳಿಸಲು ಮಾದರಿಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';
			case 'data.autoDelete': return 'ಇದಕ್ಕಿಂತ ಹಳೆಯ ಚಾಟ್‌ಗಳನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಅಳಿಸಿ:';
			case 'data.autoDeleteSub': return 'ಈ ಸೆಟ್ಟಿಂಗ್ ಎಲ್ಲಾ ಲಿಂಕ್ ಮಾಡದ ಸಂಭಾಷಣೆ ಮೋಡ್‌ಗಳಿಗೆ ಅನ್ವಯಿಸುತ್ತದೆ.';
			case 'data.modes': return 'ಮೋಡ್‌ಗಳು';
			case 'data.noData': return 'ಯಾವುದೇ ಸಕ್ರಿಯ ಚಾಟ್ ಡೇಟಾ ಇಲ್ಲ';
			case 'data.deleteAll': return 'ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ಅಳಿಸಿ';
			case 'data.authReq': return 'ಆ್ಯಪ್ ಲಾಕ್ ಮರು-ದೃಢೀಕರಣ ಅಗತ್ಯವಿದೆ';
			case 'data.viewChats': return 'ಚಾಟ್‌ಗಳನ್ನು ವೀಕ್ಷಿಸಿ';
			case 'data.deleteAllPillar': return 'ಎಲ್ಲವನ್ನೂ ಅಳಿಸಿ';
			case 'data.space': return 'ಸ್ಥಳ:';
			case 'data.activeInstances': return 'ಸಕ್ರಿಯ ಇನ್‌ಸ್ಟೆನ್ಸ್‌ಗಳು:';
			case 'pin_setup.title_setup': return '4-ಅಂಕಿಯ ಪಿನ್ ಹೊಂದಿಸಿ';
			case 'pin_setup.subtitle_setup': return 'ಆ್ಯಪ್ ಪ್ರವೇಶಿಸಲು ಸುರಕ್ಷಿತ ಕೋಡ್ ರಚಿಸಿ';
			case 'pin_setup.title_confirm': return 'ಪಿನ್ ದೃಢೀಕರಿಸಿ';
			case 'pin_setup.subtitle_confirm': return 'ದೃಢೀಕರಿಸಲು ನಿಮ್ಮ 4-ಅಂಕಿಯ ಕೋಡ್ ಅನ್ನು ಮತ್ತೆ ನಮೂದಿಸಿ';
			case 'pin_setup.title_verify': return 'ಪ್ರಸ್ತುತ ಪಿನ್ ನಮೂದಿಸಿ';
			case 'pin_setup.subtitle_verify': return 'ಮುಂದುವರಿಸಲು ನಿಮ್ಮ ಪ್ರಸ್ತುತ ಕೋಡ್ ನಮೂದಿಸಿ';
			case 'pin_setup.error_mismatch': return 'ಪಿನ್‌ಗಳು ಹೊಂದಿಕೆಯಾಗುತ್ತಿಲ್ಲ. ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
			case 'pin_setup.error_incorrect': return 'ತಪ್ಪಾದ ಪಿನ್. ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';
			case 'pin_setup.snack_success': return 'ಪಿನ್ ಯಶಸ್ವಿಯಾಗಿ ಹೊಂದಿಸಲಾಗಿದೆ';
			case 'pin_mgmt.appBar': return 'ಆ್ಯಪ್-ನಿರ್ದಿಷ್ಟ ಪಿನ್';
			case 'pin_mgmt.change_title': return 'ಪಿನ್ ಬದಲಾಯಿಸಿ';
			case 'pin_mgmt.change_sub': return 'ನಿಮ್ಮ 4-ಅಂಕಿಯ ZiqeX ಭದ್ರತಾ ಕೋಡ್ ಅನ್ನು ನವೀಕರಿಸಿ';
			case 'pin_mgmt.remove_title': return 'ಪಿನ್ ತೆಗೆದುಹಾಕಿ';
			case 'pin_mgmt.remove_sub': return 'ZiqeX ಗಾಗಿ ಪಿನ್ ಪ್ರವೇಶವನ್ನು ಆಫ್ ಮಾಡಿ';
			case 'pin_mgmt.snack_removed': return 'ಪಿನ್ ಯಶಸ್ವಿಯಾಗಿ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';
			case 'lang_legacy.title1': return 'ಯಾವ ಭಾಷೆ\n';
			case 'lang_legacy.title2': return 'ನಿಮ್ಮದೇ ಎನಿಸುತ್ತದೆ?';
			case 'lang_legacy.subtitle': return 'ನಿಮ್ಮ ಮಾತೃಭಾಷೆಯಲ್ಲಿ ಧ್ವನಿ, ಪಠ್ಯ ಮತ್ತು ಉತ್ತರಗಳು. ಯಾವುದೇ ಸಮಯದಲ್ಲಿ ಬದಲಾಯಿಸಿ.';
			case 'lang_legacy.first_reply': return 'ಮೊದಲ ಉತ್ತರ ಹೀಗಿರುತ್ತದೆ';
			case 'lang_legacy.script_info': return ({required Object lang}) => '${lang} - ನಿಮ್ಮ ಲಿಪಿಯಲ್ಲಿ ಬರೆಯಲಾಗುತ್ತದೆ ಮತ್ತು ಮಾತನಾಡಲಾಗುತ್ತದೆ';
			case 'lang_legacy.continueBtn': return 'ಮುಂದುವರಿಸಿ';
			case 'model_mgmt.appBar': return 'మోడల్ నిర్వహణ';
			case 'model_mgmt.subtitle': return 'స్థానిక ఎడ్జ్ AI భాషా మోడల్‌లను కాన్ఫిగర్ చేయండి';
			case 'model_mgmt.status_loaded': return 'లోడ్ చేయబడింది';
			case 'model_mgmt.status_unloaded': return 'లోడ్ కాలేదు';
			case 'model_mgmt.status_loading': return 'లోడ్ అవుతోంది...';
			case 'model_mgmt.size': return ({required Object size}) => 'పరిమాణం: ${size}';
			case 'model_mgmt.load': return 'లోడ్ చేయి';
			case 'model_mgmt.unload': return 'అన్‌లోడ్ చేయి';
			case 'model_mgmt.download': return 'డೌన్‌లోడ్';
			case 'model_mgmt.delete': return 'తొలగించు';
			case 'model_mgmt.brahm_2b_desc': return 'మొబైల్ పరిਕਰాల్లో తక్కువ-లేటెన్సీ టెక్స్ట్ కంప్લીషన్ మరియు చాట్ కోసం రూపొందించిన అతివేగవంతమైన కాంపాక్ట్ ఎడ్జ్ మోడల్.';
			case 'model_mgmt.brahm_5b_desc': return 'మెరుగైన టాస్క్ ఖచ్చితత్వం మరియు సంక్లిష్టమైన ఇన్స్ట్రక్షనల్ పనితీరును అందించే సమతుల్య రీజనింగ్ మోడల్.';
			default: return null;
		}
	}
}

extension on _StringsUr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'سلام';
			case 'mind_today': return 'آج آپ کے ذہن میں کیا ہے؟';
			case 'on_device_only': return 'صرف اس ڈیوائس پر';
			case 'offline': return 'آف لائن';
			case 'start_something': return 'کچھ شروع کریں';
			case 'ask_anything': return 'کچھ بھی پوچھیں';
			case 'ask_anything_sub': return 'صحت · قانونی · ذاتی · کام';
			case 'voice_mode': return 'وائس موڈ';
			case 'voice_mode_sub': return 'اپنی زبان میں بات کریں';
			case 'ask_image': return 'تصویر کے بارے میں پوچھیں';
			case 'ask_image_sub': return 'فارم، لیبل، اسکرپٹس';
			case 'panchang': return 'پنچانگ';
			case 'panchang_sub': return 'آج کی تِتھی اور مُہورت';
			case 'ephemeral': return 'عارضی';
			case 'ephemeral_sub': return 'بغیر کوئی نشان چھوڑے بات کریں';
			case 'recent': return 'حالیہ';
			case 'home': return 'ہوم';
			case 'chat': return 'چیٹ';
			case 'library': return 'لائبریری';
			case 'you': return 'آپ';
			case 'settings_pref': return 'پروفائل سیٹنگز';
			case 'preferences': return 'ترجیحات اور سیکیورٹی';
			case 'language': return 'زبان';
			case 'security': return 'سیکیورٹی';
			case 'security_sub': return 'ایپ لاک · 2FA';
			case 'privacy_tiers': return 'پرائیویسی موڈ';
			case 'privacy_tiers_sub': return '1 فعال \'ZiqeX سننے کا موڈ\'';
			case 'storage_purge': return 'ڈیٹا اور اسٹوریج';
			case 'storage_purge_sub': return 'ڈیوائس پر 184 KB';
			case 'ephemeral_mode': return 'خفیہ چیٹ';
			case 'about': return 'سسٹم کی معلومات';
			case 'reset_prototype': return 'پروٹوٹائپ ری سیٹ کریں';
			case 'built_in_india': return 'بھارت میں بنایا گیا۔ دنیا کے لیے۔';
			case 'library_sub': return 'ہر ماڈل · ہر یادداشت · اس ڈیوائس پر';
			case 'on_this_device': return 'اس ڈیوائس پر';
			case 'active': return 'فعال';
			case 'add': return '+ شامل کریں';
			case 'storage_used': return 'استعمال شدہ اسٹوریج';
			case 'health_question': return 'صحت کا سوال';
			case 'family': return 'خاندان';
			case 'work': return 'کام';
			case 'just_thinking': return 'بس سوچ رہا ہوں';
			case 'profile.access': return 'رسائی';
			case 'profile.privacy': return 'پرائیویسی';
			case 'profile.system': return 'سسٹم';
			case 'profile.security_active': return 'سیکیورٹی فعال ہے';
			case 'profile.security_inactive': return 'سیکیورٹی فعال نہیں ہے';
			case 'profile.dark_mode': return 'ڈارک موڈ';
			case 'profile.dark_mode_sub': return 'لائٹ اور ڈارک ورک اسپیس تھیمز کے درمیان تبدیل کریں';
			case 'profile.data_mgmt': return 'چیٹ ڈیٹا مینجمنٹ اور اسٹوریج';
			case 'profile.data_mgmt_sub': return 'اپنی گفتگو کی تاریخ کا نظم کریں';
			case 'profile.app_lock': return 'ایپ لاک';
			case 'profile.app_lock_sub': return 'اپنے فنگر پرنٹ، چہرے یا پن کے ذریعے ZiqeX کو محفوظ کریں';
			case 'profile.incognito_sub': return 'ہسٹری میں محفوظ کیے بغیر چیٹ کریں۔ چیٹ سے باہر نکلنے کے بعد اسے بازیافت نہیں کیا جا سکتا';
			case 'profile.version': return 'V0.1 • خودمختار • آن ڈیوائس';
			case 'welcome.meet': return 'ZiqeX سے ملیے';
			case 'welcome.at_edge': return 'ایج پر ذہانت';
			case 'welcome.private': return 'نجی اور ایج AI\nZenteiQ کی جانب سے';
			case 'welcome.begin': return 'آن بورڈنگ شروع کریں';
			case 'info.title': return 'آپ کے اردگرد ڈیزائن کی گئی ذہانت';
			case 'info.subtitle': return 'پرائیویسی، انتخاب اور کنٹرول کے ساتھ مفید AI، جو تجربے میں شامل ہے۔';
			case 'info.privacy_title': return 'پرائیویسی پہلے';
			case 'info.privacy_desc': return 'ZiqeX کو اس طرح ڈیزائن کیا گیا ہے کہ ذہانت اور آپ کی معلومات آپ کے ڈیوائس کے قریب رہیں۔';
			case 'info.hand_title': return 'آپ کے ہاتھ میں ذہانت';
			case 'info.hand_desc': return 'روزمرہ کی ذہانت، براہ راست آپ کے ڈیوائس پر دستیاب۔';
			case 'info.control_title': return 'آپ کا ڈیٹا۔ آپ کا کنٹرول۔';
			case 'info.control_desc': return 'منتخب کریں کہ کیا رکھنا ہے، محفوظ شدہ ڈیٹا کا نظم کریں، اور جو چیزیں اب ضروری نہیں انہیں حذف کریں۔';
			case 'info.place_title': return 'ہر جگہ کے لیے ڈیزائن کیا گیا';
			case 'info.place_desc': return 'مختلف زبانوں، ڈیوائسز اور لوگوں کے ٹیکنالوجی استعمال کرنے کے مختلف طریقوں کے لیے بنایا گیا۔';
			case 'info.footer': return 'آپ کی ذہانت۔ آپ کا ڈیوائس۔ آپ کا کنٹرول۔';
			case 'info.setup': return 'اپنا ZiqeX سیٹ اپ کریں';
			case 'languageSelection.appBar': return 'زبان کا انتخاب';
			case 'languageSelection.title': return 'اپنی زبان منتخب کریں';
			case 'languageSelection.subtitle': return 'اپنے انٹرفیس کے لیے زبان منتخب کریں۔';
			case 'languageSelection.back': return 'واپس';
			case 'languageSelection.continueBtn': return 'جاری رکھیں';
			case 'pillars.appBar': return 'ستونوں کا انتخاب';
			case 'pillars.title': return 'اپنے ستون منتخب کریں';
			case 'pillars.subtitle': return 'وہ بنیادی صلاحیتیں منتخب کریں جن پر آپ توجہ مرکوز کرنا چاہتے ہیں۔';
			case 'pillars.general': return 'عمومی';
			case 'pillars.operational': return 'عملی';
			case 'pillars.personal': return 'ذاتی مشورہ';
			case 'pillars.workplace': return 'کام کی جگہ';
			case 'pillars.culture': return 'ثقافت اور خاندان';
			case 'pillars.journal': return 'روزانہ ڈائری';
			case 'pillars.back': return 'واپس';
			case 'pillars.continueBtn': return 'جاری رکھیں';
			case 'modelDownload.title1': return 'BrahmAI کو\nآپ کے پاس ';
			case 'modelDownload.title2': return 'لا رہے ہیں۔';
			case 'modelDownload.subtitle': return 'صرف ایک بار۔ اس کے بعد، ہم آپ کے ڈیٹا کو کبھی نہیں چھوئیں گے۔';
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
			case 'library_v2.subtitle': return 'اپنے AI وسائل کا نظم کریں';
			case 'library_v2.language_title': return 'زبان';
			case 'library_v2.language_desc': return 'اپنی پسندیدہ زبانیں منتخب کریں اور ان کا نظم کریں';
			case 'library_v2.model_title': return 'ماڈل';
			case 'library_v2.model_desc': return 'دستیاب AI ماڈلز کو دریافت کریں اور ان کا نظم کریں';
			case 'library_v2.saved_title': return 'محفوظ شدہ';
			case 'library_v2.saved_desc': return 'آپ کی پرامپٹ لائبریری';
			case 'library_v2.skills_title': return 'مہارتیں';
			case 'library_v2.skills_desc': return 'AI کی صلاحیتیں';
			case 'library_v2.pillars_title': return 'ستون';
			case 'library_v2.pillars_desc': return 'بنیادی صلاحیتیں';
			case 'biometric.vault': return 'والٹ سیکیورٹی';
			case 'biometric.setupTitle': return 'محفوظ لاک سیٹ اپ';
			case 'biometric.setupSub': return 'اپنے پسندیدہ تصدیقی طریقے سے اپنے والٹ کو محفوظ کریں۔';
			case 'biometric.deviceTitle': return 'ڈیوائس بائیومیٹرکس';
			case 'biometric.deviceSub': return 'FaceID یا فنگر پرنٹ استعمال کریں';
			case 'biometric.pinTitle': return 'ایپ کے لیے مخصوص پن';
			case 'biometric.pinSub': return 'ایک منفرد 4 ہندسوں کا کوڈ سیٹ کریں';
			case 'biometric.dialogTitle': return 'بائیومیٹرک رسائی کی اجازت دیں';
			case 'biometric.dialogSub': return 'ZiqeX کو ان لاک کرنے کے لیے اپنے فنگر پرنٹ یا ڈیوائس کے چہرے کی شناخت کا استعمال کریں';
			case 'biometric.cancel': return 'منسوخ کریں';
			case 'biometric.allow': return 'بائیومیٹرکس کی اجازت دیں';
			case 'security_screen.appBar': return 'ایپ سیکیورٹی';
			case 'security_screen.global_protection': return 'عالمی تحفظ';
			case 'security_screen.app_lock': return 'ایپ لاک';
			case 'security_screen.app_lock_sub': return 'ZiqeX کھولنے کے لیے تصدیق درکار ہے';
			case 'security_screen.auth_methods': return 'تصدیق کے طریقے';
			case 'security_screen.biometrics_title': return 'ڈیوائس بائیومیٹرکس';
			case 'security_screen.biometrics_sub': return 'اپنے فنگر پرنٹ یا چہرے سے فوری طور پر ان لاک کریں';
			case 'security_screen.pin_title': return 'ZiqeX پن';
			case 'security_screen.pin_active': return 'پن فعال ہے';
			case 'security_screen.pin_setup': return 'ایپ کو ان لاک کرنے کے لیے ایک منفرد 4 ہندسوں کا کوڈ سیٹ کریں';
			case 'security_screen.warning_title': return 'بہت زیادہ غلط کوششیں';
			case 'security_screen.warning_sub': return 'اگر غلط پن 10 بار درج کیا جاتا ہے تو ZiqeX خود بخود ری سیٹ ہو جائے گا۔ اس ڈیوائس پر محفوظ تمام ڈیٹا مستقل طور پر حذف کر دیا جائے گا';
			case 'security_screen.incomplete_title': return 'سیکیورٹی سیٹ اپ نامکمل';
			case 'security_screen.incomplete_content': return 'آپ نے ایپ لاک فعال کر دیا ہے لیکن پن یا بائیومیٹرکس سیٹ نہیں کیا ہے۔ ایپ لاک اس وقت تک غیر فعال رہے گا جب تک کوئی طریقہ کنفیگر نہیں کیا جاتا۔';
			case 'security_screen.got_it': return 'ٹھیک ہے';
			case 'data.appBar': return 'ڈیٹا مینجمنٹ اور\nاسٹوریج';
			case 'data.summary': return 'اسٹوریج کا خلاصہ';
			case 'data.totalUsed': return 'کل استعمال شدہ: ';
			case 'data.legendModel': return 'ماڈل کا حجم';
			case 'data.legendFree': return 'خالی جگہ';
			case 'data.mgmt': return 'ماڈل مینجمنٹ';
			case 'data.deleteModels': return 'تمام ڈاؤن لوڈ کیے گئے ماڈلز حذف کریں';
			case 'data.deleteModelsSub': return 'اس ڈیوائس سے تمام مقامی ماڈل کے سائز اور پیرامیٹرز کو مکمل طور پر ہٹا دیں۔';
			case 'data.selectDelete': return 'حذف کرنے کے لیے ماڈلز منتخب کریں';
			case 'data.autoDelete': return 'اس سے پرانی چیٹس خودکار طور پر حذف کریں:';
			case 'data.autoDeleteSub': return 'یہ سیٹنگ تمام غیر منسلک گفتگو کے طریقوں پر لاگو ہوتی ہے۔';
			case 'data.modes': return 'موڈز';
			case 'data.noData': return 'کوئی فعال چیٹ ڈیٹا نہیں ہے';
			case 'data.deleteAll': return 'تمام ڈیٹا حذف کریں';
			case 'data.authReq': return 'ایپ لاک کے لیے دوبارہ تصدیق درکار ہے';
			case 'data.viewChats': return 'چیٹس دیکھیں';
			case 'data.deleteAllPillar': return 'سب حذف کریں';
			case 'data.space': return 'جگہ:';
			case 'data.activeInstances': return 'فعال انسٹینسز:';
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
			case 'model_mgmt.appBar': return 'ماڈل مینجمنٹ';
			case 'model_mgmt.subtitle': return 'مقامی ایج AI زبان کے ماڈلز ترتیب دیں';
			case 'model_mgmt.status_loaded': return 'لوڈ ہو گیا';
			case 'model_mgmt.status_unloaded': return 'لوڈ نہیں ہوا';
			case 'model_mgmt.status_loading': return 'لوڈ ہو رہا ہے...';
			case 'model_mgmt.size': return ({required Object size}) => 'سائز: ${size}';
			case 'model_mgmt.load': return 'لوڈ کریں';
			case 'model_mgmt.unload': return 'ان لوڈ کریں';
			case 'model_mgmt.download': return 'ڈاؤن لوڈ';
			case 'model_mgmt.delete': return 'حذف کریں';
			case 'model_mgmt.brahm_2b_desc': return 'موبائل آلات پر کم تاخیر والے ٹیکسٹ کی تکمیل اور چیٹ کے لیے ڈیزائن کیا گیا انتہائی تیز کومپیکٹ ایج ماڈل۔';
			case 'model_mgmt.brahm_5b_desc': return 'متوازن استدلال کا ماڈل جو بہتر ٹاسک کی درستگی اور پیچیدہ ہدایاتی کارکردگی پیش کرتا ہے۔';
			default: return null;
		}
	}
}
