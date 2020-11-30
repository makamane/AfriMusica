import 'package:flutter/material.dart';
import 'package:AfriMusica/utils/constants.dart';

class CustomFlatButton extends StatelessWidget {
  final Function onPressed;
  final String title;

  CustomFlatButton({@required this.onPressed, this.title});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: kTextStyle,
      ),
      color: Colors.brown[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(
            color: Colors.brown[400],
            width: 2.0,
            style: BorderStyle.solid,
          ),
        )
    );
  }
}
