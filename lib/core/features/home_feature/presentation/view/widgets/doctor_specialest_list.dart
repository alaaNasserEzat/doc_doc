import 'package:doc_doc/core/features/home_feature/data/models/specialization_data.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_specialest_widget.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view_model/home_cubit.dart';
import 'package:doc_doc/core/images/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorSpecialestList extends StatefulWidget {
  const DoctorSpecialestList({super.key, required this.specializatinDataList});
  final List<SpecializationData> specializatinDataList;

  @override
  State<DoctorSpecialestList> createState() => _DoctorSpecialestListState();
}

class _DoctorSpecialestListState extends State<DoctorSpecialestList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializatinDataList.length,
        itemBuilder: (context, index) {
          return DoctorSpecialestWidget(
            onTap: () {
              BlocProvider.of<HomeCubit>(
                context,
              ).getDocotorsById(widget.specializatinDataList[index].id!);
              setState(() {
                selectedIndex = index;
              });
            },
            text: widget.specializatinDataList[index].name ?? "",
            image: specialityImages[index],
            isSelected: selectedIndex == index,
          );
        },
      ),
    );
  }
}
