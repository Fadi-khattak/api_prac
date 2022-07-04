

import 'package:cubit_restapi/controllers/products_controller_cubit/products_controller_cubit.dart';
import'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: BlocBuilder<ProductsControllerCubit, ProductsControllerState>(
        builder: (context, state) {
          if(state is ProductsControllerInitial)
            {
              return const CircularProgressIndicator(color: Colors.yellow,);
            }
          else if(state is ProductsLoadingState) {
            return  const Center(
              child: CircularProgressIndicator(color: Colors.blue,),
            );
          }
          else if (state is ErrorState){
            return const Center(child: Icon(Icons.error,size: 50,color: Colors.red,),);
          }
          else if(state is ProductsLoadedState) {
            return ListView.builder(
              itemCount: state.products.products.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.network(state.products.products[index].images.first),
                      ),
                       Expanded(
                        child: Text(
                          state.products.products[index].title, style: TextStyle(color: Colors.black,
                            fontSize: 16),),
                      ),
                       Expanded(
                        child: Text("\$ ${state.products.products[index].price}"),
                      )
                    ],
                  ),
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
