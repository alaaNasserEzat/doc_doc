import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

Future<void> showSuccessDialog(BuildContext context, String message) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: const Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green, size: 40),
          SizedBox(width: 8),
          Text('Success'),
        ],
      ),
      content: Text(message, style: AppTextStyles.interBold14Black),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('OK', style: AppTextStyles.interBold18Black),
        ),
      ],
    ),
  );
}
