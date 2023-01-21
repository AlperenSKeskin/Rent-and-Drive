// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:RentShow/screens/widget/car_company.dart';
import 'package:RentShow/screens/widget/car_models.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class RentScreen extends StatefulWidget {
  const RentScreen({super.key});

  @override
  State<RentScreen> createState() => _RentScreenState();
}

class _RentScreenState extends State<RentScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[400],
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
                          GestureDetector(
                            onTap: () {
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
        appBar: AppBar(
          elevation: 0,
          title: Center(child: Text("Rent")),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            Row(
              children: [
                Text(
                  "100.000,00",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.attach_money),
              ],
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                //search area
                Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, right: 30, left: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white,
                      )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white,
                      )),
                      hintText: "Search Car For Rent",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      prefixIcon: Icon(
                        UniconsLine.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                // Cars company area
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        car_company(
                          companyimage: "assets/images/bmw_logo.png",
                        ),
                        car_company(
                          companyimage: "assets/images/jesko-logo.png",
                        ),
                        car_company(
                            companyimage: "assets/images/Ford_logo.png"),
                        car_company(
                            companyimage: "assets/images/nissan-logo.png"),
                        car_company(
                            companyimage: "assets/images/Rolls-Royce-logo.png"),
                        car_company(
                            companyimage: "assets/images/lamborghini-logo.png"),
                      ],
                    ),
                  ),
                ),
                // Heading Area
                Container(
                  width: double.infinity,
                  height: 50,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Available Cars Near You",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed("/Filter");
                          },
                          child: Icon(
                            UniconsLine.exchange,
                            size: 20,
                          ),
                        ),
                        
                      ],
                    )
                  ]),
                ),
                // Car List area
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      //scrollDirection: Axis.vertical,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed("/Bmw");
                          },
                          child: car_models(
                            carname: "Bmw M8",
                            carprice: "200/day",
                            carcapacity: "4",
                            cargeartype: "Auto",
                            carimage: "assets/images/BMW-M8.png",
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            Navigator.of(context).pushNamed("/Koenigsegg");
                          }),
                          child: car_models(
                            carimage: "assets/images/jesko.png",
                            carname: "Koenigsegg Agera S",
                            carprice: "1000/day",
                            carcapacity: "2",
                            cargeartype: "Auto",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed("/Ford");
                          },
                          child: car_models(
                            carimage: "assets/images/Shelby.png",
                            carname: "Ford Mustang",
                            carprice: "300/day",
                            carcapacity: "2",
                            cargeartype: "Auto",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed("/Nissan");
                          },
                          child: car_models(
                            carimage: "assets/images/gtr.png",
                            carname: "Nissan Gtr",
                            carprice: "150/day",
                            carcapacity: "2",
                            cargeartype: "Auto",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed("/Rolls-Royce");
                          },
                          child: car_models(
                            carimage: "assets/images/cullinan.png",
                            carname: "Rolls Royce Cullinan",
                            carprice: "350/day",
                            carcapacity: "4",
                            cargeartype: "Auto",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed("/Lamborghini");
                          },
                          child: car_models(
                            carimage: "assets/images/urus.png",
                            carname: "Lamborghini Urus",
                            carprice: "300/day",
                            carcapacity: "4",
                            cargeartype: "Manuel",
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        //Navigation
        bottomNavigationBar: BottomNavigationBar(elevation: 0, items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.grey,
              icon: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Icon(size: 30, color: Colors.white, UniconsLine.home),
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
              icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("/profile");
                },
                child: Icon(
                    size: 30, color: Colors.grey[800], UniconsLine.user_circle),
              ),
              label: ""),
        ]),
      ),
    );
  }
}
