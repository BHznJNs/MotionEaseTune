// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

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

  @override
  String get pleaseTurnUpVolume => '请先调高音量。';

  @override
  String get settingsAppBarTitle => '设置';

  @override
  String get applicationThemeSettingTitle => '应用主题';

  @override
  String get lightThemeOption => '浅色';

  @override
  String get darkThemeOption => '深色';

  @override
  String get systemThemeOption => '跟随系统';

  @override
  String get languagesSettingTitle => '语言';

  @override
  String get languagesAppBarTitle => '语言';

  @override
  String get systemLanguageOption => '跟随系统';

  @override
  String get aboutTitle => '关于';

  @override
  String get aboutPageTitle => '关于应用';

  @override
  String get aboutPageHomepage => '主页';

  @override
  String get aboutPageFeedback => '反馈';

  @override
  String aboutPageVersion(Object version) {
    return '版本：$version';
  }

  @override
  String get aboutPageThanksPrefix => '本应用的核心理念来源于';

  @override
  String get aboutPageThanksResearch => '这项研究';

  @override
  String get aboutPageThanksSuffix => '。';

  @override
  String get aboutPageOpenUrlError => '无法打开链接';
}
