import 'package:doc_doc/core/features/home_feature/presentation/widgets/booking_widget.dart';
import 'package:doc_doc/core/features/home_feature/presentation/widgets/doctor_recomendation_list.dart';
import 'package:doc_doc/core/features/home_feature/presentation/widgets/doctor_specialest_row.dart';
import 'package:doc_doc/core/features/home_feature/presentation/widgets/see_all_row.dart';
import 'package:doc_doc/core/features/home_feature/presentation/widgets/welcom_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomWidget(),
              BookingWidget(),
              SeeAllRow(text: "Doctor Speciality"),
              DoctorSpecialestRow(),
              SeeAllRow(text: "Recommendation Doctor"),
              DoctorRecomendationList(),
            ],
          ),
        ),
      ),
    );
  }
}
