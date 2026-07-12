import 'package:doc_doc/core/features/home_feature/data/models/city.dart';
import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';
import 'package:doc_doc/core/features/home_feature/data/models/governrate.dart';
import 'package:doc_doc/core/features/home_feature/data/models/specialization_data.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_specialest_list.dart';
import 'package:flutter/widgets.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonizerSpecialestList extends StatelessWidget {
  const SkeletonizerSpecialestList({super.key});

  @override
  Widget build(BuildContext context) {
    final fackData = List.filled(
      6,
      SpecializationData(
        id: 1,
        name: "aaaaaaa",
        doctors: [
          Doctor(
            id: 1,
            name: "ahamd",
            email: "a@g.com",
            address: "agggggggg",
            city: City(
              id: 1,
              name: "city",
              governrate: Governrate(id: 1, name: "agggadddddd"),
            ),
          ),
        ],
      ),
    );
    return Skeletonizer(
      enabled: true,
      child: DoctorSpecialestList(specializatinDataList: fackData),
    );
  }
}
