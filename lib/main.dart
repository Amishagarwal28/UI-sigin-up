import 'package:flutter/material.dart';
import './pages/LSOptions.dart';
import './pages/Signup.dart';
import './pages/Signin.dart';
import './pages/profile.dart';
//import 'package:test_application/pages/analytics.dart';
import './pages/loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/login',
      routes: {
        '/': (context) => Loading(),
        '/login': (context) => Login(),
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        '/profile': (context) => Profile(),
      },
    ));


