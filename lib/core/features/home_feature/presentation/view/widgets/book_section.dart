import 'package:doc_doc/core/custom_widgets/custom_btn.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class BookSection extends StatelessWidget {
  const BookSection({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Row(
        children: [
          Text("Price: \$${text}", style: AppTextStyles.interBold18Black),
          const Spacer(),
          CustomBtn(onPressed: () {}, text: "Book Now"),
        ],
      ),
    );
  }
}
