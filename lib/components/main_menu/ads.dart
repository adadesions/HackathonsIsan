import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/widgets.dart';

class Ads extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth,
      height: screenHeight*0.3,
        child: Carousel(
          boxFit: BoxFit.fill,
          animationCurve: Curves.fastOutSlowIn,
          dotSize: 5,
          images: [
            ExactAssetImage("assets/images/ads_cow-1.png"),
            ExactAssetImage("assets/images/ads_cow-2.png"),
            ExactAssetImage("assets/images/ads_cow-3.png"),
          ],
        ));
  }
}
