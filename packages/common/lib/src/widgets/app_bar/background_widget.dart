part of 'app_bar_widget.dart';

class _BackgroundWidget extends StatelessWidget {
  const _BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imagePath = context.appBarTheme.properties.backgroundImagePath;

    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
    );
  }
}
