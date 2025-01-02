import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/bloc/home_bloc.dart';
import 'package:machine_test/bloc/home_event.dart';
import 'package:machine_test/bloc/home_state.dart';
import 'package:machine_test/model/user_model.dart';
import 'package:machine_test/ui/widget/user_card.dart';

class HomeView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeViewState();
  }

}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<HomeBloc,HomeState>(
      listener: (context,state){
        if(state is UpdateAllUsersHomeState){
          _tabController = TabController(length: state.user.length, vsync: this);
        }
      },
      builder: (context,state) {
        final homeBloc = context.read<HomeBloc>();
        final List<UserModel> users = (state is UpdateAllUsersHomeState)?state.user:[];
        if(users.isEmpty) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Users"),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap:(){
                    homeBloc.add(GetAllUserHomeEvent(true));
                  },child: Icon(Icons.sync)),
                )
              ],
            ),
            body: Center(
              child: Text("No Users Found, Press Refresh Button to load."),
            ),
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: Text("Users"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(onTap:(){
                  homeBloc.add(GetAllUserHomeEvent(true));
                },child: Icon(Icons.sync)),
              )
            ],
            bottom: TabBar(
              tabAlignment: TabAlignment.start,
              controller: _tabController,
              isScrollable: true,
              tabs: users.map((user) {
                return Tab(
                  text: '${user.firstName} ${user.lastName}', // Tab title with user name
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: users.map((user) {
              return SizedBox(height:33,child: UserDetail(user: user,
                onEdit: (){
                  _showEditDialog(context, user, (newUser){
                    homeBloc.add(UpdateUserHomeEvent(newUser));
                  });
                },
                onDelete: (){
                 homeBloc.add(DeleteUserHomeEvent(user));
                } ,)
              );
            }).toList())
        );
      }
    );
  }
  void _showEditDialog(BuildContext context, UserModel user, Function(UserModel) onSave) {
    final TextEditingController firstNameController = TextEditingController(text: user.firstName);
    final TextEditingController lastNameController = TextEditingController(text: user.lastName);
    final TextEditingController emailController = TextEditingController(text: user.email);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit User Info'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: firstNameController,
                decoration: InputDecoration(labelText: 'First Name'),
              ),
              TextField(
                controller: lastNameController,
                decoration: InputDecoration(labelText: 'Last Name'),
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Update user information
                final updatedUser = UserModel(
                  id: user.id,
                  firstName: firstNameController.text,
                  lastName: lastNameController.text,
                  avatar: user.avatar,  // avatar stays the same
                  email: emailController.text,
                );
                onSave(updatedUser);
                Navigator.pop(context);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}