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
  String get useBeforeOnsetTitle => '在症状出现前使用';

  @override
  String get useBeforeOnsetDescription => '为了获得最佳效果，建议您在感觉到晕车症状之前使用本应用。';

  @override
  String get sameVolumeToEarsTitle => '留意双耳音量';

  @override
  String get sameVolumeToEarsDescription => '为了获得最佳效果，请尽量让双耳听到的音量感觉一致。';

  @override
  String get listenForAMinuteTitle => '聆听一分钟左右';

  @override
  String get listenForAMinuteDescription => '持续聆听音频一分钟，有助于达到更佳效果。';

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
