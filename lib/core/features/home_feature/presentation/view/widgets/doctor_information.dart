import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class DoctorInformation extends StatelessWidget {
  const DoctorInformation({super.key, required this.doctor});

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(doctor.name!, style: AppTextStyles.interBold18Black),
          const SizedBox(height: 4),
          Text(
            '${doctor.degree} - ${doctor.specialization?.name!}',
            style: AppTextStyles.interRegular12blue,
          ),
          Text('${doctor.phone}', style: AppTextStyles.interRegular12blue),
        ],
      ),
    );
  }
}
