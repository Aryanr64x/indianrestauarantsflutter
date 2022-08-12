// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:indianrestaurants/responsive_maker.dart';

class ContactSection extends StatelessWidget {
  ContactSection({Key? key}) : super(key: key);
  late ResponsiveMaker responsiveMaker;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    responsiveMaker = ResponsiveMaker(screenWidth);
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(
          vertical: 120,
          horizontal: responsiveMaker.setDoubleAsPerConstraints(
              forPhone: 20, forTablet: 60, forDesktop: 140)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Text(
            "Wanna connect with me ?",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: responsiveMaker.setDoubleAsPerConstraints(
                    forPhone: 48, forTablet: 64, forDesktop: 64),
                height: 0.9,
                color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Please Enter you name ..",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Please Enter you name ..",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Please Enter you name ..",
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Enter your message ..",
            ),
            maxLines: 4,
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.black),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "OR",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 36.0,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Contact Me on Whatsapp @ 6290341107",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 28.0,
            ),
          ),
        ],
      ),
    );
  }
}
