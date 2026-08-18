/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 13
/// Strings: 330 (25 per locale)
///
/// Built on 2026-08-18 at 10:48 UTC

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
	@override late final _StringsLanguageSelectionAs languageSelection = _StringsLanguageSelectionAs._(_root);
}

// Path: languageSelection
class _StringsLanguageSelectionAs extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionAs._(_StringsAs root) : this._root = root, super._(root);

	@override final _StringsAs _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপোনাৰ ভাষা বাছনি কৰক';
	@override String get subtitle => 'আপୋনাৰ ইন্টাৰফেচৰ বাবে ভাষা বাছনি কৰক।';
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
	@override late final _StringsLanguageSelectionBn languageSelection = _StringsLanguageSelectionBn._(_root);
}

// Path: languageSelection
class _StringsLanguageSelectionBn extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionBn._(_StringsBn root) : this._root = root, super._(root);

	@override final _StringsBn _root; // ignore: unused_field

	// Translations
	@override String get title => 'আপনার ভাষা চয়ন করুন';
	@override String get subtitle => 'আপনার ইন্টারফেসের জন্য ভাষা নির্বাচন করুন।';
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
	@override late final _StringsLanguageSelectionGu languageSelection = _StringsLanguageSelectionGu._(_root);
}

// Path: languageSelection
class _StringsLanguageSelectionGu extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionGu._(_StringsGu root) : this._root = root, super._(root);

	@override final _StringsGu _root; // ignore: unused_field

	// Translations
	@override String get title => 'તમારી ભાષા પસંદ કરો';
	@override String get subtitle => 'તમારા ઇન્ટરફેસ માટે ભાષા પસંદ કરો।';
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
	@override String get settings_pref => 'सेटिंग्स · प्राथमिकताएं · बारे में';
	@override String get preferences => 'प्राथमिकताएं';
	@override String get language => 'भाषा';
	@override String get security => 'सुरक्षा';
	@override String get security_sub => 'ऐप लॉक · 2FA';
	@override String get privacy_tiers => 'गोपनीयता स्तर';
	@override String get privacy_tiers_sub => '2 सक्रिय · ZiqeXAI कैसे सुनता है';
	@override String get storage_purge => 'स्टोरेज और पर्ज';
	@override String get storage_purge_sub => 'डिवाइस पर 184 KB';
	@override String get ephemeral_mode => 'अल्पकालिक मोड';
	@override String get about => 'बारे में';
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
	@override late final _StringsWelcomeHi welcome = _StringsWelcomeHi._(_root);
	@override late final _StringsInfoHi info = _StringsInfoHi._(_root);
	@override late final _StringsLanguageSelectionHi languageSelection = _StringsLanguageSelectionHi._(_root);
	@override late final _StringsPillarsHi pillars = _StringsPillarsHi._(_root);
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
	@override late final _StringsLanguageSelectionKn languageSelection = _StringsLanguageSelectionKn._(_root);
}

// Path: languageSelection
class _StringsLanguageSelectionKn extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionKn._(_StringsKn root) : this._root = root, super._(root);

	@override final _StringsKn _root; // ignore: unused_field

	// Translations
	@override String get title => 'ನಿಮ್ಮ భాషನ್ನು ಆರಿಸಿ';
	@override String get subtitle => 'ನಿಮ್ಮ ಇಂಟರ್ಫೇಸ್‌ಗಾಗಿ ಭಾಷೆಯನ್ನು ಆರಿಸಿ।';
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
	@override late final _StringsLanguageSelectionMl languageSelection = _StringsLanguageSelectionMl._(_root);
}

// Path: languageSelection
class _StringsLanguageSelectionMl extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionMl._(_StringsMl root) : this._root = root, super._(root);

	@override final _StringsMl _root; // ignore: unused_field

	// Translations
	@override String get title => 'നിങ്ങളുടെ ഭാഷ തിരഞ്ഞെടുക്കുക';
	@override String get subtitle => 'നിങ്ങളുടെ ഇന്റർഫേസിനായി ഭാഷ തിരഞ്ഞെടുക്കുക.';
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
	@override late final _StringsLanguageSelectionMr languageSelection = _StringsLanguageSelectionMr._(_root);
}

// Path: languageSelection
class _StringsLanguageSelectionMr extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionMr._(_StringsMr root) : this._root = root, super._(root);

	@override final _StringsMr _root; // ignore: unused_field

	// Translations
	@override String get title => 'तुमची भाषा निवडा';
	@override String get subtitle => 'तुमच्या इंटरफेससाठी भाषा निवडा।';
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
	@override late final _StringsLanguageSelectionOr languageSelection = _StringsLanguageSelectionOr._(_root);
}

