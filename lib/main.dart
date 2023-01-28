//  import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:ridehailing/auth/login.dart';
import 'package:ridehailing/passenger_nav_bar.dart';
import 'package:ridehailing/rider_nav_bar.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login' :(context) => const LoginScreen(),
        '/riderNav':(context) => const RiderNavBar(),
        '/passengerNav':(context) => const PassengerNavBar(),
        // '/passengerNav':(context) => const Pass
        // Wear OS
      },
    ),
  );
}
