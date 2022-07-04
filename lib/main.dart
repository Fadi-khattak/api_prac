import 'package:cubit_restapi/controllers/products_controller_cubit/products_controller_cubit.dart';
import 'package:cubit_restapi/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        BlocProvider(create: (context)=>ProductsControllerCubit())
      ],
      child: const MaterialApp(
        home: Homepage(),
      ),
    );
  }
}
