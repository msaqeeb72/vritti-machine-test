import 'package:flutter/cupertino.dart';

class ExpandedIf extends StatelessWidget{
  final bool when;
  final Widget child;
  ExpandedIf({
    required this.when,
    required this.child
});
  @override
  Widget build(BuildContext context) {
    if(when){
      return Expanded(child: child);
    }
    return child;
  }
}