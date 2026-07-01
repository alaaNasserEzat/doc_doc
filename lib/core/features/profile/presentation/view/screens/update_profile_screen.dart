import 'package:doc_doc/core/features/profile/presentation/view/widgets/update_profile_form.dart';
import 'package:flutter/material.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("update profile")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(children: [UpdateProfileForm()]),
        ),
      ),
    );
  }
}
