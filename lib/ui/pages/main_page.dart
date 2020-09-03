part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int bottomNavBarIndex = 0;

  void _selectedTab(int index) {
    setState(() {
      bottomNavBarIndex = index;
    });
  }

  Widget displayPage(int index) {
    if (index == 0) {
      return HomePage();
    } else if (index == 1) {
      return HistoryPage();
    } else if (index == 2) {
      return NotifPage();
    } else if (index == 3) {
      return ProfilePage();
    }
    return HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [displayPage(bottomNavBarIndex)],
      ),
      bottomNavigationBar: BottomNavBar(
        centerItemText: 'Bayar',
        color: Colors.grey,
        selectedColor: mainColor,
        onTabSelected: _selectedTab,
        items: [
          BottomNavItem(
              iconActive: "assets/ic_home_disabled.png",
              iconDisabled: "assets/ic_home_disabled.png",
              text: 'Home'),
          BottomNavItem(
              iconActive: "assets/ic_riwayat_disabled.png",
              iconDisabled: "assets/ic_riwayat_disabled.png",
              text: 'Riwayat'),
          BottomNavItem(
              iconActive: "assets/ic_notif_disabled.png",
              iconDisabled: "assets/ic_notif_disabled.png",
              text: 'Notif'),
          BottomNavItem(
              iconActive: "assets/ic_profile_disabled.png",
              iconDisabled: "assets/ic_profile_disabled.png",
              text: 'Profile'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black.withOpacity(0.5),
                spreadRadius: -9,
                offset: Offset(0, -7),
              )
            ],
          ),
          child: CircleAvatar(
            radius: 37.5,
            backgroundColor: Colors.white,
            child: Container(
              height: 59.0,
              width: 59.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-1.0, -4.0),
                    end: Alignment(1.0, 4.0),
                    colors: [Color(0xFF2573D7), Color(0xFF143C70)],
                    stops: [0.5, 0.75],
                    // 0xFF143C70
                  ),
                  borderRadius: BorderRadius.circular(75 / 2)),
              child: Center(
                child: Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/ic_bayar.png"))),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
