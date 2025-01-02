import 'package:flutter/cupertino.dart';

class CenterIf extends StatelessWidget{
  final bool when;
  final Widget child;
  CenterIf({
    required this.when,
    required this.child
  });
  @override
  Widget build(BuildContext context) {
    if(when)
      return Center(child: child,);
    return child;
  }
}