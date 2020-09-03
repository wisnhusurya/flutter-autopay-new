part of 'pages.dart';

class ForgotPassword3Page extends StatefulWidget {
  @override
  _ForgotPassword3PageState createState() => _ForgotPassword3PageState();
}

class _ForgotPassword3PageState extends State<ForgotPassword3Page> {
  var onTapRecognizer;

  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  StreamController<ErrorAnimationType> errorController;

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.off(ForgotPassword2Page());
        return;
      },
      child: Scaffold(
          key: scaffoldKey,
          body: ListView(
            children: <Widget>[
              HeaderWidget(
                  headerTitle: "VERIFIKASI",
                  onBackPressed: () => Get.off(ForgotPassword2Page())),
              Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 35.0),
                width: 173,
                height: 137,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/il_verification.png"),
                        fit: BoxFit.contain)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 65,
                    width: 45,
                    margin: EdgeInsets.only(right: 16.0),
                    color: Colors.white,
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        hintText: "-",
                        hintStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 45,
                    margin: EdgeInsets.only(right: 16.0),
                    color: Colors.white,
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        hintText: "-",
                        hintStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 45,
                    margin: EdgeInsets.only(right: 16.0),
                    color: Colors.white,
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        hintText: "-",
                        hintStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 45,
                    margin: EdgeInsets.only(right: 16.0),
                    color: Colors.white,
                    child: TextFormField(
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        hintText: "-",
                        hintStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                      ],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 27,
              ),
              Text(
                "Masukan kode verifikasi yang telah\ndikirimkan melalui SMS ke nomor\nhandphone anda.",
                style: TextStyle(
                    color: Color(0xFFEB5757),
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                margin: EdgeInsets.only(left: 35, right: 35),
                child: Column(
                  children: <Widget>[
                    ButtonTheme(
                      height: 44,
                      minWidth: double.infinity,
                      child: FlatButton(
                          child: Text(
                            "Verifikasi",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          color: mainColor,
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    child: Container(
                                      height: 357,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 10.0, bottom: 35.0),
                                              width: 244,
                                              height: 175,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          "assets/il_dialog_verification_success.png"),
                                                      fit: BoxFit.contain)),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "Verifikasi Berhasil",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              "Silahkan login kembali",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(top: 15.0),
                                              width: 194.0,
                                              child: RaisedButton(
                                                onPressed: () {
                                                  Get.offAll(LoginPage());
                                                },
                                                child: Text(
                                                  "Lanjutkan",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white),
                                                ),
                                                color: mainColor,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
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
