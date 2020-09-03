part of 'widgets.dart';

class HeaderWidget extends StatelessWidget {
  final String headerTitle;
  final Function onBackPressed;

  HeaderWidget({@required this.headerTitle, @required this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 132,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg_header_other.png"),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          top: 31,
          left: 23,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  onBackPressed();
                },
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/ic_back_white.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text(headerTitle,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal)),
            ],
          ),
        ),
      ],
    );
  }
}
