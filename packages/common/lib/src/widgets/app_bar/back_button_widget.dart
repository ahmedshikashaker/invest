part of 'app_bar_widget.dart';

class _BackButtonWidget extends StatelessWidget {
  const _BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return InkWell(
      onTap: () => context.router.stack.isNotEmpty
          ? context.router.maybePop()
          : context.router.root.maybePop(),
      child: AppIcon(
        icon: Assets.icons.arrowBack,
        matchTextDirection: true,
        color: theme.colors.textReversed,
      ),
    );
  }
}
