// import 'package:first_chat_app/views/signin.dart';
import 'package:first_chat_app/helper/authenticate.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',


      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff145C9E),
        scaffoldBackgroundColor: Color(0xff1F1F1F),

        primarySwatch: Colors.blue,


        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Authenticate(),
    );
  }
}