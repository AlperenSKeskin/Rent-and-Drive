// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import
import 'package:RentShow/screens/widget/car_info_bottom.dart';
import 'package:RentShow/screens/widget/info_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:unicons/unicons.dart';

class Rolls_Royce_info extends StatefulWidget {
  const Rolls_Royce_info({super.key});

  @override
  State<Rolls_Royce_info> createState() => Rolls_Royce_info_infoState();
}

class Rolls_Royce_info_infoState extends State<Rolls_Royce_info> {
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
                  //top car area
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        info_widget(
                          carimage: "assets/images/cullinan.png",
                          carname: "Rolls Royce Cullinan",
                          carprice: "150/day",
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
                                    carhorsepower: "530",
                                    carairbags: "5",
                                    carstopspeed: "315",
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