// Path: languageSelection
class _StringsLanguageSelectionOr extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionOr._(_StringsOr root) : this._root = root, super._(root);

	@override final _StringsOr _root; // ignore: unused_field

	// Translations
	@override String get title => 'ଆପଣଙ୍କର ଭାଷା ବାଛନ୍ତୁ';
	@override String get subtitle => 'ଆପଣଙ୍କର ଇଣ୍ଟରଫେସ୍ ପାଇଁ ଭାଷା ଚୟନ କରନ୍ତୁ।';
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
	@override late final _StringsLanguageSelectionPa languageSelection = _StringsLanguageSelectionPa._(_root);
}

// Path: languageSelection
class _StringsLanguageSelectionPa extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionPa._(_StringsPa root) : this._root = root, super._(root);

	@override final _StringsPa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ਆਪਣੀ ਭਾਸ਼ਾ ਚੁਣੋ';
	@override String get subtitle => 'ਆਪਣੇ ਇੰਟਰਫੇਸ ਲਈ ਭਾਸ਼ਾ ਚੁਣੋ।';
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
	@override String get privacy_tiers => 'தனியுரிமை அடுக்குகள்';
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
	@override late final _StringsWelcomeTa welcome = _StringsWelcomeTa._(_root);
	@override late final _StringsInfoTa info = _StringsInfoTa._(_root);
	@override late final _StringsLanguageSelectionTa languageSelection = _StringsLanguageSelectionTa._(_root);
	@override late final _StringsPillarsTa pillars = _StringsPillarsTa._(_root);
}

// Path: welcome
class _StringsWelcomeTa extends _StringsWelcomeEn {
	_StringsWelcomeTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get meet => 'ZiqeX ஐ சந்திக்கவும்';
	@override String get at_edge => 'எட்ஜில் உள்ள நுண்ணறிவு';
	@override String get private => 'தனியார் மற்றும் எட்ஜ் AI\nZenteiQ வழங்கியது';
	@override String get begin => 'தொடங்குங்கள்';
}

// Path: info
class _StringsInfoTa extends _StringsInfoEn {
	_StringsInfoTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
	@override String get title => 'உங்களைச் சுற்றி வடிவமைக்கப்பட்ட நுண்ணறிவு';
	@override String get subtitle => 'தனியுரிமை, விருப்பம் மற்றும் அனுபவத்தில் கட்டமைக்கப்பட்ட கட்டுப்பாட்டுடன் கூடிய பயனுள்ள AI.';
	@override String get privacy_title => 'தனியுரிமை முதலில்';
	@override String get privacy_desc => 'நுண்ணறிவு மற்றும் உங்கள் தகவலை உங்கள் சாதனத்திற்கு நெருக்கமாக வைத்திருக்கும் வகையில் ZiqeX வடிவமைக்கப்பட்டுள்ளது.';
	@override String get hand_title => 'உங்கள் கையில் நுண்ணறிவு';
	@override String get hand_desc => 'தினசரி நுண்ணறிவு, உங்கள் சாதனத்தில் நேரடியாகக் கிடைக்கும்.';
	@override String get control_title => 'உங்கள் தரவு. உங்கள் கட்டுப்பாடு.';
	@override String get control_desc => 'எதை வைத்திருக்க வேண்டும் என்பதைத் தேர்வுசெய்க, சேமித்து வைக்கப்பட்டுள்ளதை நிர்வகிக்கவும், உங்களுக்குத் தேவையில்லாதவற்றை நீக்கவும்.';
	@override String get place_title => 'ஒவ்வொரு இடத்திற்கும் வடிவமைக்கப்பட்டது';
	@override String get place_desc => 'வெவ்வேறு மொழிகள், சாதனங்கள் மற்றும் மக்கள் தொழில்நுட்பத்தைப் பயன்படுத்தும் முறைகளுக்காக உருவாக்கப்பட்டது.';
	@override String get footer => 'உங்கள் நுண்ணறிவு. உங்கள் சாதனம். உங்கள் கட்டுப்பாடு.';
	@override String get setup => 'உங்கள் ZiqeX ஐ அமைக்கவும்';
}

// Path: languageSelection
class _StringsLanguageSelectionTa extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionTa._(_StringsTa root) : this._root = root, super._(root);

	@override final _StringsTa _root; // ignore: unused_field

	// Translations
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
	@override String get settings_pref => 'సెట్టింగ్‌లు · ప్రాధాన్యతలు · గురించి';
	@override String get preferences => 'ప్రాధాన్యతలు';
	@override String get language => 'భాష';
	@override String get security => 'భద్రత';
	@override String get security_sub => 'యాప్ లాక్ · 2FA';
	@override String get privacy_tiers => 'గోప్యతా శ్రేణులు';
	@override String get privacy_tiers_sub => '2 యాక్టివ్ · ZiqeXAI ఎలా వింటుంది';
	@override String get storage_purge => 'స్టోరేజ్ & పర్జ్';
	@override String get storage_purge_sub => 'పరికరంలో 184 KB';
	@override String get ephemeral_mode => 'ఎఫెమెరల్ మోడ్';
	@override String get about => 'గురించి';
	@override String get reset_prototype => 'ప్రోటోటైప్‌ని రీసెట్ చేయండి';
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
	@override late final _StringsWelcomeTe welcome = _StringsWelcomeTe._(_root);
	@override late final _StringsInfoTe info = _StringsInfoTe._(_root);
	@override late final _StringsLanguageSelectionTe languageSelection = _StringsLanguageSelectionTe._(_root);
	@override late final _StringsPillarsTe pillars = _StringsPillarsTe._(_root);
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
}

