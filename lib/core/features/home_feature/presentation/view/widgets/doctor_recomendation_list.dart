import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';
import 'package:doc_doc/core/features/home_feature/data/models/specialization_response.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_recommendation_widget.dart';
import 'package:flutter/material.dart';

class DoctorRecomendationList extends StatelessWidget {
  const DoctorRecomendationList({
    super.key,
    required this.specializationRespons,
  });
  final SpecializationResponse specializationRespons;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: specializationRespons.data!.length,
        itemBuilder: (context, index) {
          return DoctorRecommendationWidget(
            doctor: specializationRespons.data![index].doctors![index],
          );
        },
      ),
    );
  }
}
