import 'package:doc_doc/core/features/home_feature/presentation/widgets/doctor_recommendation_widget.dart';
import 'package:flutter/material.dart';

class DoctorRecomendationList extends StatelessWidget {
  const DoctorRecomendationList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return DoctorRecommendationWidget();
        },
      ),
    );
  }
}
