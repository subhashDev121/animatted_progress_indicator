part of 'animated_progress_indicator.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
    this.percentageTextStyle,
    this.labelStyle,
    this.animationDuration,
    this.indicatorColor,
    this.indicatorBackgroundColor,
  }) : super(key: key);

  final double percentage;
  final String label;

  final Duration? animationDuration;
  final TextStyle? percentageTextStyle;
  final TextStyle? labelStyle;
  final Color? indicatorColor;
  final Color? indicatorBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: animationDuration ?? defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: labelStyle ??
                      Theme.of(context).textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text((value * 100).toInt().toString() + "%",
                  style: percentageTextStyle
                      ??
                      Theme.of(context).textTheme.subtitle2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const SizedBox(height: defaultPadding / 2),
            LinearProgressIndicator(
              value: value,
              color: indicatorColor ?? primaryColor,
              backgroundColor: indicatorBackgroundColor ?? darkColor,
            ),
          ],
        ),
      ),
    );
  }
}