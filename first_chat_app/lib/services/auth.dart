import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_chat_app/modal/user.dart';

class AuthMethods{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userfromFirebaseUser(FirebaseUser user){
    return user !=null ? User(userId: user.uid) : null;
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser firebaseUser = result.user;
      return _userfromFirebaseUser(firebaseUser)


    }catch(e){
      print(e.toString());

    }
  }

  Future signUpwithEmailAndPassword(String email, String password) async {
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser firebaseUser = result.user;
      return _userfromFirebaseUser(firebaseUser);


    }catch(e){
      print(e.toString());
    }
  }


}