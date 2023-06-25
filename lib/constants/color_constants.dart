import 'package:flutter/material.dart';

class ColorConstants {
  static const Color linwaysBlue = Color(0xff2282c8);
  static const Color primaryBlue = Color(0xff283593);
  static const Color lighterPrimaryBlue = Color(0xffb39ddb);
  static const Color lightPrimaryBlue = Color(0xff7e57c2);
  static const Color lightestPrimaryBlue = Color(0xffd1c4e9);
  static const Color lightestPrimaryBlueBackround = Color(0xffede7f6);
  static const Color lightestPrimaryBlueBackround2 = Color(0xfff4f3f8);

  static const Color lightThemeMutedScaffoldColor = Color(0xFFF8F8F8);
  static const Color darkThemeMutedScaffoldColor = Color(0xFF404042);

  //TEXT COLORS - DEFINE TEXT COLORS HERE
  static const Color darkThemeHintColor = Color(0xffadadad);
  static const Color darkThemeLightHintColor = Color(0xff767676);
  static const Color darkThemeLighterHintColor = Color(0xff5b5a5a);
  static const Color lightThemeHintColor = Color(0xff808080);
  static const Color lightThemeLightHintColor = Color(0xffbfbebe);
  static const Color lightThemeLighterHintColor = Color(0xffd7d5d5);
  static const Color dangerColor = Colors.red;
  static const Color successColor = Colors.green;
  static const Color infoColor = Color(0xFF2042EF);

  static Color getMutedScaffoldColor(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark
        ? darkThemeMutedScaffoldColor
        : lightThemeMutedScaffoldColor;
  }

  static Color getHintColor(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark
        ? darkThemeHintColor
        : lightThemeHintColor;
  }

  static Color getNormalTextColor(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark
        ? Colors.white
        : primarySwatchColor.shade400;
  }

  static Color getLightHintColor(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark
        ? darkThemeLightHintColor
        : lightThemeLightHintColor;
  }

  static Color getLighterHintColor(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark
        ? darkThemeLighterHintColor
        : lightThemeLighterHintColor;
  }

  //Colorful AvatarColors
  static List<List<Color>> lightThemeRandomAvatarColorFul_old = [
    [const Color(0xfff6dddd), const Color(0xffb93131)],
    [const Color(0xffead1bf), const Color(0xffa06135)],
    [const Color(0xffbddde1), const Color(0xff41868e)],
    [const Color(0xffb3e5fc), const Color(0xff0774a6)],
    [const Color(0xffe2d5e7), const Color(0xff7c518d)],
    [const Color(0xffece9d2), const Color(0xff9d9242)],
    [const Color(0xffd2e8d3), const Color(0xff4b924e)],
    [const Color(0xffecebeb), const Color(0xff797373)],
    [const Color(0xffeadbe3), const Color(0xff8f5373)],
  ];

  static List<List<Color>> lightThemeRandomAvatarColorful = [
    [const Color(0xfff9d9fe), const Color(0xfff2abfd), const Color(0xffc706e5)],
    [const Color(0xffd1d2fa), const Color(0xffa8aaf5), const Color(0xff161bcf)],
    [const Color(0xffead1bf), const Color(0xffdfba9f), const Color(0xffa06135)],
    [const Color(0xffbddde1), const Color(0xffa1ced4), const Color(0xff41868e)],
    [const Color(0xffb3e5fc), const Color(0xff89d7fa), const Color(0xff0774a6)],
    [const Color(0xffe2d5e7), const Color(0xffceb9d7), const Color(0xff7c518d)],
    [const Color(0xffece9d2), const Color(0xffdfdab3), const Color(0xff9d9242)],
    [const Color(0xffd2e8d3), const Color(0xffb5d9b6), const Color(0xff4b924e)],
    [const Color(0xffecebeb), const Color(0xffd5d3d3), const Color(0xff797373)],
    [const Color(0xffe0f0fd), const Color(0xffb3dafa), const Color(0xff0e82e0)],
    [const Color(0xffeadbe3), const Color(0xffd9becd), const Color(0xff8f5373)],
  ];

