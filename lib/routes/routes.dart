import 'package:flutter/material.dart';
import 'package:new_dafory/screens/login-screen.dart';
import 'package:new_dafory/screens/main_page.dart';

import 'package:new_dafory/screens/pages/reservation.dart';
import 'package:new_dafory/screens/pages/services.dart';


Map<String,WidgetBuilder> routes = {

    '/':(context)=>MainPage(),
    '/Reservation':(context)=>Reservation(),
    '/LoginScreen':(context)=>LoginScreen(),
    '/Services':(context)=>Services(),
    //'/GoogleMapScreen':(context)=>GoogleMapScreen(),

};