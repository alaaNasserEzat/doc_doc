import 'package:doc_doc/features/auth_feature/presentation/widgets/have_account_widget.dart';
import 'package:doc_doc/features/auth_feature/presentation/widgets/login_form.dart';
import 'package:doc_doc/features/auth_feature/presentation/widgets/login_welcom_section.dart';
import 'package:doc_doc/features/auth_feature/presentation/widgets/term_and_condition_widget.dart';
import 'package:doc_doc/core/routs/routes.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                LoginWelcomSection(),
                LoginForm(),
                SizedBox(height: 20),
                TermAndConditionWidget(),
                SizedBox(height: 20),
                HaveAccountWidget(
                  text2: "Don't",
                  text: "Sign Up",
                  onTap: () {
                    Navigator.pushNamed(context, Routes.signUpScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
