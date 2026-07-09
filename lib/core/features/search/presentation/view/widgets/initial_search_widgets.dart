import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class InitialSearchWidgets extends StatelessWidget {
  const InitialSearchWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 5,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundColor: AppColor.whiteff,
            child: Icon(
              Icons.search_off_rounded,
              color: AppColor.primaryColor,
              size: 100,
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            "Find trusted doctors and schedule your appointment in just a few taps.",
            style: AppTextStyles.interRegular12gray61.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
