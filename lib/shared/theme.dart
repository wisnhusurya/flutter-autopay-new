part of 'shared.dart';

const double defaultMargin = 24;

Color mainColor = Color(0xFF2573D7);
Color accentColor1 = Color(0xFFBCCDE2);
Color accentColor2 = Color(0xFFFBD460);
Color accentColor3 = Color(0xFFADADAD);
Color accentColor4 = Color(0xFFF72585);

changeStatusBarColor(Color color, bool isColor) async {
  try {
    await FlutterStatusbarcolor.setStatusBarColor(color, animate: true);
    if (isColor) {
      if (useWhiteForeground(color)) {
        FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
        FlutterStatusbarcolor.setNavigationBarWhiteForeground(true);
      }
    } else {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
      FlutterStatusbarcolor.setNavigationBarWhiteForeground(false);
    }
  } on PlatformException catch (e) {
    debugPrint(e.toString());
  }
}
