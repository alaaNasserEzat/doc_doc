import 'package:doc_doc/core/custom_widgets/custom_btn.dart';
import 'package:doc_doc/core/custom_widgets/custom_dailog.dart';
import 'package:doc_doc/core/custom_widgets/custom_text_form_filed.dart';
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

TextEditingController name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController phone = TextEditingController();

class _UpdateProfileFormState extends State<UpdateProfileForm> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextFormFiled(controller: name),
          CustomTextFormFiled(controller: email),
          CustomTextFormFiled(controller: phone),

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
                    email: email.text.trim(),
                    name: name.text.trim(),
                    phone: phone.text.trim(),
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
