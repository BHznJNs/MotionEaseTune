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
}
