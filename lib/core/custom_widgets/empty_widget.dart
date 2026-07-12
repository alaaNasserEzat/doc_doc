import 'package:doc_doc/core/custom_widgets/custom_circle_avater.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          CustomCircleAvater(icon: icon),
          Text(
            textAlign: TextAlign.center,
            text,
            style: AppTextStyles.interRegular12gray61.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
