import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_sinusoidals_v2/flutter_sinusoidals_v2.dart';

class SineWave extends StatefulWidget {
  const SineWave(this.isPlaying, {super.key});

  final bool isPlaying;

  @override
  State createState() => _SineWaveState();
}

class _SineWaveState extends State<SineWave> with SingleTickerProviderStateMixin {
  late AnimationController _transitionController;
  final _targetAmplitude = 30.0;
  final _targetContainerHeight = 120.0;
  double _amplitude = 0.0;
  double _containerHeight = 40.0;

  @override
  void initState() {
    super.initState();
    _transitionController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _transitionController.addListener(() {
      setState(() {
        _amplitude = _targetAmplitude * _transitionController.value;
        _containerHeight = max(
          40.0,
          _targetContainerHeight * _transitionController.value
        );
      });
    });
  }

  @override
  void dispose() {
    _transitionController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant SineWave oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isPlaying == oldWidget.isPlaying) return;
    if (widget.isPlaying) {
      _transitionController.forward(from: 0.0);
    } else {
      _transitionController.reverse(from: 1.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Sinusoidal(
      reverse: true,
      model: SinusoidalModel(
        formular: WaveFormular.normal,
        amplitude: _amplitude,
        waves: 4,
        frequency: 1,
      ),
      child: Container(
        height: _containerHeight,
        color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
      ),
    );
  }
}
