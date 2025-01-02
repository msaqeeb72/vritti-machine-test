import 'package:flutter/cupertino.dart';
import 'package:responsive_framework/responsive_framework.dart';

extension ResponsiveExtension on BuildContext {
  bool isMobile() {
    return ResponsiveBreakpoints.of(this).isMobile;
  }
  bool isTablet() {
    return ResponsiveBreakpoints.of(this).isTablet;
  }
  bool isDesktop() {
    return ResponsiveBreakpoints.of(this).isDesktop;
  }
  bool largerThan(String device) {
    return ResponsiveBreakpoints.of(this).largerThan(device);
  }
  bool smallerThan(String device) {
    return ResponsiveBreakpoints.of(this).smallerThan(device);
  }
  bool largerOrEqualTo(String device) {
    return ResponsiveBreakpoints.of(this).largerOrEqualTo(device);
  }
  bool smallerOrEqualTo(String device) {
    return ResponsiveBreakpoints.of(this).smallerOrEqualTo(device);
  }
  bool largerThanTablet() {
    return ResponsiveBreakpoints.of(this).largerThan(TABLET);
  }
  bool largerThanMobile() {
    return ResponsiveBreakpoints.of(this).largerThan(MOBILE);
  }
  double getPaneProportion(){
    if(isMobile())
      return 1;
    else if(isTablet())
      return 0.7;
    else if(isDesktop())
      return 0.5;
    return 1.0;
  }
}