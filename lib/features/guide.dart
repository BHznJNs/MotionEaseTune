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
    final l10n = AppLocalizations.of(context)!;
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
                l10n.useBeforeOnsetTitle,
                style: TextStyle(fontSize: 24),
              ),
              Text(
                l10n.useBeforeOnsetDescription,
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
    final l10n = AppLocalizations.of(context)!;
    final isLastPage = _currentPageIndex == _itemCount - 1;
    final pageView = PageView(
      scrollDirection: Axis.horizontal,
      controller: _pageController,
      onPageChanged: (index) => setState(() => _currentPageIndex = index),
      children: [
        _UserGuidePage(
          image: 'assets/guide/use-before-onset.png',
          title: l10n.useBeforeOnsetTitle,
          description: l10n.useBeforeOnsetDescription,
        ),
        _UserGuidePage(
          image: 'assets/guide/same-volume-to-ears.png',
          title: l10n.sameVolumeToEarsTitle,
          description: l10n.sameVolumeToEarsDescription,
        ),
        _UserGuidePage(
          image: 'assets/guide/listen-for-a-minute.png',
          title: l10n.listenForAMinuteTitle,
          description: l10n.listenForAMinuteDescription,
        ),
      ],
    );
    final nextButton = TextButton(
      child: Text(l10n.nextButton),
      onPressed: () {
        _pageController.nextPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      },
    );
    final doneButton = TextButton(
      child: Text(l10n.doneButton),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.userGuideTitle),
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
    final imageAsset = Image.asset(
      image,
      fit: BoxFit.contain,
    );
    final titleWidget = Text(
      title,
      style: TextStyle(fontSize: 24),
    );
    final descriptionWidget = Text(
      description,
      style: TextStyle(fontSize: 16),
    );
    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight;
        final availableWidth = constraints.maxWidth;
        final shouldOverlayText = availableHeight < ((availableWidth * (4 / 3)) + 72);
        if (shouldOverlayText) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: imageAsset,
              ),
              Container(
                width: double.infinity,
                color: Theme.of(context).cardColor.withAlpha(210),
                padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    titleWidget,
                    descriptionWidget,
                  ],
                ),
              ),
            ],
          );
        } else {
          return Column(
            children: [
              imageAsset,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    titleWidget,
                    descriptionWidget,
                  ],
                ),
              ),
            ],
          );
        }
      }
    );
  }
}
