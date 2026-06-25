import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/booking_widget.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_bloc_builder.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_specialest_bloc_builder.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/see_all_row.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/welcom_widget.dart';
import 'package:doc_doc/core/helper/extention.dart';
import 'package:doc_doc/core/routs/routes.dart';
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
              SeeAllRow(
                text: "Doctor Speciality",
                onTap: () {
                  context.pushNamed(Routes.doctorSpecialestScreen);
                },
              ),
              DoctorSpecialestBlocBuilder(),
              SeeAllRow(text: "Recommendation Doctor"),
              DoctorBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
