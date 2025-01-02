import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/model/user_model.dart';

class UserDetail extends StatelessWidget {
  final UserModel user;
  final Function onEdit;
  final Function onDelete;

  const UserDetail({super.key,
    required this.user,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Avatar Image
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton.outlined(onPressed: (){
                onDelete();
              }, icon: Icon(Icons.delete)),
              IconButton.outlined(onPressed: (){
                onEdit();
              }, icon: Icon(Icons.edit))
            ],
          ),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(user.avatar!),
          ),
          SizedBox(width: 16),
          // User Info
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user.firstName} ${user.lastName}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                user.email!,
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          // Edit and Delete Buttons
        ],
      ),
    );
  }
}