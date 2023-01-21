// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, avoid_unnecessary_containers

import 'package:RentShow/screens/widget/card.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        //drawer
        drawer: Container(
            decoration: BoxDecoration(color: Colors.grey),
            height: double.infinity,
            width: 200,
            child: Column(
              children: [
                //top area
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed("/profile");
                                },
                                child: CircleAvatar(
                                  child: Icon(Icons.person),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("Alperen Şükrü Keskin",style: TextStyle(fontWeight: FontWeight.bold))],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("Istanbul - Turkiye",style: TextStyle(fontWeight: FontWeight.bold))],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Money:",style: TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 5,
                              ),
                              Text("100.000,00",style: TextStyle(fontWeight: FontWeight.bold),),
                              Icon(Icons.attach_money),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //bottom area
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          //Card
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/card");
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Card add ",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  UniconsLine.credit_card,
                                  size: 25,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          //History
                          GestureDetector(onTap: () {
                            Navigator.of(context).pushNamed("/History");
                          },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("History Rents",
                                    style: TextStyle(fontSize: 20)),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  UniconsLine.history,
                                  size: 25,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          //Setting
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/Settings");
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Settings",
                                    style: TextStyle(fontSize: 20)),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  UniconsLine.setting,
                                  size: 25,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          //Log Out
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed("/welcome");
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Log Out", style: TextStyle(fontSize: 20)),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.logout,
                                  size: 25,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
        //app bar
        appBar: AppBar(
          backgroundColor: Colors.grey,
          elevation: 0,
          title: Center(child: Text("Profile")),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            GestureDetector(onTap: () {
              Navigator.of(context).pushNamed("/Settings");
            },
              child: Row(
                children: [
                  Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  Icon(Icons.settings),
                ],
              ),
            )
          ],
        ),
        //Body
        body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  //profile top
                  Container(
                    width: double.infinity,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              CircleAvatar(
                                child: Icon(Icons.person),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("Alperen Şükrü Keskin",style: TextStyle(fontWeight: FontWeight.bold))],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Istanbul - Turkiye",style: TextStyle(fontWeight: FontWeight.bold)),
                              Row(
                                children: [
                                  Text("Money:",style: TextStyle(fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("100.000,00",style: TextStyle(fontWeight: FontWeight.bold)),
                                  Icon(Icons.attach_money),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //profile card
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Cards",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.credit_card),
                      ],
                    ),
                  ),
                  //profile cards
                  Column(
                    children: [
                      cards(
                        cardname: "İstinye Bank",
                        cardnumber: "211216025",
                        cardccv: "000",
                      ),
                      cards(
                        cardname: "İstinye Bank",
                        cardnumber: "211216025",
                        cardccv: "000",
                      ),
                      cards(
                        cardname: "İstinye Bank",
                        cardnumber: "211216025",
                        cardccv: "000",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        //Navigation
        bottomNavigationBar: BottomNavigationBar(elevation: 0, items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("/rent");
                    },
                    child: Icon(
                        size: 30, color: Colors.grey[800], UniconsLine.home)),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("/favorite");
                },
                  child: Icon(
                      size: 30, color: Colors.grey[800], UniconsLine.heart)),
              label: ""),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("/Map");
                },
                child: Icon(
                    size: 30, color: Colors.grey[800], UniconsLine.map_marker),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("/Notification");
                },
                  child: Icon(
                      size: 30, color: Colors.grey[800], UniconsLine.bell)),
              label: ""),
          BottomNavigationBarItem(
              icon:
                  Icon(size: 30, color: Colors.white, UniconsLine.user_circle),
              label: ""),
        ]),
      ),
    );
  }
}
