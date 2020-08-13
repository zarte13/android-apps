import 'dart:async';

import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();


}


class _HomeState extends State<Home> {
  Map data = {};


  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data: ModalRoute.of(context).settings.arguments;
    print(data);
    //set background
    String bgImage = data['isDaytime'] ? 'downloadedit.png' : 'download2edit.png';
    Color bgColor = data['isDaytime'] ? Colors.blue[600] : Colors.blueGrey[800];





    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () async {
                      dynamic result = await Navigator.pushNamed(context, '/location');
                      setState(() {
                        data = {
                          'time': result['time'],
                          'location': result['location'],
                          'isDaytime': result['isDaytime'],
                          'flag': result['flag'],
                          'index' : result['index'],
                        };
                      });
                    },
                    icon: Icon(
                      Icons.edit_location,
                      color: Colors.grey[300],
                    ),
                    label: Text(
                      'Edit location',
                      style: TextStyle(
                        color: Colors.grey[300],
                      ),

                    )),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],

                      style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 28,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  data['time'],

                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.grey[100],

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
