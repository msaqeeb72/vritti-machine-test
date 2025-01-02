import 'package:core/core.dart';
import 'package:core/location/dialog/location_not_enable_dialog.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../location_utils.dart';

class LocationDeniedForeverDialog extends StatelessWidget{
  final Function? onLocationEnabled;
  LocationDeniedForeverDialog([this.onLocationEnabled]);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Location Permission Denied Permanently!"),
      content: Text("You need to allow location permission from app settings."),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("No")),
        TextButton(onPressed: ()async{
          final result = await Geolocator.openAppSettings();
          if(await LocationUtils.hasPermission() && onLocationEnabled != null){
            if(await LocationUtils.isEnable()){
              onLocationEnabled?.call();
            } else {
              showAdaptiveDialog(context: context, builder: (builder)=>LocationNotEnableDialog(onLocationEnabled));
            }
            Navigator.pop(context);
          }

        }, child: Text("Yes"))
      ],
    );
  }
}