## Flutter AnimatedProgressIndicator

This animated  [Flutter](https://flutter.io) widget package aims to show an animation progress indicator in reactive style. It also supports both circular and linear .

![AnimatedProgressIndicator](https://user-images.githubusercontent.com/93323979/162623716-0e3cdebb-ff91-4292-9cd6-2e286437b24c.gif)


### Flutter install package

flutter packages get
```
cd example
flutter clean
flutter run
```
Hot restart app with "R" to replay the animation

To run the full example app:
```
cd example
mv lib/main.dart tmp && mv lib/main.dart.bk lib/main.dart && mv tmp lib/main.dart.bk
flutter clean
flutter run
```

### Getting Started

In order to use this package, do import
```dart
import 'package:animated_progress_indicator/animated_progress_indicator.dart';
```

Basic implementation can be done like below code:
```dart
import 'package:flutter/widgets.dart';
import 'package:animated_progress_indicator/animated_progress_indicator.dart';

Container(
alignment: Alignment.center,
margin: const EdgeInsets.all(10),
child: AnimatedLinearProgressIndicator(
  percentage: _percentage,
  animationDuration: const Duration(
    seconds: 1,
  ),
  label: 'Dart',
),)
```

### Example App
You can find more examples from [Example App](example)


### Objects
```dart
  AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
    this.percentageTextStyle,
    this.labelStyle,
    this.animationDuration,
    this.indicatorColor,
    this.indicatorBackgroundColor,
  }) : super(key: key);

  const AnimatedCircularProgressIndicator({
      Key? key,
      required this.percentage,
      this.animationDuration,
      this.percentageTextStyle,
      this.indicatorColor,
      this.indicatorBackgroundColor,
   }) : super(key: key);

 ```


### Feedback

Feel free to [leave any feedback](https://github.com/ltdangkhoa/Flutter-Animation-Progress-Bar/issues) for helping support this package 🍻 

[![Buy Me A Coffee](https://bmc-cdn.nyc3.digitaloceanspaces.com/BMC-button-images/custom_images/orange_img.png "Buy Me A Coffee")](https://www.buymeacoffee.com/13f742 "Buy Me A Coffee")
