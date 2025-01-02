import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../location_utils.dart';

class LocationNotEnableDialog extends StatelessWidget{
  final Function? onLocationEnabled;
  LocationNotEnableDialog([this.onLocationEnabled]);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Location disabled!!"),
      content: Text("Do you want to enable location."),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("No")),
        TextButton(onPressed: ()async{
          final result = await Geolocator.openLocationSettings();
          if(await LocationUtils.isEnable() && onLocationEnabled != null){
            onLocationEnabled!();
          }
          Navigator.pop(context);

        }, child: Text("Yes"))
      ],
    );
  }
}