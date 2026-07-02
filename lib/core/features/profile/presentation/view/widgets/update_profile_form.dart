import 'package:doc_doc/core/custom_widgets/custom_btn.dart';
import 'package:doc_doc/core/custom_widgets/custom_dailog.dart';
import 'package:doc_doc/core/custom_widgets/custom_text_form_filed.dart';
import 'package:doc_doc/core/features/auth_feature/presentation/widgets/gender_selection_widgets.dart';
import 'package:doc_doc/core/features/profile/data/models/update_profile_request.dart';
import 'package:doc_doc/core/features/profile/presentation/view_model/profile_cubit.dart';
import 'package:doc_doc/core/features/profile/presentation/view_model/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateProfileForm extends StatefulWidget {
  const UpdateProfileForm({super.key});

  @override
  State<UpdateProfileForm> createState() => _UpdateProfileFormState();
}

class _UpdateProfileFormState extends State<UpdateProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextFormFiled(
            controller: BlocProvider.of<ProfileCubit>(context).name,
            hintText: BlocProvider.of<ProfileCubit>(context).name.text,
          ),
          CustomTextFormFiled(
            controller: BlocProvider.of<ProfileCubit>(context).email,
            hintText: BlocProvider.of<ProfileCubit>(context).email.text,
          ),
          CustomTextFormFiled(
            controller: BlocProvider.of<ProfileCubit>(context).phone,
            hintText: BlocProvider.of<ProfileCubit>(context).phone.text,
          ),
          GenderSelectionWidget(
            selectedGender: BlocProvider.of<ProfileCubit>(
              context,
            ).selectedGender,
            onChanged: (v) {
              setState(() {
                BlocProvider.of<ProfileCubit>(context).selectedGender = v;
              });
            },
          ),
          SizedBox(height: 20),
          BlocConsumer<ProfileCubit, ProfileState>(
            listener: (context, state) {
              if (state is UpdateProfileFailure) {
                showErrorDialog(context, state.errMessage);
              }
              if (state is UpdateProfileSuccess) {
                showSuccessSnakBar(context, "updated sccessfully");
              }
            },
            builder: (context, state) {
              return CustomBtn(
                onPressed: () {
                  final cubit = BlocProvider.of<ProfileCubit>(context);
                  final request = UpdateProfileRequest(
                    email: cubit.email.text.trim(),
                    name: cubit.name.text.trim(),
                    phone: cubit.phone.text.trim(),
                    gender: "0",
                  );
                  cubit.updateProfile(request);
                },
                text: "update profile",
              );
            },
          ),
        ],
      ),
    );
  }
}
