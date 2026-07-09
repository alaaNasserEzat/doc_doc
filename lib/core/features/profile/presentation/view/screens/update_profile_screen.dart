import 'package:doc_doc/core/features/profile/presentation/view/widgets/update_profile_form.dart';
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
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined),
          ),
          centerTitle: true,
          backgroundColor: AppColor.white,
          title: Text("update profile"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [UpdateProfileForm()],
            ),
          ),
        ),
      ),
    );
  }
}
