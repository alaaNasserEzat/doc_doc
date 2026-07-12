import 'package:doc_doc/core/custom_widgets/custom_btn.dart';
import 'package:doc_doc/core/images/app_assets.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class BookingWidget extends StatelessWidget {
  const BookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 167,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: AppColor.primaryColor,
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              Text(
                "Book and\nschedule with\nnearest doctor",
                style: AppTextStyles.interMedium18White,
              ),
              CustomBtn(
                width: 109,
                height: 50,

                shap: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(32),
                ),
                onPressed: () {},
                text: "Find Nearby",
                textStyle: AppTextStyles.interRegular12blue,
                color: AppColor.white,
              ),
            ],
          ),
        ),
        Positioned(
          top: -20,
          right: 16,
          bottom: 8,

          child: Image.asset(AppAssets.doctor),
        ),
      ],
    );
  }
}
