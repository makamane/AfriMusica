import 'package:AfriMusica/services/auth.dart';
import 'package:AfriMusica/utils/constants.dart';
import 'package:AfriMusica/utils/form_validators.dart';
import 'package:AfriMusica/widgets/custom_flat_button.dart';
import 'package:AfriMusica/widgets/custom_material_button.dart';
import 'package:AfriMusica/widgets/custom_text_form.dart';
import 'package:AfriMusica/widgets/login_text_anim.dart';
import 'package:flutter/material.dart';
import 'package:AfriMusica/screens/authenticate/forgot_password.dart';
import 'package:AfriMusica/screens/authenticate/Sign_up.dart';


import '../../router_constants.dart';
import 'Sign_up.dart';
import 'forgot_password.dart';

class SignIn extends StatefulWidget {
  static const String id = '/';

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();
  String _email, _password;


  void _submit() async {
    final form = _formKey.currentState;
    if (form.validate()) {
      print(_email);
      print(_password);
      // try {
      //   User user = await _auth.signIn(_email, _password);
      //   if (user != null) {
      //     print('success');
      //     Navigator.pushNamed(
      //       context, HomeViewRoute);
      //   } else {}
      // } catch (e) {
      //   print('submit: $e');
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          backgroundColor: Colors.brown[100],
          appBar: AppBar(
            backgroundColor: Colors.brown[400],
            elevation: 0.0,
            title: Text('Sign in'),
          ),
        body: Container(
          // padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Center(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  // Container(
                  //   child: LoginTextAnim(headingText: 'AfriMusica'),
                  // ),
                  // SizedBox(
                  //   height: 20.0,
                  // ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              CustomTextFormField(
                                onChanged: (String email) {
                                  _email = email.trim();
                                },
                                labelText: 'Email',
                                isText: false,
                                isEmail: true,
                                icon: Icons.email,
                                validator: (String _email) {
                                  return FormValidator.validateEmail(
                                      email: _email);
                                },
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              CustomTextFormField(
                                onChanged: (String password) {
                                  _password = password.trim();
                                },
                                labelText: 'Password',
                                icon: Icons.lock,
                                isObscure: true,
                                validator: (String _password) {
                                  return FormValidator.validatePassword(
                                      password: _password);
                                },
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              CustomMaterialButton(
                                onPressed: _submit,
                                title: 'Login',
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  CustomFlatButton(
                                    onPressed: () {
                                      // print('ForgotPasswordScreen');
                                      Navigator.pushNamed(
                                          context, ForgetPasswordViweRoute);
                                    },
                                    title: "Reset Password",
                                  ),
                                  Text(
                                    '              ',
                                    style: kTextStyle,
                                  ),
                                  CustomFlatButton(
                                    onPressed: () {
                                      // print('SignUpScreen');
                                      Navigator.pushNamed(
                                          context, SignUpViweRoute);
                                    },
                                    title: "Create an account",
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //------
                ],

              ),
            ),
          ),
        )
    )
    );
  }
}
