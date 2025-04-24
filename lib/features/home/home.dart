import 'dart:async';

import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:real_volume/real_volume.dart';
import 'package:motion_ease_tune/l10n/app_localizations.dart';
import 'package:motion_ease_tune/features/guide.dart';
import 'package:motion_ease_tune/features/home/sine_wave.dart';
import 'package:motion_ease_tune/features/home/sound_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin  {
  late SoundPlayer _soundPlayer;
  int _progress = 0;
  Timer? _timer;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();

    // if is first launch, show guide dialog
    const isFirstLaunchKey = 'is-first-launch';
    SharedPreferences.getInstance().then((prefs) {
      bool? isFirstLaunch = prefs.getBool(isFirstLaunchKey);
      if (isFirstLaunch == null || isFirstLaunch == true) {
        prefs.setBool(isFirstLaunchKey, false);
        if (mounted) openGuideDialog(context);
      }
    });

    _soundPlayer = SoundPlayer(this, 
      playingStateChanged: (value) {
        setState(() => _isPlaying = value);
      },
    );
  }

  @override
  void dispose() {
    _soundPlayer.release();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (timer.tick == 60) {
          timer.cancel();
          _timer = null;
          setState(() => _progress = 0);
          _soundPlayer.stop();
          return;
        }
        setState(() => _progress = timer.tick);
      }
    );
  }
  void stopTimer() {
    if (_timer == null) return;
    setState(() => _progress = 0);
    _timer!.cancel();
    _timer = null;
  }

  @override
  Widget build(BuildContext context) {
    final actions = [
      IconButton(
        icon: const Icon(Icons.help),
        onPressed: () => openGuideDialog(context),
      ),
      IconButton(
        icon: const Icon(Icons.settings),
        onPressed: () {
          // 
        },
      ),
    ];
    final textStyle = TextStyle(
      fontSize: 96,
      fontFamily: 'ComicRelief',
      color: Theme.of(context).colorScheme.primary,
    );
    final text100Hz = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 4,
      children: [
        Text('100', style: textStyle),
        Text('Hz', style: textStyle),
      ]
    );
    final progress = Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: ProgressBar(
        total: Duration(seconds: 60),
        progress: Duration(seconds: _progress),
      ),
    );
    final toggleButton = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        padding: EdgeInsets.all(12),
        elevation: 4,
      ),
      onPressed: () async {
        if (_isPlaying) {
          _soundPlayer.stop();
          stopTimer();
        } else {
          final currentVolume = (await RealVolume.getCurrentVol(StreamType.MUSIC)) ?? 0.0;
          if (currentVolume <= 0.1) {
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(AppLocalizations.of(context)!.pleaseTurnUpVolume),
                ),
              );
            }
            return;
          }
          _soundPlayer.play();
          startTimer();
        }
      },
      child: Icon(
        _isPlaying ? Icons.stop : Icons.play_arrow,
        size: 48,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('MotionEaseTune'),
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: actions,
      ),
      body: Column(
        children: [
          SineWave(_isPlaying),
          Expanded(
            child: Center(
              child: text100Hz,
            )
          ),
          progress,
          toggleButton,
          const SizedBox(height: 48),
        ],
      ),
    );
  }
}
