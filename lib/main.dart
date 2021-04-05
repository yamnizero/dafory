import 'package:flutter/material.dart';
import 'package:new_dafory/routes/routes.dart';
import 'package:new_dafory/screens/main_page.dart';
import 'package:new_dafory/screens/pages/reservation.dart';
import 'screens/login-screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dafory',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/LoginScreen',
      routes: routes

    );
  }
}


