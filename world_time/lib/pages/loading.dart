import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    Future.delayed(Duration(seconds: 0),() {
        Navigator.pushReplacementNamed(context, '/home', arguments: {
          'location': instance.location,
          'flag' : instance.flag,
          'time' : instance.time,
          'isDaytime': instance.isDaytime,

      });
    });

  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.teal[50],
        body: Center(
          child: SpinKitThreeBounce(
            color: Colors.blueGrey[600],
            size: 60.0,
          ),
        )
    );
  }
}



