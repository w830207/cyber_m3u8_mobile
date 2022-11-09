part of 'app_theme.dart';

abstract class FontTheme {
  static TextStyle get w01 => TextStyle(
        fontSize: 300.sp,
        color: Colors.white,
        shadows: const [
          Shadow(
            blurRadius: 50.0,
            color: Colors.white,
            offset: Offset(0, 0),
          ),
        ],
      );

  static TextStyle get w02 => TextStyle(
        fontSize: 120.sp,
        color: Colors.white,
        shadows: const [
          Shadow(
            blurRadius: 50.0,
            color: Colors.white,
            offset: Offset(0, 0),
          ),
        ],
      );
}
