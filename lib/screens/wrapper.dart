import 'package:AfriMusica/screens/authenticate/authenticate.dart';
import 'package:AfriMusica/screens/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return either home of Authentication widget
    return Authenticate();
  }
}
