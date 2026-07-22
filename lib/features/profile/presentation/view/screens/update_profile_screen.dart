import 'package:doc_doc/core/custom_widgets/custom_app_bar.dart';
import 'package:doc_doc/features/profile/presentation/view/widgets/update_profile_form.dart';
import 'package:doc_doc/core/helper/extention.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: showAppBar(context: context, title: "My Profile"),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [SizedBox(height: 30), UpdateProfileForm()],
            ),
          ),
        ),
      ),
    );
  }
}
