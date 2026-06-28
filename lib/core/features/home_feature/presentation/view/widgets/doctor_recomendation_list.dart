import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_recommendation_widget.dart';
import 'package:flutter/material.dart';

class DoctorRecomendationList extends StatelessWidget {
  const DoctorRecomendationList({super.key, required this.doctors});
  final List<Doctor> doctors;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: doctors.length,
      itemBuilder: (context, index) {
        return DoctorRecommendationWidget(doctor: doctors[index]);
      },
    );
  }
}
