import 'package:doc_doc/core/features/home_feature/presentation/widgets/doctor_specialest_widget.dart';
import 'package:doc_doc/core/images/app_assets.dart';
import 'package:flutter/material.dart';

class DoctorSpecialestRow extends StatelessWidget {
  const DoctorSpecialestRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DoctorSpecialestWidget(text: "General", image: AppAssets.brain),
        DoctorSpecialestWidget(text: "Neurologic", image: AppAssets.brain),
        DoctorSpecialestWidget(text: "Pediatric", image: AppAssets.brain),
        DoctorSpecialestWidget(text: "Radiology", image: AppAssets.brain),
      ],
    );
  }
}
