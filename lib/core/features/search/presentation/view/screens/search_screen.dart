import 'package:doc_doc/core/custom_widgets/custom_text_form_filed.dart';
import 'package:doc_doc/core/features/search/presentation/view/widgets/search_list.dart';
import 'package:doc_doc/core/features/search/presentation/view_model/search_cubit.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,

            spacing: 20,
            children: [
              Text(
                "let's Find your doctor",
                style: AppTextStyles.interBold18Black,
              ),

              CustomTextFormFiled(
                suffixIcon: Icon(Icons.search),
                onChange: (s) {
                  context.read<SearchCubit>().searchDoctors(s);
                },
              ),

              SearchList(),
            ],
          ),
        ),
      ),
    );
  }
}
