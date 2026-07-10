import 'package:doc_doc/core/features/profile/presentation/view/screens/update_profile_screen.dart';
import 'package:doc_doc/core/features/profile/presentation/view/widgets/item.dart';
import 'package:doc_doc/core/features/profile/presentation/view/widgets/logout_dailog.dart';
import 'package:doc_doc/core/features/profile/presentation/view_model/profile_cubit.dart';
import 'package:doc_doc/core/helper/extention.dart';
import 'package:doc_doc/core/routs/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileItemsSection extends StatelessWidget {
  const ProfileItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Item(
          text: "updat Profile",
          icon: Icons.person,
          onTap: () {
            //context.pushNamed(Routes.editProfileScreen);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                  value: context.read<ProfileCubit>(),
                  child: UpdateProfileScreen(),
                ),
              ),
            );
          },
        ),
        Item(
          text: "notifications",
          icon: Icons.notifications_on_outlined,
          onTap: () {
            context.pushNamed(Routes.notificationScreen);
          },
        ),

        Item(text: "settings", icon: Icons.settings, onTap: () {}),
        Item(
          text: "logout",
          icon: Icons.logout,
          onTap: () {
            showLogoutDialog(context);
          },
        ),
      ],
    );
  }
}
