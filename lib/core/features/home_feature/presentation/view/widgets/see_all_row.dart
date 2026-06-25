import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SeeAllRow extends StatelessWidget {
  const SeeAllRow({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: AppTextStyles.interSemiBold18Black),
        Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Text("See All", style: AppTextStyles.interRegular12blue),
        ),
      ],
    );
  }
}
