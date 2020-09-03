part of 'pages.dart';

class LoginPage extends StatelessWidget {
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
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: ListView(
                    children: <Widget>[
                      Container(
                        width: 295.97,
                        height: 209,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/logo_autopay_splash.png"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 86.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: Colors.white,
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            child: CountryCodePicker(
                              initialSelection: 'ID',
                              favorite: ['+62', 'ID'],
                              showCountryOnly: false,
                              showOnlyCountryWhenClosed: false,
                              alignLeft: false,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
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
                                  hintText: "Masukkan Nomor Hp",
                                  hintStyle: TextStyle(fontSize: 13),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 40,
                        color: Colors.white,
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            prefixIcon: Container(
                              width: 14,
                              height: 17.5,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("assets/ic_password.png"),
                              )),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye),
                              onPressed: () {},
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(fontSize: 13),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      ButtonTheme(
                        height: 44,
                        minWidth: double.infinity,
                        child: FlatButton(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            color: mainColor,
                            onPressed: () {
                              Get.offAll(MainPage());
                              // context.bloc<PageBloc>().add(GoToLoginPage());
                            }),
                      ),
                      SizedBox(height: 32),
                      GestureDetector(
                        onTap: () {
                          Get.to(ForgotPassword1Page());
                        },
                        child: Text(
                          "Lupa Password ?",
                          style: TextStyle(
                              color: Color(0xFFEB5757),
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(right: 9.0),
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                )),
                          ),
                          Text("Tidak punya akun ?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal)),
                          Expanded(
                            child: new Container(
                                margin: const EdgeInsets.only(left: 9.0),
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(height: 13),
                      ButtonTheme(
                        height: 44,
                        minWidth: double.infinity,
                        child: FlatButton(
                            child: Text(
                              "Daftar Sekarang",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            color: mainColor,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text("Daftar Sekarang"),
                                      content: Text("On Progress"),
                                    );
                                  });
                              // context
                              //     .bloc<PageBloc>()
                              //     .add(GoToSplashPage());
                            }),
                      ),
                      SizedBox(height: 23),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 16.0),
                            width: 18,
                            height: 21,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/ic_need_help.png"),
                                    fit: BoxFit.cover)),
                          ),
                          Text("Butuh bantuan ?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal)),
                        ],
                      )
                    ],
                  ),
                ))));
  }
}
