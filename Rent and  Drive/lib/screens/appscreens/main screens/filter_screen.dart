// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool? fiveseat = false;
  bool? twoseat = false;
  bool? sevenseat = false;
  bool? Sedan = false;
  bool? Suv = false;
  bool? PickUp = false;
  double Min = 0;
  double Max = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: SizedBox(
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Number Seats
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Number of Seats",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Icon(
                        Icons.settings_backup_restore_outlined,
                        color: Colors.white,
                      ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                          Checkbox(
                              value: twoseat,
                              activeColor: Colors.blue,
                              onChanged: (two) {
                                setState(() {
                                  twoseat = two;
                                });
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("5",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                          Checkbox(
                              value: fiveseat,
                              activeColor: Colors.blue,
                              onChanged: (five) {
                                setState(() {
                                  fiveseat = five;
                                });
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("7",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                          Checkbox(
                              value: sevenseat,
                              activeColor: Colors.blue,
                              onChanged: (seven) {
                                setState(() {
                                  sevenseat = seven;
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                  //Type of Car
                  Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Type Of Car",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                                  Icon(
                            Icons.settings_backup_restore_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sedan",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                          Checkbox(
                              value: Sedan,
                              activeColor: Colors.blue,
                              onChanged: (Sdn) {
                                setState(() {
                                  Sedan = Sdn;
                                });
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Suv",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                          Checkbox(
                              value: Suv,
                              activeColor: Colors.blue,
                              onChanged: (Sv) {
                                setState(() {
                                  Suv = Sv;
                                });
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Pick Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15)),
                          Checkbox(
                              value: PickUp,
                              activeColor: Colors.blue,
                              onChanged: (PckUp) {
                                setState(() {
                                  PickUp = PckUp;
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                  //Min Price
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Min Price",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Icon(
                        Icons.settings_backup_restore_outlined,
                        color: Colors.white,
                      ),
                        ],
                      ),
                      Slider(
                        thumbColor: Colors.white,
                        inactiveColor: Colors.white,
                        activeColor: Colors.white,
                        value: Min,
                        onChanged: (value) {
                          Min = value;
                          setState(() {});
                        },
                        divisions: 15,
                        label: Min.round().toString() + ' Dollar',
                        max: 1500,
                      )
                    ],
                  ),
                  //Max Price
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Max Price",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Icon(
                        Icons.settings_backup_restore_outlined,
                        color: Colors.white,
                      ),
                        ],
                      ),
                      Slider(
                        thumbColor: Colors.white,
                        inactiveColor: Colors.white,
                        activeColor: Colors.white,
                        value: Max,
                        onChanged: (value) {
                          Max = value;
                          setState(() {});
                        },
                        divisions: 15,
                        label: Max.round().toString() + ' Dollar',
                        max: 1500,
                      )
                    ],
                  ),
                  //Filter Button
                  GestureDetector(onTap: () {
                    Navigator.pop(context);
                  },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Filter",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
