// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:indianrestaurants/responsive_maker.dart';

class LatestWorksSection extends StatelessWidget {
  LatestWorksSection({Key? key}) : super(key: key);

  late double screenWidth;
  late ResponsiveMaker responsiveMaker;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    responsiveMaker = ResponsiveMaker(screenWidth);

    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 120,
          horizontal: responsiveMaker.setDoubleAsPerConstraints(
              forPhone: 20, forTablet: 80, forDesktop: 140)),
      color: Colors.black,
      child: Column(
        children: [
          Text(
            "Latest Works",
            style: TextStyle(
                fontSize: 64,
                height: 0.9,
                color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            height: 60,
          ),
          Flex(
            mainAxisSize: responsiveMaker.setAxisSizeAsPerBreakPoint(
              forPhone: MainAxisSize.min,
              forTablet: MainAxisSize.min,
              forDesktop: MainAxisSize.max,
            ),
            direction: responsiveMaker.setAxisAsPerBreakPoint(
                forPhone: Axis.vertical,
                forTablet: Axis.vertical,
                forDesktop: Axis.horizontal),
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    image: AssetImage("images/bmandar.png"),
                    height: 300,
                    width: 800,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "bangloremandarin.com",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 24),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "This is a concept website recently built for a chinese restaurant at the heart of city of Bengaluru . The website&aposs intent is to help increase the restaurant&aposs sales by its conversion centric design",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Flex(
            verticalDirection: VerticalDirection.up,
            mainAxisSize: responsiveMaker.setAxisSizeAsPerBreakPoint(
              forPhone: MainAxisSize.min,
              forTablet: MainAxisSize.min,
              forDesktop: MainAxisSize.max,
            ),
            direction: responsiveMaker.setAxisAsPerBreakPoint(
                forPhone: Axis.vertical,
                forTablet: Axis.vertical,
                forDesktop: Axis.horizontal),
            children: [
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "indiangrill.com",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 24),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "This is a concept website for a north indian restaurant named IndianGrillRoom at the heart of Gurugram India. The website follows all the latest best practices that make it conversion centric",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    image: AssetImage("images/indiang.png"),
                    height: 300,
                    width: 800,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
