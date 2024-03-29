import 'package:flutter/material.dart';


Widget appBarMain(BuildContext context, bool center){
  return AppBar(
    title: Image.asset("assets/images/logo.png", height: 40),
    centerTitle: center,

  );
}

InputDecoration textFieldInputDecoration(String hintText){
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      color: Colors.white54,
    ),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white)
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    ),
  );
}


TextStyle simpleTextStyle(double size){
  return TextStyle(
    color: Colors.white,
    fontSize: size,
  );
}