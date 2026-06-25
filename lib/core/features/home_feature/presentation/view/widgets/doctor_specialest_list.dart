import 'package:doc_doc/core/features/home_feature/data/models/specialization_response.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_specialest_widget.dart';
import 'package:doc_doc/core/images/app_assets.dart';
import 'package:flutter/material.dart';

class DoctorSpecialestList extends StatelessWidget {
  const DoctorSpecialestList({super.key, required this.response});
  final SpecializationResponse response;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: response.data!.length,
        itemBuilder: (context, index) {
          return DoctorSpecialestWidget(
            text: response.data![index].name ?? "",
            image: AppAssets.brain,
          );
        },
      ),
    );
  }
}
