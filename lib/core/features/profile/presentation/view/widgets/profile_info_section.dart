import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({
    super.key,
    required this.name,
    required this.email,
  });
  final String name;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: AppColor.lightGrey,
          radius: 40,
          child: Icon(Icons.person, size: 30, color: AppColor.primaryColor),
        ),

        Text(name, style: AppTextStyles.interBold18Black),

        Text(email, style: AppTextStyles.interRegular12blue),
      ],
    );
  }
}
