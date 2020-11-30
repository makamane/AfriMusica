import 'package:flutter/material.dart';
import 'package:AfriMusica/screens/home/home.dart';
import 'package:AfriMusica/screens/authenticate/sign_in.dart';
import 'package:AfriMusica/router_constants.dart';
import 'package:AfriMusica/screens/authenticate/forgot_password.dart';
import 'package:AfriMusica/screens/authenticate/Sign_up.dart';


Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name){
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => Home());
    case LoginViewRoute:
      return MaterialPageRoute(builder: (context) => SignIn());
    case SignUpViweRoute:
      return MaterialPageRoute(builder: (context) => SignUP());
    case ForgetPasswordViweRoute:
      return MaterialPageRoute(builder: (context) => ForgotPasswordScreen());
    default:
      return MaterialPageRoute(builder: (context) => Home());
  }

}

