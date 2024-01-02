<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A various timer utility package for debounce, throttle, repeat.
## Features

* Debouncing
* Repeater
* Throttling

## Getting started

In the dependencies: section of your pubspec.yaml, add the following line:
```
dependencies:
  flutter_timer_util: <latest_version>
```

## Usage


```dart
// create debouncing
final debouncing = FlutterTimerUtil.debouncing(
    interval: Duration(seconds: 1)
);

// set callback
// The callback method is executed after the call has been invoked, following the specified time duration, [inteval].
debouncing.call(() {
  print('print after 1 seconds');
});
```
