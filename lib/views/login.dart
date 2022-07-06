import 'package:cubit_restapi/controllers/login_controller_cubit/login_controller_cubit.dart';
import 'package:cubit_restapi/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  final txtEmail = TextEditingController();
  final txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginControllerCubit, LoginControllerState>(
      listener: (context, state) {
        if(state is LoginLoadedState)
          {
            if(state.login!.code==0)
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>Homepage(data: state.login!.data!)
                    ));
              }
          }
      },
      builder: (context, state) {
        if(state is LoginLoadingState)
          {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        else if(state is Error)
          {
            return const Center(
              child: Icon(Icons.error,color: Colors.red,size: 50,),
            );
          }
        else {
          return Scaffold(
            appBar: AppBar(),
            body: ListView(
              children: [
                TextField(
                  controller: txtEmail,
                  decoration: const InputDecoration(
                    hintText: "Email",
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  controller: txtPassword,
                  decoration: const InputDecoration(
                    hintText: "password",
                  ),
                ),

              ],
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.yellow,
              onPressed: () {
                context.read<LoginControllerCubit>().Login(
                    txtEmail.text,
                    txtPassword.text,
                );
              },
              child: const Icon(Icons.login),
            ),
          );
        }
      },
    );
  }
}
