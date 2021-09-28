import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import '../animation/try_fade.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            child: Stack(
              children: <Widget>[
                Positioned(
                    child: FadeAnimation(
                  1,
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("lib/assets/images/1.png"),
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FadeAnimation(
                  1,
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage(
                            "lib/assets/images/logo.jpeg",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
      Center(
        child: LoadingFlipping.circle(
  borderColor: Colors.cyan,
  borderSize: 3.0,
  size: 70.0,
  backgroundColor: Colors.white,
  duration: Duration(milliseconds: 500),
)

      )
              ]
            ))
        ]
    ));
              
  }
}
