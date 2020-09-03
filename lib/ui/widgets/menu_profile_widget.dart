part of 'widgets.dart';

class MenuProfileWidget extends StatelessWidget {
  final String menuTitle;
  final String menuDesc;
  final String image;
  final Function onTap;

  MenuProfileWidget(
      {@required this.menuTitle,
      @required this.menuDesc,
      @required this.image,
      @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70.0,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color(0xFFEDEDED), width: 1.0))),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 28.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: EdgeInsets.only(right: 41.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    menuTitle,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    menuDesc,
                    style: TextStyle(fontSize: 13.0),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
