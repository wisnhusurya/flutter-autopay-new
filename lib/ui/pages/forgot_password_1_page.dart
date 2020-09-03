part of 'pages.dart';

class ForgotPassword1Page extends StatefulWidget {
  @override
  _ForgotPassword1PageState createState() => _ForgotPassword1PageState();
}

class _ForgotPassword1PageState extends State<ForgotPassword1Page> {
  @override
  void initState() {
    super.initState();
    changeStatusBarColor(mainColor, true);
  }

  @override
  Widget build(BuildContext context) {
    context
        .bloc<ThemeBloc>()
        .add(ChangeTheme(ThemeData().copyWith(primaryColor: mainColor)));
    return WillPopScope(
      onWillPop: () {
        changeStatusBarColor(Colors.transparent, false);
        Get.offAll(LoginPage());
        return;
      },
      child: Scaffold(
          body: ListView(
        children: <Widget>[
          HeaderWidget(
              headerTitle: "LUPA PASSWORD",
              onBackPressed: () {
                changeStatusBarColor(Colors.transparent, false);
                Get.offAll(LoginPage());
              }),
          Container(
            margin: EdgeInsets.only(top: 60, left: 35, right: 35),
            child: Column(
              children: <Widget>[
                Container(
                  height: 46,
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      prefixIcon: Container(
                        width: 14,
                        height: 22,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/ic_phone.png"),
                        )),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      hintText: "Nomor Handphone",
                      hintStyle: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 126),
                  height: 46,
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                      isDense: true,
                      prefixIcon: Container(
                        width: 20,
                        height: 16,
                        margin: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/ic_email.png"),
                        )),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      hintText: "Nomor Handphone",
                      hintStyle: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                ButtonTheme(
                  height: 44,
                  minWidth: double.infinity,
                  child: FlatButton(
                      child: Text(
                        "Verifikasi",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      color: mainColor,
                      onPressed: () {
                        Get.to(ForgotPassword2Page());
                      }),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
