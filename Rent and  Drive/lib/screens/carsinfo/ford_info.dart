// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import
import 'package:RentShow/screens/widget/car_info_bottom.dart';
import 'package:RentShow/screens/widget/car_models.dart';
import 'package:RentShow/screens/widget/info_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:unicons/unicons.dart';

class Ford_info extends StatefulWidget {
  const Ford_info({super.key});

  @override
  State<Ford_info> createState() => _Ford_infoState();
}

class _Ford_infoState extends State<Ford_info> {
  bool isReadmore = false;

  Widget buildText(String text) {
    final styleButton = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

    return ReadMoreText(
      text,
      trimLines: 3,
      trimMode: TrimMode.Line,
      style: TextStyle(fontSize: 15),
      lessStyle: styleButton,
      moreStyle: styleButton,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        //İnfo
        body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                  ),
                  //top car area
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        info_widget(
                          carimage: "assets/images/Shelby.png",
                          carname: "Ford Mustang",
                          carprice: "300/day",
                        ),
                      ],
                    ),
                  ),
                  // car text area
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      left: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Overview",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: buildText(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                car_info_bottom(
                                    personphoto: "assets/images/bmw_logo.png",
                                    personname: "Alperen Keskin",
                                    personlocate: "İstanbul, Türkiye",
                                    carcapacity: "2",
                                    cargeartype: "Auto",
                                    carhorsepower: "760",
                                    carairbags: "5",
                                    carstopspeed: "335",
                                    cargaslevel: "90")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        
      ),
    );
  }
}
