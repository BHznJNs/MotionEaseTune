import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh')
  ];

  /// The title of the user guide dialog.
  ///
  /// In en, this message translates to:
  /// **'User Guide'**
  String get userGuideTitle;

  /// Label for the next button in the user guide.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get nextButton;

  /// Label for the done button in the user guide.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get doneButton;

  /// Title for the first page of the user guide.
  ///
  /// In en, this message translates to:
  /// **'Use before onset'**
  String get useBeforeOnsetTitle;

  /// Description for the first page of the user guide.
  ///
  /// In en, this message translates to:
  /// **'Use this app before the onset of motion sickness symptoms.'**
  String get useBeforeOnsetDescription;

  /// Title for the second page of the user guide.
  ///
  /// In en, this message translates to:
  /// **'Same volume to ears'**
  String get sameVolumeToEarsTitle;

  /// Description for the second page of the user guide.
  ///
  /// In en, this message translates to:
  /// **'Make sure the volume is the same for both ears.'**
  String get sameVolumeToEarsDescription;

  /// Title for the third page of the user guide.
  ///
  /// In en, this message translates to:
  /// **'Listen for a minute'**
  String get listenForAMinuteTitle;

  /// Description for the third page of the user guide.
  ///
  /// In en, this message translates to:
  /// **'Keep listening for about a minute for better results.'**
  String get listenForAMinuteDescription;

  /// The message to display when the volume is too low.
  ///
  /// In en, this message translates to:
  /// **'Please turn up the volume first.'**
  String get pleaseTurnUpVolume;

  /// No description provided for @settingsAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsAppBarTitle;

  /// No description provided for @applicationThemeSettingTitle.
  ///
  /// In en, this message translates to:
  /// **'Application theme'**
  String get applicationThemeSettingTitle;

  /// No description provided for @lightThemeOption.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get lightThemeOption;

  /// No description provided for @darkThemeOption.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get darkThemeOption;

  /// No description provided for @systemThemeOption.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get systemThemeOption;

  /// No description provided for @languagesSettingTitle.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get languagesSettingTitle;

  /// No description provided for @languagesAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get languagesAppBarTitle;

  /// No description provided for @systemLanguageOption.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get systemLanguageOption;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutTitle;

  /// No description provided for @aboutPageTitle.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutPageTitle;

  /// Label for the homepage link in the about page.
  ///
  /// In en, this message translates to:
  /// **'Homepage'**
  String get aboutPageHomepage;

  /// Label for the feedback link in the about page.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get aboutPageFeedback;

  /// Version label in the about page. {version} is the version string.
  ///
  /// In en, this message translates to:
  /// **'Version: {version}'**
  String aboutPageVersion(Object version);

  /// Prefix for the thanks text in the about page.
  ///
  /// In en, this message translates to:
  /// **'The core concept of this application is inspired by '**
  String get aboutPageThanksPrefix;

  /// Clickable text for the research link in the about page.
  ///
  /// In en, this message translates to:
  /// **'this research'**
  String get aboutPageThanksResearch;

  /// Suffix for the thanks text in the about page.
  ///
  /// In en, this message translates to:
  /// **'.'**
  String get aboutPageThanksSuffix;

  /// Error message when failing to open a link in the about page.
  ///
  /// In en, this message translates to:
  /// **'Could not open the link'**
  String get aboutPageOpenUrlError;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
