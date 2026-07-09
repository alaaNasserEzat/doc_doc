import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_specialest_list.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/skeletonizer_specialest_list.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view_model/home_cubit.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view_model/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorSpecialestBlocBuilder extends StatelessWidget {
  const DoctorSpecialestBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is HomeSuccess || current is HomeLoading;
      },
      builder: (context, state) {
        return state is HomeLoading
            ? SkeletonizerSpecialestList()
            : state is HomeSuccess
            ? DoctorSpecialestList(specializatinDataList: state.response.data!)
            : state is HomeError
            ? Text(state.errorModel.getAllErrorMessage())
            : Text("something wrong!");
      },
    );
  }
}
