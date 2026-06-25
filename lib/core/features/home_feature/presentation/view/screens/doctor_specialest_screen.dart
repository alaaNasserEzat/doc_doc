import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_specialest_widget.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view_model/home_cubit.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view_model/home_state.dart';
import 'package:doc_doc/core/images/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorSpecialestScreen extends StatelessWidget {
  const DoctorSpecialestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return state is HomeLoading
                ? Center(child: CircularProgressIndicator())
                : state is HomeSuccess
                ? Wrap(
                    spacing: 15,
                    children: List.generate(state.response.data!.length, (
                      index,
                    ) {
                      final data = state.response.data;
                      return DoctorSpecialestWidget(
                        text: data![index].name ?? "",
                        image: specialityImages[index],
                      );
                    }),
                  )
                : Text("error");
          },
        ),
      ),
    );
  }
}