// Path: languageSelection
class _StringsLanguageSelectionUr extends _StringsLanguageSelectionEn {
	_StringsLanguageSelectionUr._(_StringsUr root) : this._root = root, super._(root);

	@override final _StringsUr _root; // ignore: unused_field

	// Translations
	@override String get title => 'اپنی زبان منتخب کریں';
	@override String get subtitle => 'اپنے انٹرفیس کے لیے زبان منتخب کریں۔';
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
			default: return null;
		}
	}
}

extension on _StringsAs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'নমস্কাৰ';
			case 'languageSelection.title': return 'আপোনাৰ ভাষা বাছনি কৰক';
			case 'languageSelection.subtitle': return 'আপୋনাৰ ইন্টাৰফেচৰ বাবে ভাষা বাছনি কৰক।';
			default: return null;
		}
	}
}

extension on _StringsBn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'নমস্কার';
			case 'languageSelection.title': return 'আপনার ভাষা চয়ন করুন';
			case 'languageSelection.subtitle': return 'আপনার ইন্টারফেসের জন্য ভাষা নির্বাচন করুন।';
			default: return null;
		}
	}
}

extension on _StringsGu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'નમસ્તે';
			case 'languageSelection.title': return 'તમારી ભાષા પસંદ કરો';
			case 'languageSelection.subtitle': return 'તમારા ઇન્ટરફેસ માટે ભાષા પસંદ કરો।';
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
			case 'settings_pref': return 'सेटिंग्स · प्राथमिकताएं · बारे में';
			case 'preferences': return 'प्राथमिकताएं';
			case 'language': return 'भाषा';
			case 'security': return 'सुरक्षा';
			case 'security_sub': return 'ऐप लॉक · 2FA';
			case 'privacy_tiers': return 'गोपनीयता स्तर';
			case 'privacy_tiers_sub': return '2 सक्रिय · ZiqeXAI कैसे सुनता है';
			case 'storage_purge': return 'स्टोरेज और पर्ज';
			case 'storage_purge_sub': return 'डिवाइस पर 184 KB';
			case 'ephemeral_mode': return 'अल्पकालिक मोड';
			case 'about': return 'बारे में';
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
			case 'languageSelection.title': return 'अपनी भाषा चुनें';
			case 'languageSelection.subtitle': return 'अपने इंटरफ़ेस के लिए भाषा चुनें।';
			case 'languageSelection.back': return 'पीछे';
			case 'languageSelection.continueBtn': return 'जारी रखें';
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
			default: return null;
		}
	}
}

extension on _StringsKn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'ನಮಸ್ಕಾರ';
			case 'languageSelection.title': return 'ನಿಮ್ಮ భాషನ್ನು ಆರಿಸಿ';
			case 'languageSelection.subtitle': return 'ನಿಮ್ಮ ಇಂಟರ್ಫೇಸ್‌ಗಾಗಿ ಭಾಷೆಯನ್ನು ಆರಿಸಿ।';
			default: return null;
		}
	}
}

extension on _StringsMl {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'നമസ്കാരം';
			case 'languageSelection.title': return 'നിങ്ങളുടെ ഭാഷ തിരഞ്ഞെടുക്കുക';
			case 'languageSelection.subtitle': return 'നിങ്ങളുടെ ഇന്റർഫേസിനായി ഭാഷ തിരഞ്ഞെടുക്കുക.';
			default: return null;
		}
	}
}

extension on _StringsMr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'नमस्कार';
			case 'languageSelection.title': return 'तुमची भाषा निवडा';
			case 'languageSelection.subtitle': return 'तुमच्या इंटरफेससाठी भाषा निवडा।';
			default: return null;
		}
	}
}

extension on _StringsOr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'ନମସ୍କାର';
			case 'languageSelection.title': return 'ଆପଣଙ୍କର ଭାଷା ବାଛନ୍ତୁ';
			case 'languageSelection.subtitle': return 'ଆପଣଙ୍କର ଇଣ୍ଟରଫେସ୍ ପାଇଁ ଭାଷା ଚୟନ କରନ୍ତୁ।';
			default: return null;
		}
	}
}

