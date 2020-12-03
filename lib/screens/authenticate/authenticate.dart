import 'package:AfriMusica/screens/authenticate/sign_in.dart';
import 'package:AfriMusica/router.dart' as router;
import 'package:AfriMusica/screens/home/home.dart';
import 'package:flutter/material.dart';

import '../../router_constants.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routing',
      onGenerateRoute: router.generateRoute,
      initialRoute: LoginViewRoute,
    );
    //   Container(
    //   child: SignIn(),
    // );
  }
}
