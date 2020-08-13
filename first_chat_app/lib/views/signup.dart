import 'package:first_chat_app/services/auth.dart';
import 'package:first_chat_app/views/chatroom_screen.dart';
import 'package:first_chat_app/widgets/widget.dart';
import 'package:flutter/material.dart';




class SignUp extends StatefulWidget {
  final Function toggle;
  SignUp(this.toggle);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool isLoading = false;

  final formKey = GlobalKey<FormState>();

  AuthMethods authMethods = new AuthMethods();

  TextEditingController userNameEditingController = new TextEditingController();
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();

  signMeUp(){
    if(formKey.currentState.validate()){
      setState(() {
        isLoading = true;
      });
      authMethods.signUpwithEmailAndPassword(emailEditingController.text, passwordEditingController.text).then((val){
        print('$val');
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ChatRoom()));
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context, true),
      body: isLoading? Container(
        child: Center(child: SizedBox(
          width: 150,
          height: 150,
                  child: CircularProgressIndicator(
            strokeWidth: 10,
          ),
        )),
      ) :SingleChildScrollView(

        child: Container(
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height - 50,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal:24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (val){
                          return val.isEmpty || val.contains(' ')|| val.length<2 ? 'Please provide a valid username':null;
                        },
                        controller: userNameEditingController,
                        style: simpleTextStyle(16),
                        decoration: textFieldInputDecoration('username'),
                      ),

                      TextFormField(
                        controller: emailEditingController,
                        validator: (val){
                          return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val) ?  null : 'Please provide a email address';
                        },
                        style: simpleTextStyle(16),
                        decoration: textFieldInputDecoration('email'),),
                      TextFormField(
                        controller: passwordEditingController,
                        obscureText: true,
                        style: simpleTextStyle(16),
                        decoration: textFieldInputDecoration('password'),
                        validator: (val){
                          return val.length < 6? 'Please provide longer password': val.contains(' ')?'Space is not a valid character':null;
                        },
                      ),
                    ],
                  ),
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
                GestureDetector(
                  onTap: (){
                    signMeUp();

                  },
                  child: Container(
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
                    child: Text('Sign Up', style: simpleTextStyle(17),),
                  ),
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
                  child: Text('Sign up With Google', style:
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
                      "Already have account? ",
                      style: simpleTextStyle(17),

                    ),
                    GestureDetector(
                      onTap: (){
                        widget.toggle();
                      },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                          'Sign in',
                          
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            decoration: TextDecoration.underline,
                          ),

                      ),
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
