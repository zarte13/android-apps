import 'package:first_chat_app/widgets/widget.dart';
import 'package:flutter/material.dart';


class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {


  TextEditingController searchEditingController = new TextEditingController();
  
  @override




  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context, false),
      body: Container(
        child: Column(
          children: [
            Container(
              color: Color(0x54FFFFFF),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),

              child: Row(
                children: [
                  Expanded(
                    child:TextField(

                      controller: searchEditingController,
                      style: TextStyle(fontSize: 20),
                      
                      decoration: InputDecoration(
                        
                        hintText: 'search username...',
                        hintStyle: TextStyle(
                          color: Colors.white54,

                        ),
                        border: InputBorder.none,
                      ),

                    ),
                  ),
            
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color(0x36FFFFFFF),
                        const Color(0x0FFFFFFFF)
                      ]),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  
                    child: Image.asset('assets/images/search_white.png')),
                ],),
              ),
            

          ],
        )
      ),
    );
  }
}