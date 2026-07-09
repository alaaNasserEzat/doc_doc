import 'package:doc_doc/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.onPressed,
    required this.text,
    this.textStyle,
    this.color,
    this.shap,
    this.width,
    this.height,
  });
  final VoidCallback onPressed;
  final String text;
  final TextStyle? textStyle;
  final Color? color;
  final OutlinedBorder? shap;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 311,
      height: height ?? 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColor.primaryColor,
          shape:
              shap ??
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
        ),
        child: Text(
          text,
          style: textStyle ?? TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
