import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_widget.dart';
import 'package:flutter/material.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key, required this.doctors});
  final List<Doctor> doctors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: doctors.length,
          itemBuilder: (context, index) {
            return DoctorWidget(doctor: doctors[index]);
          },
        ),
      ),
    );
  }
}
