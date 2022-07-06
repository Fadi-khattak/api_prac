import 'package:cubit_restapi/controllers/login_controller_cubit/login_controller_cubit.dart';
import 'package:cubit_restapi/controllers/products_controller_cubit/products_controller_cubit.dart';
import 'package:cubit_restapi/views/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>ProductsControllerCubit()),
        BlocProvider(create: (context)=>LoginControllerCubit()),
      ],
      child:  MaterialApp(
        home: Login(),
      ),
    );
  }
}
