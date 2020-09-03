part of 'widgets.dart';

class MenuHomeWidget extends StatelessWidget {
  final String menuTitle;
  final String image;
  final double heightBackground;
  final double widthBackground;
  final List<Color> gradient;
  final double borderRadius;
  final double heightImage;
  final double widthImage;
  final Function onTap;

  MenuHomeWidget(
      {@required this.menuTitle,
      @required this.image,
      @required this.heightBackground,
      @required this.widthBackground,
      @required this.gradient,
      @required this.borderRadius,
      @required this.heightImage,
      @required this.widthImage,
      @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: heightBackground,
            width: widthBackground,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-1.0, -4.0),
                  end: Alignment(1.0, 4.0),
                  colors: gradient,
                  stops: [0.0, 0.55],
                ),
                borderRadius: BorderRadius.circular(borderRadius)),
            child: Center(
              child: Container(
                height: heightImage,
                width: widthImage,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            height: 20,
            child: Text(
              menuTitle,
              style: TextStyle(
                fontSize: 10.0,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
