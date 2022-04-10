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


### Find more about me 
https://subhashdev121.github.io/subhash/#/
## Feedback 
https://in.linkedin.com/in/subhash-chandra-shukla-8293391a6?challengeId=AQEn4iCEuQGgdgAAAX_brevg1iEUjqtVX9rv-nbxW2OLa9MUrpmVdLZOuzPMmy0ybgOkkmA1GBzxM9ZkemYo6wRIYe_Amp7m6w&submissionId=37234d83-ca35-e116-08f6-4bb49f153d78

https://github.com/subhashDev11
