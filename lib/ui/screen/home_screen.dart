import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/bloc/home_bloc.dart';

import 'home_view.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context)=>serviceLocator.get(),
      child: HomeView(),
    );
  }
}