import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_specialest_list.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view_model/home_cubit.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view_model/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorSpecialestBlocBuilder extends StatelessWidget {
  const DoctorSpecialestBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state is HomeLoading
            ? Center(child: CircularProgressIndicator())
            : state is HomeSuccess
            ? DoctorSpecialestList(response: state.response)
            : Text("error");
      },
    );
  }
}
