import 'package:flutter/material.dart';
import 'package:motion_ease_tune/l10n/app_localizations.dart';

Future<void> openGuideDialog(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (BuildContext context) {
      return UserGuideDialog();
    }
  );
}

class UserGuideDialog extends StatefulWidget {
  const UserGuideDialog({super.key});

  @override
  State<UserGuideDialog> createState() => _UserGuideDialogState();
}
class _UserGuideDialogState extends State<UserGuideDialog> {
  late PageController _pageController;
  final int _itemCount = 3;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget page1Builder() {
    return Column(
      children: [
        Image.asset(
          'assets/guide/use-before-onset.png',
          fit: BoxFit.contain,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.useBeforeOnsetTitle,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                AppLocalizations.of(context)!.useBeforeOnsetDescription,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final isLastPage = _currentPageIndex == _itemCount - 1;
    final pageView = PageView(
      scrollDirection: Axis.horizontal,
      controller: _pageController,
      onPageChanged: (index) => setState(() => _currentPageIndex = index),
      children: <Widget>[
        _UserGuidePage(
          image: 'assets/guide/use-before-onset.png',
          title: AppLocalizations.of(context)!.useBeforeOnsetTitle,
          description: AppLocalizations.of(context)!.useBeforeOnsetDescription,
        ),
        _UserGuidePage(
          image: 'assets/guide/same-volume-to-ears.png',
          title: AppLocalizations.of(context)!.sameVolumeToEarsTitle,
          description: AppLocalizations.of(context)!.sameVolumeToEarsDescription,
        ),
        _UserGuidePage(
          image: 'assets/guide/listen-for-a-minute.png',
          title: AppLocalizations.of(context)!.listenForAMinuteTitle,
          description: AppLocalizations.of(context)!.listenForAMinuteDescription,
        ),
      ],
    );
    final nextButton = TextButton(
      child: Text(AppLocalizations.of(context)!.nextButton),
      onPressed: () {
        _pageController.nextPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
    );
    final doneButton = TextButton(
      child: Text(AppLocalizations.of(context)!.doneButton),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.userGuideTitle),
          actions: [
            isLastPage
              ? doneButton
              : nextButton,
          ],
        ),
        body: pageView,
      ) ,
    );
  }
}

class _UserGuidePage extends StatelessWidget {
  const _UserGuidePage({
    required this.image,
    required this.title,
    required this.description,
  });

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          fit: BoxFit.contain,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                description,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
