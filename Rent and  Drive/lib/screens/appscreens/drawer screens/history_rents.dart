// ignore_for_file: prefer_const_constructors

import 'package:RentShow/screens/widget/historyrent_screen.dart';
import 'package:flutter/material.dart';

class HistoryRentScreen extends StatefulWidget {
  const HistoryRentScreen({super.key});

  @override
  State<HistoryRentScreen> createState() => _HistoryRentScreenState();
}

class _HistoryRentScreenState extends State<HistoryRentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(onTap:() {
          Navigator.of(context).pop();
        }, child: Icon(Icons.arrow_back)),
        title: Text('History Rent'),
      ),
          body: SingleChildScrollView(
            child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
            historyrent_widget(
              HisToryCarImage: "assets/images/BMW-M8.png",
              HistoryCarName: "BMW M8",
              HistoryRentDay: "15",
              HistoryRentPay: "3000",
            ),
            historyrent_widget(
              HisToryCarImage: "assets/images/BMW-M8.png",
              HistoryCarName: "BMW M8",
              HistoryRentDay: "15",
              HistoryRentPay: "3000",
            ),
            historyrent_widget(
              HisToryCarImage: "assets/images/BMW-M8.png",
              HistoryCarName: "BMW M8",
              HistoryRentDay: "15",
              HistoryRentPay: "3000",
            ),
            historyrent_widget(
              HisToryCarImage: "assets/images/BMW-M8.png",
              HistoryCarName: "BMW M8",
              HistoryRentDay: "15",
              HistoryRentPay: "3000",
            ),
            historyrent_widget(
              HisToryCarImage: "assets/images/BMW-M8.png",
              HistoryCarName: "BMW M8",
              HistoryRentDay: "15",
              HistoryRentPay: "3000",
            ),
                  ],
                ),
          )),
    );
  }
}
