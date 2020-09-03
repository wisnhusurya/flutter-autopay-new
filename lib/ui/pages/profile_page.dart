part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 241.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bg_profile.png"),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 34.0, bottom: 16.0),
                        child: Text(
                          "MY PROFILE",
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        )),
                    Container(
                      height: 93.0,
                      width: 93.0,
                      margin: EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(11.0)),
                        // image: DecorationImage(
                        //     image: AssetImage("assets/bg_home.png"),
                        //     fit: BoxFit.cover)
                      ),
                    ),
                    Text(
                      "NAMA USER",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: CustomPaint(
                    size: Size(23.0, 23.0),
                    painter: DrawTriangleShape(),
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 49,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFFF0000),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Member",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white),
                ),
                Text(
                  "( 25713 )",
                  style: TextStyle(fontSize: 13.0, color: Colors.white),
                )
              ],
            ),
          ),
          MenuProfileWidget(
              menuTitle: "Akun",
              menuDesc: "Atur pengaturan akun Anda disini",
              image: "assets/ic_akun.png",
              onTap: () {}),
          MenuProfileWidget(
              menuTitle: "Upgrade Member",
              menuDesc: "Dapatkan keuntungan lebih disini",
              image: "assets/ic_upgrade_member.png",
              onTap: () {}),
          MenuProfileWidget(
              menuTitle: "Tentang Autopay",
              menuDesc: "Lihat semua informasi lainnya disini",
              image: "assets/ic_tentang_autopay.png",
              onTap: () {}),
          MenuProfileWidget(
              menuTitle: "Syarat & Ketentuan",
              menuDesc: "Lihat syarat & ketentuan disini",
              image: "assets/ic_syarat_ketentuan.png",
              onTap: () {}),
          MenuProfileWidget(
              menuTitle: "Kebijakan Privasi",
              menuDesc: "Semua tentang kebijakan privasi ",
              image: "assets/ic_kebijakan_privasi.png",
              onTap: () {}),
          MenuProfileWidget(
              menuTitle: "Keluhan Pelanggan",
              menuDesc: "Sampaikan kritik dan saran Anda",
              image: "assets/ic_keluhan_pelanggan.png",
              onTap: () {}),
          MenuProfileWidget(
              menuTitle: "F.A.Q",
              menuDesc: "Sampaikan kritik dan saran Anda",
              image: "assets/ic_faq.png",
              onTap: () {}),
          Container(
            height: 22.0,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFF0F0F0),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 28.0),
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 20.0,
                      width: 20.0,
                      margin: EdgeInsets.only(right: 41.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/ic_keluar_akun.png")))),
                  Text(
                    "Keluar Akun",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}

class DrawTriangleShape extends CustomPainter {
  Paint painter;

  DrawTriangleShape() {
    painter = Paint()
      ..color = Color(0xFFFF0000)
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();

    path.moveTo(size.width / 2, size.width / 2);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
