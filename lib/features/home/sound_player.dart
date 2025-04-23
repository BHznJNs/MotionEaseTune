import 'package:flutter/material.dart';
import 'package:sound_generator/sound_generator.dart';
import 'package:sound_generator/waveTypes.dart';

class SoundPlayer {
  static const waveType = waveTypes.SINUSOIDAL;
  static const frequency = 100.0; // Frequency in Hz
  static const balance = 0.0;
  static const sampleRate = 192000;

  late AnimationController _volumeController;
  late double _targetVolume;
  set targetVolume(double value) => _targetVolume = value;

  SoundPlayer(TickerProvider tickerProvider, {
    double targetVolume = 1.0,
    Function(bool)? playingStateChanged,
  }) {
    _targetVolume = targetVolume;

    _volumeController = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: tickerProvider,
    );
    _volumeController.addListener(() {
      SoundGenerator.setVolume(_volumeController.value * _targetVolume);
    });

    SoundGenerator.init(sampleRate);
    SoundGenerator.onIsPlayingChanged.listen(playingStateChanged);

    SoundGenerator.setWaveType(waveType);
    SoundGenerator.setBalance(balance);
    SoundGenerator.setVolume(1.0);
    SoundGenerator.setFrequency(frequency);
    SoundGenerator.setAutoUpdateOneCycleSample(true);
    SoundGenerator.refreshOneCycleData();
  }

  play() {
    SoundGenerator.play();
    _volumeController.forward(from: _volumeController.value);
  }

  stop() {
    _volumeController.reverse(from: _targetVolume).then((_) {
      SoundGenerator.stop();
    });
  }

  release() {
    SoundGenerator.release();
    _volumeController.dispose();
  }
}