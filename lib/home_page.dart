// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:indianrestaurants/contact_section.dart';
import 'package:indianrestaurants/hero_section.dart';
import 'package:indianrestaurants/latest_works_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HeroSection(),
          LatestWorksSection(),
          ContactSection(),
          Container(
            color: Colors.black,
            padding: EdgeInsets.only(top: 120),
            child: Center(
              child: Text(
                "Have a good day !",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
