part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    changeStatusBarColor(mainColor, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bg_home.png"),
                        fit: BoxFit.fill)),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 27, left: 8, bottom: 7),
                        height: 75,
                        width: 107,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/logo_autopay_white.png"),
                                fit: BoxFit.fill)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 48, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Saldo Autopay Kamu",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            ),
                            Text(
                              "Rp 565.900",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, bottom: 24, right: 30),
                    height: 81,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: accentColor1,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 10.0,
                            offset:
                                Offset(0.0, 5.0) // changes position of shadow
                            ),
                      ],
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 6, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //TOP UP MENU
                          MenuHomeWidget(
                              onTap: () {},
                              menuTitle: "Top Up",
                              image: "assets/ic_top_up.png",
                              heightBackground: 49.34,
                              widthBackground: 49.34,
                              gradient: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
                              borderRadius: 49.34 / 2,
                              heightImage: 30,
                              widthImage: 30),
                          //TRANSFER MENU
                          MenuHomeWidget(
                              onTap: () {},
                              menuTitle: "Transfer",
                              image: "assets/ic_transfer.png",
                              heightBackground: 49.34,
                              widthBackground: 49.34,
                              gradient: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
                              borderRadius: 49.34 / 2,
                              heightImage: 32,
                              widthImage: 32),
                          //QR Code MENU
                          MenuHomeWidget(
                              onTap: () {},
                              menuTitle: "QR Code",
                              image: "assets/ic_qr_code.png",
                              heightBackground: 49.34,
                              widthBackground: 49.34,
                              gradient: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
                              borderRadius: 49.34 / 2,
                              heightImage: 27,
                              widthImage: 27),
                          //SHARE MENU
                          MenuHomeWidget(
                              onTap: () {},
                              menuTitle: "Share",
                              image: "assets/ic_share.png",
                              heightBackground: 49.34,
                              widthBackground: 49.34,
                              gradient: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
                              borderRadius: 49.34 / 2,
                              heightImage: 32,
                              widthImage: 32),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 50, bottom: 9, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Menu Pulsa
                MenuHomeWidget(
                    onTap: () {},
                    menuTitle: "Pulsa",
                    image: "assets/ic_pulsa.png",
                    heightBackground: 43.0,
                    widthBackground: 43.0,
                    gradient: [Color(0xFF2C2F4E), Color(0xFFFFFFFF)],
                    borderRadius: 43.0 / 2,
                    heightImage: 24,
                    widthImage: 24),
                // Menu Paket Data
                MenuHomeWidget(
                    onTap: () {},
                    menuTitle: "Paket Data",
                    image: "assets/ic_paket_data.png",
                    heightBackground: 43.0,
                    widthBackground: 43.0,
                    gradient: [Color(0xFFED063D), Color(0xFFFFFFFF)],
                    borderRadius: 43.0 / 2,
                    heightImage: 25,
                    widthImage: 25),
                // Menu Banking
                MenuHomeWidget(
                    onTap: () {},
                    menuTitle: "Banking",
                    image: "assets/ic_banking.png",
                    heightBackground: 43.0,
                    widthBackground: 43.0,
                    gradient: [Color(0xFF16A36D), Color(0xFFFFFFFF)],
                    borderRadius: 43.0 / 2,
                    heightImage: 23,
                    widthImage: 24),
                // Menu PLN
                MenuHomeWidget(
                    onTap: () {},
                    menuTitle: "PLN",
                    image: "assets/ic_pln.png",
                    heightBackground: 43.0,
                    widthBackground: 43.0,
                    gradient: [Color(0xFFE07000), Color(0xFFFFFFFF)],
                    borderRadius: 43.0 / 2,
                    heightImage: 25,
                    widthImage: 25),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 50, bottom: 29, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Menu Pulsa
                MenuHomeWidget(
                    onTap: () {},
                    menuTitle: "Air",
                    image: "assets/ic_air.png",
                    heightBackground: 43.0,
                    widthBackground: 43.0,
                    gradient: [Color(0xFF75B1F2), Color(0xFFFFFFFF)],
                    borderRadius: 43.0 / 2,
                    heightImage: 25,
                    widthImage: 23),
                // Menu Paket Data
                MenuHomeWidget(
                    onTap: () {},
                    menuTitle: "BPJS",
                    image: "assets/ic_bpjs.png",
                    heightBackground: 43.0,
                    widthBackground: 43.0,
                    gradient: [Color(0xFF726D0A), Color(0xFFFFFFFF)],
                    borderRadius: 43.0 / 2,
                    heightImage: 24,
                    widthImage: 24),
                // Menu Banking
                MenuHomeWidget(
                    onTap: () {},
                    menuTitle: "Gopay",
                    image: "assets/ic_gopay.png",
                    heightBackground: 43.0,
                    widthBackground: 43.0,
                    gradient: [Color(0xFF089B39), Color(0xFFFFFFFF)],
                    borderRadius: 43.0 / 2,
                    heightImage: 24,
                    widthImage: 24),
                // Menu PLN
                MenuHomeWidget(
                    onTap: () {
                      Get.to(OtherPage());
                    },
                    menuTitle: "Lainnya",
                    image: "assets/ic_lainnya.png",
                    heightBackground: 43.0,
                    widthBackground: 43.0,
                    gradient: [Color(0xFF2573D7), Color(0xFFFFFFFF)],
                    borderRadius: 43.0 / 2,
                    heightImage: 15,
                    widthImage: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
