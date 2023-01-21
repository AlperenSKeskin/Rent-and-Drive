// ignore_for_file: prefer_const_constructors, unused_import


import 'package:RentShow/screens/appscreens/main%20screens/filter_screen.dart';
import 'package:RentShow/screens/carsinfo/Lamborghini.info.dart';
import 'package:RentShow/screens/carsinfo/bmw_info.dart';
import 'package:RentShow/screens/carsinfo/ford_info.dart';
import 'package:RentShow/screens/carsinfo/koenigsegg_info.dart';
import 'package:RentShow/screens/carsinfo/nissan_info.dart';
import 'package:RentShow/screens/carsinfo/rolls_royce_info.dart';
import 'package:flutter/material.dart';
import 'screens/appscreens/drawer screens/cardadd.dart';
import 'screens/appscreens/drawer screens/history_rents.dart';
import 'screens/appscreens/drawer screens/setting_screen.dart';
import 'screens/appscreens/main screens/favorite_screen.dart';
import 'screens/appscreens/main screens/map_screen.dart';
import 'screens/appscreens/main screens/notification_screen.dart';
import 'screens/appscreens/main screens/profile.dart';
import 'screens/appscreens/main screens/rent_screen.dart';
import 'screens/appscreens/main screens/welcome_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        "/Bmw":(context) => BMW_info(),
        "/Koenigsegg":(context) => Koenigsegg_info(),
        "/Ford":(context) => Ford_info(),
        "/Nissan":(context) => Nissan_info(),
        "/Rolls-Royce":(context) => Rolls_Royce_info(),
        "/Lamborghini":(context) => Lamborghini_info(),
        "/Filter":(context) => FilterScreen(),
        "/Settings":(context) => SettingScreen(),
        "/History":(context) => HistoryRentScreen(),
        "/Notification":(context) => NotificationScreen(),
        "/Map":(context) => MapScreen(),
        "/card":(context) => CreditCardPage(),
        "/rent":(context) => RentScreen(),
        "/welcome":(context) => WelcomeScreen(),
        "/favorite":(context) => FavoriteScreen(),
        "/profile":(context) => ProfileScreen()
      },
      initialRoute: "/welcome",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}
