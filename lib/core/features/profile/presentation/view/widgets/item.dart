import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });
  final String text;
  final IconData icon;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        Icon(icon, size: 24, color: AppColor.primaryColor),
        Text(text, style: AppTextStyles.interMedium12Gray75),
        Spacer(),
        IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: AppColor.primaryColor,
          ),
          onPressed: onTap,
        ),
      ],
    );
  }
}
