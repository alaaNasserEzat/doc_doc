import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xffEAF2FF),
        ),
        child: Center(
          child: Icon(
            Icons.notifications_none_sharp,
            color: AppColor.primaryColor,
          ),
        ),
      ),
      title: Text(
        "Appointment Reminder",
        style: AppTextStyles.interBold14Black,
      ),
      subtitle: Text(text, style: AppTextStyles.interRegular12gray),
    );
  }
}
