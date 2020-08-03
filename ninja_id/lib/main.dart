import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  String text;
  int value = 0;


  getvalue(){
    switch(value) {
      case 1:
        {text = 'Low';}
        break;
      case 2: {text = 'Medium';}
      break;
      default: {if (value >=3) {
        text = 'High';
      } else {
        text = 'null';}}
      break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      appBar: AppBar(

        centerTitle: true,
        backgroundColor: Colors.teal[800],
        title: Text(
          'YourID: Special Edition'
        ),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              value += 1;
              getvalue();
            });
          },
        child: Icon(
          Icons.arrow_upward,
          size: 30,

        ),
        backgroundColor: Colors.cyan[400],

      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/Jean2.jpg'
                ),
                radius: 50,

              ),
            ),
            Divider(
              height: 15,
              color: Colors.teal[300],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.cyan[200],
                letterSpacing: 2.0,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Jean-Christophe',
              style: TextStyle(
                color: Colors.deepPurple[100],
                letterSpacing: 2.0,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'CLASS',
              style: TextStyle(
                color: Colors.cyan[200],
                letterSpacing: 2.0,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Bourgeoisie',
              style: TextStyle(
                color: Colors.deepPurple[100],
                letterSpacing: 2.0,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'THREAT',
              style: TextStyle(
                color: Colors.cyan[200],
                letterSpacing: 2.0,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '$text',
              style: TextStyle(
                color: value == 1? Colors.green[400]: value == 2? Colors.amber: value >= 3? Colors.red[400]: Colors.white ,
                letterSpacing: 2.0,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Login to access your social credit score '
                  'and other activities',

              style: TextStyle(
              color: Colors.cyan[100],
              letterSpacing: 2.4,
              height: 1.5,
              wordSpacing: 1.5,
              fontSize: 14,
              ),

            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.perm_identity,
                  color: Colors.cyan[200],
                  size: 30,
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  'JChrist1',
                  style: TextStyle(
                    color: Colors.deepPurple[50],
                    letterSpacing: 2,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),

            Row(
              children: <Widget>[
                Icon(
                  Icons.vpn_key,
                  color: Colors.cyan[200],
                  size: 30,
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  '•••••••••••••••',
                  style: TextStyle(
                    color: Colors.deepPurple[50],
                    letterSpacing: 2,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),

          ],
        ),

      ),
    );
  }
}





