import 'package:cubit_restapi/controllers/products_controller_cubit/products_controller_cubit.dart';
import 'package:cubit_restapi/models/login_model.dart';
import 'package:cubit_restapi/views/custom_widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  Data data;
  Homepage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Center(
            child: Text(data.name),
          ),
        )
    );
  }
}
