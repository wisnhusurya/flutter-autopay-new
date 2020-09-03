part of 'pages.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
    changeStatusBarColor(Colors.transparent, false);
  }

  startSplashScreen() {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Get.off(WalkthroughPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bg_splash.png"),
                        fit: BoxFit.cover)),
                child: Center(
                    child: Container(
                  width: 295.97,
                  height: 209,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo_autopay_splash.png"),
                          fit: BoxFit.cover)),
                )))));
  }
}
