// ignore_for_file: prefer_const_constructors

import 'package:RentShow/screens/widget/settings_widget.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          elevation: 0,
        leading: GestureDetector(onTap:() {
          Navigator.of(context).pop();
        }, child: Icon(Icons.arrow_back)),
        title: Text('Settings'),
      ),
          body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Settings_widget(
              SettingsName: "Change Mail",
            ),
            Settings_widget(
              SettingsName: "Change Password",
            ),
            Settings_widget(
              SettingsName: "Change Language",
            ),
            Settings_widget(
              SettingsName: "Change Currency",
            ),
            Settings_widget(
              SettingsName: "Change Theme",
            ),
        ],
      )),
    );
  }
}
