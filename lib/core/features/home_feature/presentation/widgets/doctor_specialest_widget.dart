import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialestWidget extends StatelessWidget {
  const DoctorSpecialestWidget({
    super.key,
    required this.text,
    required this.image,
    this.onTap,
  });
  final String text;
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 32,
            backgroundColor: AppColor.whiteff,
            child: Image.asset(image),
          ),
        ),
        Text(text, style: AppTextStyles.interRegular12black),
      ],
    );
  }
}
