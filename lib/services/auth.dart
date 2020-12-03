import 'package:firebase_auth/firebase_auth.dart';
import 'package:AfriMusica/enums/auth_result_status.dart';
import 'package:AfriMusica/exceptions/auth-exception-handler.dart';
import 'package:AfriMusica/exceptions/my_exception.dart';


class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  AuthResultStatus _status;

  // Sign in anon
  Future signInAnon() async{
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;
    }catch(e){
      print(e.toString());
      return null;
    }

  }

  // Sign in with email and password
  // Future<User> signIn(String emailAddress, String password) async {
  //   try {
  //     UserCredential result = await _auth.signInWithEmailAndPassword(
  //         email: emailAddress, password: password);
  //     return result.user;
  //   } catch (e) {
  //     throw MyException(e);
  //   }
  // }

  // register with email & password
  // Future<AuthResultStatus> singUp(String emailAddress, String password) async {
  //   try {
  //     UserCredential result = await _auth.createUserWithEmailAndPassword(
  //         email: emailAddress, password: password);
  //     if (result.user != null) {
  //       _status = AuthResultStatus.successful;
  //     }
  //   } catch (e) {
  //     _status = AuthExceptionHandler.handleException(e);
  //   }
  //
  //   return _status;
  // }

  // Sign out
  Future<void> signOut() {
    return _auth.signOut();
  }

  // reset password
  Future<void> resetPassword(String emailAddress) async {
    return await _auth.sendPasswordResetEmail(email: emailAddress);
  }

  // // current user
  // User getCurrentUser() {
  //   return _auth.currentUser;
  // }
  // // get uid
  // String getUID() {
  //   return getCurrentUser().uid;
  // }

}