extension on _StringsPa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'ਸਤਿ ਸ੍ਰੀ ਅਕਾਲ';
			case 'languageSelection.title': return 'ਆਪਣੀ ਭਾਸ਼ਾ ਚੁਣੋ';
			case 'languageSelection.subtitle': return 'ਆਪਣੇ ਇੰਟਰਫੇਸ ਲਈ ਭਾਸ਼ਾ ਚੁਣੋ।';
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
			case 'privacy_tiers': return 'தனியுரிமை அடுக்குகள்';
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
			case 'welcome.meet': return 'ZiqeX ஐ சந்திக்கவும்';
			case 'welcome.at_edge': return 'எட்ஜில் உள்ள நுண்ணறிவு';
			case 'welcome.private': return 'தனியார் மற்றும் எட்ஜ் AI\nZenteiQ வழங்கியது';
			case 'welcome.begin': return 'தொடங்குங்கள்';
			case 'info.title': return 'உங்களைச் சுற்றி வடிவமைக்கப்பட்ட நுண்ணறிவு';
			case 'info.subtitle': return 'தனியுரிமை, விருப்பம் மற்றும் அனுபவத்தில் கட்டமைக்கப்பட்ட கட்டுப்பாட்டுடன் கூடிய பயனுள்ள AI.';
			case 'info.privacy_title': return 'தனியுரிமை முதலில்';
			case 'info.privacy_desc': return 'நுண்ணறிவு மற்றும் உங்கள் தகவலை உங்கள் சாதனத்திற்கு நெருக்கமாக வைத்திருக்கும் வகையில் ZiqeX வடிவமைக்கப்பட்டுள்ளது.';
			case 'info.hand_title': return 'உங்கள் கையில் நுண்ணறிவு';
			case 'info.hand_desc': return 'தினசரி நுண்ணறிவு, உங்கள் சாதனத்தில் நேரடியாகக் கிடைக்கும்.';
			case 'info.control_title': return 'உங்கள் தரவு. உங்கள் கட்டுப்பாடு.';
			case 'info.control_desc': return 'எதை வைத்திருக்க வேண்டும் என்பதைத் தேர்வுசெய்க, சேமித்து வைக்கப்பட்டுள்ளதை நிர்வகிக்கவும், உங்களுக்குத் தேவையில்லாதவற்றை நீக்கவும்.';
			case 'info.place_title': return 'ஒவ்வொரு இடத்திற்கும் வடிவமைக்கப்பட்டது';
			case 'info.place_desc': return 'வெவ்வேறு மொழிகள், சாதனங்கள் மற்றும் மக்கள் தொழில்நுட்பத்தைப் பயன்படுத்தும் முறைகளுக்காக உருவாக்கப்பட்டது.';
			case 'info.footer': return 'உங்கள் நுண்ணறிவு. உங்கள் சாதனம். உங்கள் கட்டுப்பாடு.';
			case 'info.setup': return 'உங்கள் ZiqeX ஐ அமைக்கவும்';
			case 'languageSelection.title': return 'உங்கள் மொழியைத் தேர்ந்தெடுக்கவும்';
			case 'languageSelection.subtitle': return 'உங்கள் இடைமுகத்திற்கான மொழியைத் தேர்ந்தெடுக்கவும்.';
			case 'languageSelection.back': return 'பின்னால்';
			case 'languageSelection.continueBtn': return 'தொடரவும்';
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
			case 'settings_pref': return 'సెట్టింగ్‌లు · ప్రాధాన్యతలు · గురించి';
			case 'preferences': return 'ప్రాధాన్యతలు';
			case 'language': return 'భాష';
			case 'security': return 'భద్రత';
			case 'security_sub': return 'యాప్ లాక్ · 2FA';
			case 'privacy_tiers': return 'గోప్యతా శ్రేణులు';
			case 'privacy_tiers_sub': return '2 యాక్టివ్ · ZiqeXAI ఎలా వింటుంది';
			case 'storage_purge': return 'స్టోరేజ్ & పర్జ్';
			case 'storage_purge_sub': return 'పరికరంలో 184 KB';
			case 'ephemeral_mode': return 'ఎఫెమెరల్ మోడ్';
			case 'about': return 'గురించి';
			case 'reset_prototype': return 'ప్రోటోటైప్‌ని రీసెట్ చేయండి';
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
			case 'languageSelection.title': return 'మీ భాషను ఎంచుకోండి';
			case 'languageSelection.subtitle': return 'మీ ఇంటర్ఫేస్ కోసం భాషను ఎంచుకోండి.';
			case 'languageSelection.back': return 'వెనుకకు';
			case 'languageSelection.continueBtn': return 'కొనసాగించండి';
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
			default: return null;
		}
	}
}
