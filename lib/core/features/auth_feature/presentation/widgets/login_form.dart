import 'package:doc_doc/core/custom_widgets/custom_btn.dart';
import 'package:doc_doc/core/custom_widgets/custom_dailog.dart';
import 'package:doc_doc/core/custom_widgets/custom_text_form_filed.dart';
import 'package:doc_doc/core/features/auth_feature/data/models/login_request.dart';
import 'package:doc_doc/core/features/auth_feature/presentation/view_model/login_cubit.dart';
import 'package:doc_doc/core/features/auth_feature/presentation/view_model/login_state.dart';
import 'package:doc_doc/core/features/auth_feature/presentation/widgets/forget_password_row.dart';
import 'package:doc_doc/core/helper/extention.dart';
import 'package:doc_doc/core/routs/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 15,
        children: [
          CustomTextFormFiled(hintText: "Email", controller: emailController),
          CustomTextFormFiled(
            hintText: "Password",
            controller: passwordController,
          ),
          ForgetPasswordRow(),
          SizedBox(height: 20),
          BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginFailure) {
                print(
                  "Login Failure: ${state.message.getAllErrorMessage() ?? "fffffffff"}",
                );
                showErrorDialog(context, state.message.getAllErrorMessage());
              }
              if (state is LoginSuccess) {
                showSuccessSnakBar(context, "Login successful!");
                context.pushReplacementNamed(Routes.homeScreen);
              }
            },
            builder: (context, state) {
              return state is LoginLoading
                  ? CircularProgressIndicator()
                  : CustomBtn(
                      onPressed: () {
                        context.read<LoginCubit>().login(
                          LoginRequest(
                            email: emailController.text,
                            password: passwordController.text,
                          ),
                        );
                      },
                      text: "Login",
                    );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
