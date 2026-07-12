import 'package:doc_doc/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomBlueContainer extends StatelessWidget {
  const CustomBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
    );
  }
}
