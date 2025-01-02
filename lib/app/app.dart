import 'package:flutter/material.dart';
import 'package:machine_test/ui/screen/home_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget{
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context,orientation,type) {
          return MaterialApp(
            title: 'IndiKendra',
            builder: (context, child)=> ResponsiveBreakpoints.builder(
              child: child!,
              breakpoints: [
                const Breakpoint(start: 0, end: 450, name: MOBILE),
                const Breakpoint(start: 451, end: 750, name: TABLET),
                const Breakpoint(start: 751, end: 1920, name: DESKTOP),
              ],
            ),
            home: HomeScreen(),
          );
        }
    );
  }
}