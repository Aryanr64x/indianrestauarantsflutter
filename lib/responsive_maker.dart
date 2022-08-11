import 'package:flutter/cupertino.dart';

class ResponsiveMaker {
  final double screenWidth;
  ResponsiveMaker(this.screenWidth);
  int setIntAsPerConstraints(
      {required int forPhone,
      required int forTablet,
      required int forDesktop}) {
    if (screenWidth > 1100) {
      return forDesktop;
    } else if (screenWidth <= 1100 && screenWidth > 750) {
      return forTablet;
    } else {
      return forPhone;
    }
  }

  double setDoubleAsPerConstraints(
      {required double forPhone,
      required double forTablet,
      required double forDesktop}) {
    if (screenWidth > 1100) {
      return forDesktop;
    } else if (screenWidth <= 1100 && screenWidth > 750) {
      return forTablet;
    } else {
      return forPhone;
    }
  }

  Axis setAxisAsPerBreakPoint(
      {required forPhone, required forTablet, required forDesktop}) {
    if (screenWidth > 1100) {
      return forPhone;
    } else if (screenWidth <= 1100 && screenWidth > 750) {
      return forTablet;
    } else {
      return forDesktop;
    }
  }

  MainAxisSize setAxisSizeAsPerBreakPoint(
      {required forPhone, required forTablet, required forDesktop}) {
    if (screenWidth > 1100) {
      return forPhone;
    } else if (screenWidth <= 1100 && screenWidth > 750) {
      return forTablet;
    } else {
      return forDesktop;
    }
  }
}
