import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
// import 'package:AfriMusica/common/myflutter_alert.dart';
// import 'package:AfriMusica/enums/auth-result-status.dart';
import 'package:AfriMusica/services/auth.dart';
import 'package:AfriMusica/utils/constants.dart';
import 'package:AfriMusica/utils/form_validators.dart';
import 'package:AfriMusica/widgets/custom_flat_button.dart';
import 'package:AfriMusica/widgets/custom_material_button.dart';
import 'package:AfriMusica/widgets/custom_text_form.dart';
import 'package:AfriMusica/widgets/login_text_anim.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../router_constants.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const String id = 'ForgotPasswordScreen';
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPasswordScreen> {

  final _formKey = GlobalKey<FormState>();
  // final User _user = User();
  final AuthService _auth = AuthService();
  String _email;



  void _submit() async {
    final form = _formKey.currentState;
    if (form.validate()) {
      print(_email);
      // try {
      //   User user = await _auth.signIn(_email, _password);
      //   if (user != null) {
      //     print('success');
      //         Navigator.pushNamed(
      //           context, LoginViewRoute);
      //   } else {}
      // } catch (e) {
      //   print('submit: $e');
      // }
      // form.clear();
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
              title: Text('Forgot Password'),
            ),
            body: Container(
              // padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
              child: Center(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: LoginTextAnim(headingText: 'AfriMusica'),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),

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
                                  CustomMaterialButton(
                                    onPressed: _submit,
                                    title: 'Submit',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
        )
    );
  }
}
