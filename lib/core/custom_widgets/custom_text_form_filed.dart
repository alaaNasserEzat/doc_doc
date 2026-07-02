import 'package:doc_doc/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    this.hintText,
    this.controller,
    this.validator,
    this.suffixIcon,
    this.obscureText,
    this.onChange,
  });
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool? obscureText;
  final Function(String s)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      obscureText: obscureText ?? false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        fillColor: AppColor.textfieldfillColor,
        filled: true,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14, color: AppColor.lightGrey2),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColor.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColor.lightGrey),
        ),
      ),
    );
  }
}
