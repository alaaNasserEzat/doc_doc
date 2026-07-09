import 'package:doc_doc/core/custom_widgets/custom_app_bar.dart';
import 'package:doc_doc/core/features/profile/presentation/view/widgets/profile_bloc_builder.dart';
import 'package:doc_doc/core/features/profile/presentation/view/widgets/profile_items_section.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ProfileBlocBuilder(), ProfileItemsSection()],
            ),
          ),
        ),
      ),
    );
  }
}
