import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_widget.dart';
import 'package:doc_doc/core/helper/extention.dart';
import 'package:doc_doc/core/routs/routes.dart';
import 'package:flutter/material.dart';

// class DoctorList extends StatelessWidget {
//   const DoctorList({super.key, required this.doctors});
//   final List<Doctor> doctors;
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       itemCount: doctors.length,
//       itemBuilder: (context, index) {
//         return DoctorWidget(
//           doctor: doctors[index],
//           onTap: () {
//             context.pushNamed(
//               Routes.doctorDetailsScreen,
//               arguments: doctors[index],
//             );
//           },
//         );
//       },
//     );
//   }
// }
class DoctorList extends StatelessWidget {
  const DoctorList({super.key, required this.doctors});

  final List<Doctor> doctors;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return DoctorWidget(
          doctor: doctors[index],
          onTap: () {
            context.pushNamed(
              Routes.doctorDetailsScreen,
              arguments: doctors[index],
            );
          },
        );
      }, childCount: doctors.length),
    );
  }
}
