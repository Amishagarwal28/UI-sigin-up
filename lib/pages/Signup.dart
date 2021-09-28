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
      home: SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
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
                  height: deviceWidth * .45,
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
                        image: AssetImage("lib/assets/images/logo.jpeg"),)),
                      ),
                      SizedBox(height: deviceWidth * .01),
                      Text(
                        "Book Mart",
                        style: TextStyle(
                            fontSize: deviceWidth / 32, color: Colors.white),
                      ),
                    ],
                  )),
              
                  Container(
                    margin: EdgeInsets.only(
                        top: deviceWidth * .32, left: deviceWidth * .02),
                    height: deviceWidth * .4,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: deviceHorizontal * .1,
                          right: deviceHorizontal * .1,
                          top: deviceWidth * .025),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Full Name",
                                hintText: "Amish Agarwal",
                                suffixIcon: Icon(Icons.person_outline)),
                          ),
                          SizedBox(height: deviceWidth * .01),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "E-Mail",
                                hintText: "abdullah_mustafa21@yahoo.com",
                                suffixIcon: Icon(Icons.email_outlined)),
                          ),
                          SizedBox(height: deviceWidth * .01),
                          TextFormField(obscureText: true,
                            decoration: InputDecoration(
                                labelText: "Password",
                                
                                suffixIcon:
                                    Icon(Icons.remove_red_eye_outlined)),
                          ),
                        ],
                      ),
                    ),
                  ),
                
              
              Container(
                margin: EdgeInsets.only(
                    top: deviceWidth * .68,
                    left: deviceHorizontal * .2,
                    right: deviceHorizontal * .2),
                height: deviceWidth * .08,
                width: deviceHorizontal * .8,
                child: RaisedButton(
                  onPressed: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.blueAccent,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: deviceWidth * .78,
                    left: deviceHorizontal * .2,
                    right: deviceHorizontal * .2),
                height: deviceWidth * .08,
                width: deviceHorizontal * .8,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: Text(
                    "Sign Up with Facebook",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.blue[900],
                ),
              ),
              SizedBox(height: deviceWidth * .08),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    top: deviceWidth * .88,
                  ),
                  child: FlatButton(
                    child: Text(
                      "Already have an account? Sign In",
                      style: TextStyle(color: Colors.grey),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/signin');
                    },
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
