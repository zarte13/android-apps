import 'package:first_chat_app/widgets/widget.dart';
import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: SingleChildScrollView(

        child: Container(
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height - 50,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal:24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                TextField(
                  style: simpleTextStyle(16),
                  decoration: textFieldInputDecoration('email'),),
                TextField(
                  style: simpleTextStyle(16),
                  decoration: textFieldInputDecoration('password'),
                ),
                SizedBox(height: 8,),
                Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text('Forgot Password?',style: simpleTextStyle(16),),
                  ),
                ),
                SizedBox(height: 8,),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xff007EF4),
                        const Color(0xff2A75BC)
                      ]
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text('Sign In', style: simpleTextStyle(17),),
                ),
                SizedBox(height: 16,),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text('Sign in With Google', style:
                    TextStyle(
                      fontSize: 17,
                      color: Colors.black87,
                    ),),
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have account? ",
                      style: simpleTextStyle(17),

                    ),
                    Text(
                      'Register Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        decoration: TextDecoration.underline,
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 50,),

              ],
            ),
          ),
        ),
      ),

    );
  }
}
