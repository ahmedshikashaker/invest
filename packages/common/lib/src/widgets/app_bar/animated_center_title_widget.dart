part of 'app_bar_widget.dart';

class _AnimatedCenterTitle extends StatelessWidget {
  final AnimationController animationController;
  final Widget child;

  const _AnimatedCenterTitle({
    Key? key,
    required this.animationController,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: Tween<double>(
        begin: 1.0,
        end: 0.0,
      ).animate(
        CurvedAnimation(
          parent: animationController,
          curve: Curves.easeOutQuint,
        ),
      ),
      child: child,
    );
  }
}
