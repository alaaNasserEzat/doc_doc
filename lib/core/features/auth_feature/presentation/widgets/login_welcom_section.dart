import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class LoginWelcomSection extends StatelessWidget {
  const LoginWelcomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
