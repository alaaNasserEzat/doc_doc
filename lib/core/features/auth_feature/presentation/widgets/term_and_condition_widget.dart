import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermAndConditionWidget extends StatelessWidget {
  const TermAndConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  RichText(
      text: TextSpan(
        text: "By logging in, you agree to our ",
        style: AppTextStyles.interRegular12gray3.copyWith(wordSpacing: 1.3),
        children: [
          TextSpan(
            text: "Terms & Conditions",
            style: AppTextStyles.interRegular12black,
            recognizer: TapGestureRecognizer()..onTap = (){
              // Handle Terms & Conditions tap
            },
          ),
          TextSpan(
            text: " and ",
            style: AppTextStyles.interRegular12gray3,
          ),
          TextSpan(
            text: "Privacy Policy",

            style: AppTextStyles.interRegular12black,
            recognizer: TapGestureRecognizer()..onTap = (){
              // Handle Privacy Policy tap
            },
          ),
        ],
      ),
    );
  }
}