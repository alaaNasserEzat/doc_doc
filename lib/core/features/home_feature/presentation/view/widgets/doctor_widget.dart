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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset("assets/images/Image (1).png"),
            Spacer(),
            Column(
              spacing: 5,
              children: [
                Text(doctor.name ?? "", style: AppTextStyles.interBold18Black),
                Row(
                  spacing: 15,
                  children: [
                    Text(
                      "${doctor.specialization?.name ?? ""}",
                      style: AppTextStyles.interMedium12Gray75,
                    ),
                    Container(color: AppColor.grey, width: 2, height: 30),
                    Text(
                      "${doctor.address}",
                      style: AppTextStyles.interMedium12Gray75,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "${doctor.appointPrice}",
                      style: AppTextStyles.interMedium12Gray75,
                    ),
                    Text(" \$", style: TextStyle(color: AppColor.amber)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
