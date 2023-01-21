// ignore_for_file: unnecessary_import, camel_case_types, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class historyrent_widget extends StatelessWidget {
  final String HistoryCarName;
  final String HistoryRentDay;
  final String HistoryRentPay;
  final String HisToryCarImage;
  const historyrent_widget(
      {Key? key,
      required this.HisToryCarImage,
      required this.HistoryCarName,
      required this.HistoryRentDay,
      required this.HistoryRentPay,
      required})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 9.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/podyum.jpg"), fit: BoxFit.cover),
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: Colors.grey.shade200,
              spreadRadius: 1,
            )
          ],
        ),
        child:
            // ignore: prefer_const_literals_to_create_immutables
            Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 18.0,
            horizontal: 18,
          ),
          child: Column(children: [
            Text(
              HistoryCarName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Image(
              image: AssetImage(HisToryCarImage),
              width: double.infinity,
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Price
                  Row(
                    children: [
                      Text(
                        HistoryRentDay,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "/Day Rent",
                        style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.monetization_on_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        HistoryRentPay,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
