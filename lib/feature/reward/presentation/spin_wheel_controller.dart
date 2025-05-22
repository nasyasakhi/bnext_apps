import 'dart:async';
import 'dart:math';

class SpinWheelController {
  final _controller = StreamController<int>.broadcast();
  Stream<int> get stream => _controller.stream;

  final List<int> rewards;
  int? _lastResult;

  SpinWheelController({required this.rewards});

  void spin() {
    final random = Random();
    final index = random.nextInt(rewards.length);
    _controller.add(index);
    _lastResult = rewards[index];
  }

  int? get lastResult => _lastResult;

  void dispose() {
    _controller.close();
  }
}