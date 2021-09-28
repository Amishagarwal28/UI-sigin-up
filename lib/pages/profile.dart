import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.height;
    final deviceHorizontal = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Stack(
            children: [
              Container(
                  height: deviceWidth * .3,
                  width: double.infinity,
                  color: Colors.blueAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: deviceWidth * .08),
                        height: deviceWidth * .14,
                        width: deviceWidth * .14,
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("lib/assets/images/avatar.png"),)
                            ),
                            
                      ),
                      SizedBox(height: deviceWidth * .01),
                      Text(
                        "Harsh Gupta",
                        style: TextStyle(
                            fontSize: deviceWidth / 32, color: Colors.white),
                      ),
                    ],
                  )),
            ]),
            SizedBox(height: 40.0,),
            Column(
              children: [
                Row(children: [
                  Icon(Icons.cloud_circle_outlined, color: Colors.blueAccent,size: 30.0,),
                  SizedBox(width: 10.0,),
                  Text('Social Networks',style: TextStyle(fontSize: 20.0),)
                ],),
                 Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Row(children: [
                  Icon(Icons.book_online, color: Colors.blueAccent,size: 30.0,),
                  SizedBox(width: 10.0,),
                  Text('Travel guide',style: TextStyle(fontSize: 20.0),)
                ],),
                 Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Row(children: [
                  Icon(Icons.notification_important_outlined, color: Colors.blueAccent,size: 30.0,),
                  SizedBox(width: 10.0,),
                  Text('Notifications',style: TextStyle(fontSize: 20.0),)
                ],),
                 Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Row(children: [
                  Icon(Icons.help_center_outlined, color: Colors.blueAccent,size: 30.0,),
                  SizedBox(width: 10.0,),
                  Text('Help',style: TextStyle(fontSize: 20.0),)
                ],),
                 Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Row(children: [
                  Icon(Icons.message_outlined, color: Colors.blueAccent,size: 30.0,),
                  SizedBox(width: 10.0,),
                  Text('Feedback',style: TextStyle(fontSize: 20.0),)
                ],),
                 Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
              ],
            ),
            SizedBox(height: 90.0,),
            BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          
        ],
      
            
        
        ),
        ]
      ),)
      
    
    );
    
  }
}