// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:indianrestaurants/responsive_maker.dart';

class HeroSection extends StatelessWidget {
  HeroSection({Key? key}) : super(key: key);
  late double screenWidth;
  late ResponsiveMaker responsiveMaker;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    responsiveMaker = ResponsiveMaker(screenWidth);
    return Container(
      constraints:
          BoxConstraints(minHeight: MediaQuery.of(context).size.height),
      padding: EdgeInsets.symmetric(
          horizontal: responsiveMaker.setDoubleAsPerConstraints(
              forPhone: 20, forTablet: 60, forDesktop: 140),
          vertical: 20),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/hero.png"), fit: BoxFit.cover),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "I make stunning websites for Indian Restaurants ",
                  style: TextStyle(
                      fontSize: responsiveMaker.setDoubleAsPerConstraints(
                          forPhone: 48, forTablet: 60, forDesktop: 60),
                      height: 0.9,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Not all websites are the same! , some are made such that target the user psychology and end up making your customers 😊, thats where I master!",
                  style: TextStyle(
                      fontSize: 24, color: Theme.of(context).primaryColor),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Theme.of(context).primaryColor),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Contact Now",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
            flex: responsiveMaker.setIntAsPerConstraints(
                forPhone: 1, forTablet: 3, forDesktop: 2),
          ),
          Expanded(
            child: Container(),
            flex: responsiveMaker.setIntAsPerConstraints(
                forPhone: 0, forTablet: 1, forDesktop: 1),
          )
        ],
      ),
    );
  }
}
