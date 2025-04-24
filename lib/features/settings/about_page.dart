import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:motion_ease_tune/l10n/app_localizations.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<StatefulWidget> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  late final _paperRec = TapGestureRecognizer()..onTap = () =>
    _launchRelatedPaper('https://doi.org/10.1265/ehpm.24-00247');
  late final _homePageRec = TapGestureRecognizer()..onTap = () =>
    _launchRelatedPaper('https://github.com/BHznJNs/MotionEaseTune');
  String _versionName = '';

  @override
  void initState() {
    super.initState();
    PackageInfo.fromPlatform().then((value) {
      setState(() {
        _versionName = value.version;
      });
    });
  }

  @override
  void dispose() {
    _paperRec.dispose();
    super.dispose();
  }

  void _launchRelatedPaper(String url) async {
    final l10n = AppLocalizations.of(context)!;
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.aboutPageOpenUrlError)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final logoAndName = Center(child: Column(
      children: [
        const SizedBox(height: 16),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset('assets/icon/icon.png', width: 200, height: 200),
        ),
        const SizedBox(height: 16),
        Text('MotionEaseTune', style: TextStyle(
          fontSize: 36,
          fontFamily: 'ComicRelief',
          color: Theme.of(context).colorScheme.primary,
        )),
        const SizedBox(height: 32),
      ],
    ));
    final homePageText = Text.rich(
      TextSpan(children: [
        WidgetSpan(child: Image.asset(
          isDarkMode ? 'assets/icon/github-mark-white.png' : 'assets/icon/github-mark.png',
          height: 20,
        )),
        TextSpan(text: ' ', style: TextStyle(fontSize: 18)),
        TextSpan(
          text: l10n.aboutPageHomepage,
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.primary,
            decoration: TextDecoration.underline,
          ),
          recognizer: _homePageRec
        ),
      ]),
    );
    final feedbackText = Text.rich(
      TextSpan(children: [
        WidgetSpan(child: Icon(Icons.feedback, size: 20)),
        TextSpan(text: ' ', style: TextStyle(fontSize: 18)),
        TextSpan(
          text: l10n.aboutPageFeedback,
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.primary,
            decoration: TextDecoration.underline,
          ),
          recognizer: _homePageRec
        ),
      ]),
    );
    final thanksText = Text.rich(
      TextSpan(children: [
        TextSpan(text: l10n.aboutPageThanksPrefix),
        TextSpan(
          text: l10n.aboutPageThanksResearch,
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.primary,
            decoration: TextDecoration.underline,
          ),
          recognizer: _paperRec,
        ),
        TextSpan(text: l10n.aboutPageThanksSuffix),
      ]),
      style: TextStyle(fontSize: 18),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.aboutPageTitle),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            logoAndName,
            homePageText,
            const Divider(),
            feedbackText,
            const Divider(),
            Row(spacing: 5, children: [
              Icon(Icons.history, size: 24),
              Text(l10n.aboutPageVersion(_versionName), style: TextStyle(fontSize: 18)),
            ]),
            const Divider(),
            thanksText,
          ],
        ),
      ),
    );
  }
}
