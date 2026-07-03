import 'package:doc_doc/core/features/home_feature/data/models/city.dart';
import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';
import 'package:doc_doc/core/features/home_feature/data/models/governrate.dart';
import 'package:doc_doc/core/features/home_feature/data/models/specialization.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_list.dart';
import 'package:flutter/widgets.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonizerDoctorList extends StatelessWidget {
  const SkeletonizerDoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    final fakeDoctors = List.filled(
      3,
      Doctor(
        gender: "male",
        description: "aaaaaaaaaaa",
        appointPrice: 100,
        specialization: Specialization(id: 1, name: "ahamed"),
        id: 1,
        name: "ahamd................",
        email: "a@g.com.........",
        address: "agggggggg.......",
        city: City(
          id: 1,
          name: "city",
          governrate: Governrate(id: 1, name: "agggadddddd"),
        ),
      ),
    );
    return Skeletonizer(enabled: true, child: DoctorList(doctors: fakeDoctors));
  }
}
