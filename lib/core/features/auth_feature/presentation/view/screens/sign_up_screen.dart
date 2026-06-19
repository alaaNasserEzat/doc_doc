import 'package:doc_doc/core/features/auth_feature/presentation/widgets/have_account_widget.dart';
import 'package:doc_doc/core/features/auth_feature/presentation/widgets/sign_up_form.dart';
import 'package:doc_doc/core/features/auth_feature/presentation/widgets/term_and_condition_widget.dart';
import 'package:doc_doc/core/routs/routes.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SignUPScreen extends StatefulWidget {
  const SignUPScreen({super.key});

  @override
  State<SignUPScreen> createState() => _SignUPScreenState();
}

class _SignUPScreenState extends State<SignUPScreen> {
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
                  "Create Account",
                  style: AppTextStyles.interBold32Blue.copyWith(fontSize: 23),
                ),
              ),
              Text(
                "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                style: AppTextStyles.interRegular12gray.copyWith(
                  fontSize: 14,
                  wordSpacing: 2,
                  height: 2,
                ),
              ),
              SignUpForm(),
              SizedBox(height: 20),
              TermAndConditionWidget(),
              SizedBox(height: 20),
              HaveAccountWidget(
                text2: "Already",
                text: "Login",
                onTap: () {
                  Navigator.pushNamed(context, Routes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
