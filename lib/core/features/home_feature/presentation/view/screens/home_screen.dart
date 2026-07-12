import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/booking_widget.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_bloc_builder.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/doctor_specialest_bloc_builder.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/see_all_row.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/widgets/welcom_widget.dart';
import 'package:doc_doc/core/helper/extention.dart';
import 'package:doc_doc/core/routs/routes.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: WelcomWidget()),

              const SliverToBoxAdapter(child: SizedBox(height: 15)),

              const SliverToBoxAdapter(child: BookingWidget()),

              const SliverToBoxAdapter(child: SizedBox(height: 15)),

              SliverToBoxAdapter(
                child: SeeAllRow(
                  text: "Doctor Speciality",
                  onTap: () {
                    context.pushNamed(Routes.doctorSpecialestScreen);
                  },
                ),
              ),

              const SliverToBoxAdapter(child: SizedBox(height: 15)),

              const DoctorSpecialestBlocBuilder(),
              const SliverToBoxAdapter(child: SizedBox(height: 15)),

              const DoctorBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
