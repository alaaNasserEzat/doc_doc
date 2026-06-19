
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HaveAccountWidget extends StatelessWidget {
  const HaveAccountWidget({super.key, required this.text, required this.text2, required this.onTap});
final String text;
final String text2;
final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return RichText(text:   TextSpan(
              text: "$text2 have an account? ",
              style: AppTextStyles.interRegular12black,
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap =onTap,
                  text: text,
                  style: AppTextStyles.interRegular12blue,
                )
              ]
             ));
  }
}