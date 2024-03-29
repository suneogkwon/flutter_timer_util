import 'dart:async';
import 'dart:ui';

class Debouncing {
  Debouncing(this.interval);
  final Duration interval;

  VoidCallback? _action;
  Timer? _timer;

  bool get isActive => _timer?.isActive ?? false;

  void call(VoidCallback action) {
    // Let the latest action override whatever was there before
    _action = action;
    // Always cancel and restart the timer
    _timer?.cancel();
    _timer = Timer(interval, _callAction);
  }

  void _callAction() {
    _action?.call(); // If we have an action queued up, complete it.
    _timer?.cancel();
    _timer = null;
  }

  void reset() {
    _action = null;
    _timer = null;
  }
}
