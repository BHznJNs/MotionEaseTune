// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get motionEaseTuneTitle => 'MotionEaseTune';

  @override
  String get userGuideTitle => '用户指南';

  @override
  String get nextButton => '下一步';

  @override
  String get doneButton => '完成';

  @override
  String get useBeforeOnsetTitle => '在有症状前使用';

  @override
  String get useBeforeOnsetDescription => '请在有晕动症状前使用此应用程序。';

  @override
  String get sameVolumeToEarsTitle => '双耳音量相同';

  @override
  String get sameVolumeToEarsDescription => '尽量确保双耳的音量相同。';

  @override
  String get listenForAMinuteTitle => '听一分钟';

  @override
  String get listenForAMinuteDescription => '听音频大约一分钟以获得更好的效果。';
}
