import 'package:doc_doc/core/features/profile/presentation/view/widgets/profile_info_section.dart';
import 'package:doc_doc/core/features/profile/presentation/view/widgets/profile_skeletonizer.dart';
import 'package:doc_doc/core/features/profile/presentation/view_model/profile_cubit.dart';
import 'package:doc_doc/core/features/profile/presentation/view_model/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileBlocBuilder extends StatelessWidget {
  const ProfileBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) {
        return current is ProfileSuccess ||
            current is ProfileFailure ||
            current is ProfileLoading;
      },
      builder: (context, state) {
        if (state is ProfileLoading) {
          return const ProfileSkeletonizer();
        }

        if (state is ProfileFailure) {
          return Center(child: Text(state.errMessage));
        }

        if (state is ProfileSuccess) {
          final user = state.profile.data.first;

          return Padding(
            padding: const EdgeInsets.all(16),
            child: ProfileInfoSection(
              name: user.name,
              email: user.email,
              gender: user.gender,
            ),
          );
        }

        return const SizedBox();
      },
    );
  }
}
