import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class LoginTextAnim extends StatelessWidget {
  final String headingText;
  // int _speed = 50;

  LoginTextAnim({this.headingText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      child: TyperAnimatedTextKit(
          onTap: () {
            print("Tap Event");
          },
          text: [headingText],
          speed: Duration(milliseconds: 1000),
          textStyle: TextStyle(
              fontSize: 30.0,
              fontFamily: "KaushanScript-Regular"
          ),
          textAlign: TextAlign.center,
          alignment: AlignmentDirectional.topStart // or Alignment.topLeft

      ),
    );
  }
}

// SizedBox(
// width: 220.0,
// child: TextLiquidFill(
// loadDuration: Duration(seconds: 20),
// boxBackgroundColor: Colors.black87,
// text: headingText,
// waveColor: Colors.white,
// textStyle: TextStyle(
// fontFamily: 'KaushanScript-Regular',
// fontSize: 30.0,
// fontWeight: FontWeight.bold,
// ),
// boxHeight: 80.0,
// ),
// );