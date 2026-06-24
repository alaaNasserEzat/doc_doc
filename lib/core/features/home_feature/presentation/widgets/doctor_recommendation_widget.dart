import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class DoctorRecommendationWidget extends StatelessWidget {
  const DoctorRecommendationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset("assets/images/Image (1).png"),
          Spacer(),
          Column(
            spacing: 5,
            children: [
              Text("Dr. Randy Wigham", style: AppTextStyles.interBold18Black),
              Row(
                children: [
                  Text("General  ", style: AppTextStyles.interMedium12Gray75),
                  Container(width: 2, height: 3, color: AppColor.gray61),
                  Text(
                    "  RSUD Gatot Subroto",
                    style: AppTextStyles.interMedium12Gray75,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star, color: AppColor.amber),
                  Text(
                    " 4.8 (4,279 reviews)",
                    style: AppTextStyles.interMedium12Gray75,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
