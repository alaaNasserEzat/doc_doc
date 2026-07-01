import 'package:doc_doc/core/features/profile/data/models/user_data.dart';
import 'package:doc_doc/core/features/profile/presentation/view/widgets/profile_info_section.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProfileSkeletonizer extends StatelessWidget {
  const ProfileSkeletonizer({super.key});

  @override
  Widget build(BuildContext context) {
    final fackUser = UserData(
      name: "alaaaa",
      email: "a@g.com",
      id: 1,
      phone: "12222222",
      gender: "male",
    );
    return Skeletonizer(
      enabled: true,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ProfileInfoSection(name: fackUser.name, email: fackUser.email),
      ),
    );
  }
}
