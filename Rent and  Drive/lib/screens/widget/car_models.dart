// ignore_for_file: unnecessary_import, camel_case_types, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/icon_park_twotone.dart';
import 'package:iconify_flutter/icons/icon_park_solid.dart';
import 'package:iconify_flutter/icons/cil.dart';

class car_models extends StatefulWidget {
  const car_models(
      {Key? key,
      required this.carname,
      required this.carcapacity,
      required this.cargeartype,
      required this.carimage,
      required this.carprice})
      : super(key: key);

  final String carcapacity;
  final String cargeartype;
  final String carimage;
  final String carname;
  final String carprice;

  @override
  State<car_models> createState() => _car_modelsState();
}

class _car_modelsState extends State<car_models> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 10),
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
          // ignore: prefer_const_literals_to_create_immutables
          // car image
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  // car name
                  Text(
                    widget.carname,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  // car price
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: Colors.white,
                            ),
                            Text(
                              widget.carprice,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        // Seats
                        Row(
                          children: [
                            Iconify(IconParkTwotone.baby_car_seat,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              widget.carcapacity,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        // Gear
                        Row(
                          children: [
                            Iconify(IconParkSolid.manual_gear,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              widget.cargeartype,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image(
                    image: AssetImage(widget.carimage),
                    width: double.infinity,
                    height: 200,
                  ),
                ]),
          ),
        ));
  }
}
