part of 'pages.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [HeaderWidget(headerTitle: "RIWAYAT", onBackPressed: () {})],
      ),
    );
  }
}
