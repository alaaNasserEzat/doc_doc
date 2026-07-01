import 'package:doc_doc/core/features/profile/presentation/view/widgets/item.dart';
import 'package:doc_doc/core/helper/extention.dart';
import 'package:doc_doc/core/routs/routes.dart';
import 'package:flutter/material.dart';

class ProfileItemsSection extends StatelessWidget {
  const ProfileItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Item(
          text: "updat Profile",
          icon: Icons.person,
          onTap: () {
            context.pushNamed(Routes.editProfileScreen);
          },
        ),
        Item(
          text: "notifications",
          icon: Icons.notifications_on_outlined,
          onTap: () {},
        ),

        Item(text: "settings", icon: Icons.settings, onTap: () {}),
        Item(text: "logout", icon: Icons.logout, onTap: () {}),
      ],
    );
  }
}
