// ignore_for_file: unnecessary_import, camel_case_types, prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class cards extends StatelessWidget {
  const cards({
    Key? key,
    required this.cardname,
    required this.cardnumber,
    required this.cardccv,
  }) : super(key: key);

  final String cardnumber;
  final String cardccv;
  final String cardname;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(image:  AssetImage("assets/images/creditcard.png") ,fit: BoxFit.cover),
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
            child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Card Name:"),
                    SizedBox(width: 5,),
                    Text(cardname),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Card Number:"),
                        SizedBox(width: 5,),
                        Text(cardnumber),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Card CCV:"),
                        SizedBox(width: 5,),
                        Text(cardccv),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
