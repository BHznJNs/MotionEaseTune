// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get userGuideTitle => 'User Guide';

  @override
  String get nextButton => 'Next';

  @override
  String get doneButton => 'Done';

  @override
  String get useBeforeOnsetTitle => 'Use before onset';

  @override
  String get useBeforeOnsetDescription => 'Use this app before the onset of motion sickness symptoms.';

  @override
  String get sameVolumeToEarsTitle => 'Same volume to ears';

  @override
  String get sameVolumeToEarsDescription => 'Make sure the volume is the same for both ears.';

  @override
  String get listenForAMinuteTitle => 'Listen for a minute';

  @override
  String get listenForAMinuteDescription => 'Keep listening for about a minute for better results.';

  @override
  String get pleaseTurnUpVolume => 'Please turn up the volume first.';

  @override
  String get settingsAppBarTitle => 'Settings';

  @override
  String get applicationThemeSettingTitle => 'Application theme';

  @override
  String get lightThemeOption => 'Light';

  @override
  String get darkThemeOption => 'Dark';

  @override
  String get systemThemeOption => 'System';

  @override
  String get languagesSettingTitle => 'Languages';

  @override
  String get languagesAppBarTitle => 'Languages';

  @override
  String get systemLanguageOption => 'System';

  @override
  String get aboutTitle => 'About';

  @override
  String get aboutPageTitle => 'About';

  @override
  String get aboutPageHomepage => 'Homepage';

  @override
  String get aboutPageFeedback => 'Feedback';

  @override
  String aboutPageVersion(Object version) {
    return 'Version: $version';
  }

  @override
  String get aboutPageThanksPrefix => 'The core concept of this application is inspired by ';

  @override
  String get aboutPageThanksResearch => 'this research';

  @override
  String get aboutPageThanksSuffix => '.';

  @override
  String get aboutPageOpenUrlError => 'Could not open the link';
}