  static List<List<Color>> darkThemeRandomAvatarColorful = [
    [
      const Color(0xff8f3535),
      const Color(0xffa63d3d),
      const Color(0xffdda3a3),
    ],
    [
      const Color(0xff8a4e25),
      const Color(0xffa45d2c),
      const Color(0xffe3b595),
    ],
    [
      const Color(0xff2f6f77),
      const Color(0xff398690),
      const Color(0xff9cd1d8),
    ],
    [
      const Color(0xff613273),
      const Color(0xff613273),
      const Color(0xffc69fd5),
    ],
    [
      const Color(0xff7c7439),
      const Color(0xff938943),
      const Color(0xffd6d0a5),
    ],
    [
      const Color(0xff3a673c),
      const Color(0xff477d49),
      const Color(0xffa6cda7),
    ],
    [
      const Color(0xff777777),
      const Color(0xff858585),
      const Color(0xffc9c9c9),
    ],
    [
      const Color(0xff75425d),
      const Color(0xff8a4e6e),
      const Color(0xffd0abbf),
    ],
  ];

  //primary color AvatarColors (single color)
  static List<List<Color>> lightThemeRandomAvatarColorsDefault = [
    [primaryBlue, Colors.white, Colors.white],
    [primaryBlue, Colors.white, const Color(0xffffffff)],
    [primaryBlue, Colors.white, const Color(0xffffffff)],
    [primaryBlue, Colors.white, const Color(0xffffffff)],
    [primaryBlue, Colors.white, const Color(0xffffffff)],
    [primaryBlue, Colors.white, const Color(0xffffffff)],
    [primaryBlue, Colors.white, const Color(0xffffffff)],
    [primaryBlue, Colors.white, const Color(0xffffffff)],
  ];

  static List<List<Color>> darkThemeRandomAvatarColorsDefault = [
    [Colors.black, ColorConstants.darkThemeLighterHintColor, Colors.white],
    [Colors.black, ColorConstants.darkThemeLighterHintColor, Colors.white],
    [Colors.black, ColorConstants.darkThemeLighterHintColor, Colors.white],
    [Colors.black, ColorConstants.darkThemeLighterHintColor, Colors.white],
    [Colors.black, ColorConstants.darkThemeLighterHintColor, Colors.white],
    [Colors.black, ColorConstants.darkThemeLighterHintColor, Colors.white],
    [Colors.black, ColorConstants.darkThemeLighterHintColor, Colors.white],
    [Colors.black, ColorConstants.darkThemeLighterHintColor, Colors.white],
  ];

  //Bright colored AvatarColors
  static List<List<Color>> lightThemeRandomAvatarBrightColors = [
    [const Color(0xff017afe), const Color(0xffffffff)],
    [const Color(0xfffec700), const Color(0xffffffff)],
    [const Color(0xff0aac9f), const Color(0xffffffff)],
    [const Color(0xff017afe), const Color(0xffffffff)],
    [const Color(0xff4cd662), const Color(0xffffffff)],
    [const Color(0xfffe3d31), const Color(0xffffffff)],
    [const Color(0xff34c759), const Color(0xffffffff)],
    [const Color(0xfffe2d55), const Color(0xffffffff)],
  ];

  static List<List<Color>> darkThemeRandomAvatarBrightColors =
      lightThemeRandomAvatarBrightColors;

  static List<List<Color>> lightThemeRandomAvatarColors =
      lightThemeRandomAvatarColorsDefault;
  static List<List<Color>> darkThemeRandomAvatarColors =
      darkThemeRandomAvatarColorsDefault;

  static const MaterialColor primarySwatchColor = MaterialColor(0xff283593, {
    50: Color(0xffe8eaf6),
    100: Color(0xff9fa8da),
    200: Color(0xff7986cb),
    300: Color(0xff3f51b5),
    400: Color(0xff303f9f),
    500: Color(0xff283593),
    600: Color(0xff1a237e),
    700: Color(0xff151c66),
    800: Color(0xff10154f),
    900: Color(0xff0b0e38)
  });
}
