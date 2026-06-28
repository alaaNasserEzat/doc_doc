import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialestWidget extends StatelessWidget {
  const DoctorSpecialestWidget({
    super.key,
    required this.text,
    required this.image,
    this.onTap,
    required this.isSelected,
  });
  final String text;
  final String image;
  final void Function()? onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        spacing: 5,
        children: [
          GestureDetector(
            onTap: onTap,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: isSelected
                  ? AppColor.primaryColor
                  : AppColor.whiteff,
              child: CircleAvatar(
                radius: 28,
                backgroundColor: AppColor.whiteff,
                child: Image.asset(image, width: 30, height: 30),
              ),
            ),
          ),
          Text(
            text,
            style: AppTextStyles.interRegular12black.copyWith(
              fontSize: isSelected ? 15 : 12,
            ),
          ),
        ],
      ),
    );
  }
}
