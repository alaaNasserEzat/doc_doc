import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_list.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/skeletonizer_doctor_list.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view_model/home_cubit.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view_model/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorBlocBuilder extends StatelessWidget {
  const DoctorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is HomeLoading ||
            current is GetDoctorSuccess ||
            current is HomeError;
      },
      builder: (context, state) {
        return state is HomeLoading
            ? SkeletonizerDoctorList()
            : state is GetDoctorSuccess
            ? DoctorList(doctors: state.doctors)
            : state is HomeError
            ? SliverToBoxAdapter(
                child: Text(state.errorModel.getAllErrorMessage()),
              )
            : SliverToBoxAdapter(child: SizedBox.shrink());
      },
    );
  }
}
