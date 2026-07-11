import 'package:doc_doc/core/custom_widgets/custom_app_bar.dart';
import 'package:doc_doc/core/custom_widgets/custom_circle_avater.dart';
import 'package:doc_doc/core/features/profile/presentation/view/widgets/notification_item.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key, required this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(context: context, title: "My Notification"),
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: text != null
              ? NotificationItem(text: text!)
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 200),

                    CustomCircleAvater(icon: Icons.notifications_off_outlined),
                    Text(
                      textAlign: TextAlign.center,
                      "No notifications yet. New notifications will appear here when available.",
                      style: AppTextStyles.interRegular12gray61.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
