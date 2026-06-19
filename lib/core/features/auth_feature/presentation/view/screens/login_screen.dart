
import 'package:doc_doc/core/features/auth_feature/presentation/widgets/have_account_widget.dart';
import 'package:doc_doc/core/features/auth_feature/presentation/widgets/login_form.dart';
import 'package:doc_doc/core/features/auth_feature/presentation/widgets/term_and_condition_widget.dart';
import 'package:doc_doc/core/routs/routes.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 15,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Welcome Back",
                  style: AppTextStyles.interBold32Blue.copyWith(fontSize: 23),
                ),
              ),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: AppTextStyles.interRegular12gray.copyWith(
                  fontSize: 14,
                  height: 2,
                ),
              ),
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
    );
  }
}
