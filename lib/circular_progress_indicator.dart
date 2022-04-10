part of 'animated_progress_indicator.dart';


class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    this.animationDuration,
    this.percentageTextStyle,
    this.indicatorColor,
    this.indicatorBackgroundColor,
  }) : super(key: key);

  final double percentage;
  final Duration? animationDuration;
  final TextStyle? percentageTextStyle;
  final Color? indicatorColor;
  final Color? indicatorBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return
      AspectRatio(
        aspectRatio: 1,
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage),
          duration: animationDuration ?? defaultDuration,
          builder: (context, double value, child) => Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                value: value,
                color: indicatorColor ?? primaryColor,
                backgroundColor: indicatorBackgroundColor ?? darkColor,
              ),
              Center(
                child: Text(
                  (value * 100).toInt().toString() + "%",
                  style: percentageTextStyle ??
                      Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ],
          ),
        ),
      );
  }
}
