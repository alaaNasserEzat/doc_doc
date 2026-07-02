import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_widget.dart';
import 'package:doc_doc/core/features/search/presentation/view_model/search_cubit.dart';
import 'package:doc_doc/core/features/search/presentation/view_model/search_state.dart';
import 'package:doc_doc/core/helper/extention.dart';
import 'package:doc_doc/core/routs/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchList extends StatelessWidget {
  const SearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is SearchFailure) {
          return Center(child: Text(state.errMessage));
        }

        if (state is SearchSuccess) {
          final doctors = state.searchResponse.data ?? [];

          if (doctors.isEmpty) {
            return const Center(child: Text("No doctors found"));
          }

          return Expanded(
            child: ListView.builder(
              itemCount: doctors.length,
              itemBuilder: (context, index) {
                return DoctorWidget(
                  doctor: doctors[index],
                  onTap: () {
                    context.pushNamed(
                      Routes.doctorDetailsScreen,
                      arguments: doctors[index],
                    );
                  },
                );
              },
            ),
          );
        }

        return const Center(child: Text("Search for doctors"));
      },
    );
  }
}
