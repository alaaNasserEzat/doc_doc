import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_specialest_widget.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view_model/home_cubit.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view_model/home_state.dart';
import 'package:doc_doc/core/helper/extention.dart';
import 'package:doc_doc/core/images/app_assets.dart';
import 'package:doc_doc/core/routs/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorSpecialestScreen extends StatefulWidget {
  const DoctorSpecialestScreen({super.key});

  @override
  State<DoctorSpecialestScreen> createState() => _DoctorSpecialestScreenState();
}

class _DoctorSpecialestScreenState extends State<DoctorSpecialestScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (previous, current) {
            return current is HomeSuccess || current is HomeSuccess;
          },
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
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                          context.pushNamed(
                            Routes.doctorsScreen,
                            arguments: data[index].doctors,
                          );
                        },
                        isSelected: index == selectedIndex,
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
