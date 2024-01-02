import 'package:flutter_timer_util/src/debouncing.dart';
import 'package:flutter_timer_util/src/repeater.dart';
import 'package:flutter_timer_util/src/throttling.dart';

abstract class FlutterTimerUtil {
  static Debouncing debouncing({
    required Duration interval,
    void Function()? callback,
  }) {
    final debouncing = Debouncing(
      interval,
    );

    if (callback != null) {
      debouncing.call(callback);
    }

    return debouncing;
  }

  static Repeater repeater({
    required Duration interval,
    void Function()? callback,
  }) {
    final repeater = Repeater(
      interval,
    );

    if (callback != null) {
      repeater.call(callback);
    }

    return repeater;
  }

  static Throttling throttling({
    required Duration interval,
    void Function()? callback,
  }) {
    final throttling = Throttling(
      interval,
    );

    if (callback != null) {
      throttling.call(callback);
    }

    return throttling;
  }
}
