import 'package:doc_doc/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomCircleAvater extends StatelessWidget {
  const CustomCircleAvater({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 100,
      backgroundColor: AppColor.whiteff,
      child: Icon(icon, color: AppColor.primaryColor, size: 100),
    );
  }
}
