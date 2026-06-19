import 'package:doc_doc/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, required this.onPressed, required this.text});
final VoidCallback onPressed;
final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:  AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
