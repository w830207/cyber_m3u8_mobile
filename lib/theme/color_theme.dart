part of 'app_theme.dart';

abstract class ColorTheme {
  static const Color c01 = Color(0xFFFF00FF);
  static const Color c02 = Color(0xFF13B5F6);

  static const Gradient gc1 = LinearGradient(
    colors: [
      Color(0xFFC03083),
      Color(0xFF401D6D),
    ],
    begin: FractionalOffset(0.091, 0.464),
    end: FractionalOffset(0.845, 0.459),
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  );

  static const Gradient gc2 = RadialGradient(
    center: Alignment.topLeft,
    radius: 1.5,
    colors: [
      Color(0xFFC03083),
      Color(0xFF401D6D),
    ],
  );

  static const Gradient gc3 = RadialGradient(
    center: Alignment.topLeft,
    radius: 2.7,
    colors: [
      Color(0xFFDF4A64),
      Color(0xFF2791E6),
    ],
  );

  static const Gradient gc4 = RadialGradient(
    center: Alignment.topLeft,
    radius: 2.7,
    colors: [
      Color(0xFFF89300),
      Colors.black,
    ],
  );
}
