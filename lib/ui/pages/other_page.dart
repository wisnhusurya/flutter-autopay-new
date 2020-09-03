part of "pages.dart";

class OtherPage extends StatefulWidget {
  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Get.back();
          return;
        },
        child: Scaffold(
          body: ListView(
            children: [
              HeaderWidget(
                  headerTitle: "MENU LAINNYA",
                  onBackPressed: () {
                    Get.back();
                  })
            ],
          ),
        ));
  }
}
