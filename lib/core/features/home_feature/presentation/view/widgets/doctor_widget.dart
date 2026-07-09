import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class DoctorWidget extends StatelessWidget {
  const DoctorWidget({super.key, required this.doctor, this.onTap});
  final Doctor doctor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Row(
          spacing: 10,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(16),
              child: Image.asset("assets/images/Image (1).png"),
            ),
            // Spacer(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    doctor.name ?? "",
                    style: AppTextStyles.interBold18Black,
                  ),
                  Text(
                    "${doctor.address}",
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.interMedium12Gray75,
                  ),
                  Row(
                    children: [
                      Text(
                        "${doctor.appointPrice}",
                        style: AppTextStyles.interMedium12Gray75,
                      ),
                      Text("  \$", style: TextStyle(color: AppColor.amber)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
