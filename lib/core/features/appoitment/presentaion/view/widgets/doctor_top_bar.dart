import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/custom_blue_container.dart';
import 'package:doc_doc/core/helper/extention.dart';
import 'package:doc_doc/core/images/app_assets.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class DoctorTopBar extends StatelessWidget {
  const DoctorTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        CustomBlueContainer(),
        Positioned(
          top: 10,
          left: 10,
          child: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.arrow_back_ios, color: AppColor.white),
          ),
        ),
        Positioned(
          top: 20,
          child: Text(
            "Doctor Appointment",
            style: AppTextStyles.interMedium18White,
          ),
        ),
        Positioned(
          bottom: -40,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: AppColor.lightGrey,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(AppAssets.doctor, height: 110),
          ),
        ),
      ],
    );
  }
}
