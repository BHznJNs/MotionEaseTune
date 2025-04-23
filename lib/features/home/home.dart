import 'dart:async';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
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
      onPressed: () {
        if (_isPlaying) {
          _soundPlayer.stop();
          stopTimer();
        } else {
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
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              // 
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // 
            },
          ),
        ],
      ),
      body: Column(
        children: [
          SineWave(_isPlaying),
          Expanded(child: Container()),
          progress,
          toggleButton,
          const SizedBox(height: 48),
        ],
      ),
    );
  }
}
