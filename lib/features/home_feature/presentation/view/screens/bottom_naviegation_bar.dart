import 'package:doc_doc/core/features/appoitment/presentaion/view/screens/all_appointment%20_screen.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view_model/appoitment_cubit.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/screens/home_screen.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view_model/home_cubit.dart';
import 'package:doc_doc/core/features/profile/presentation/view/screens/profile_screen.dart';
import 'package:doc_doc/core/features/profile/presentation/view_model/profile_cubit.dart';
import 'package:doc_doc/core/features/search/presentation/view/screens/search_screen.dart';
import 'package:doc_doc/core/features/search/presentation/view_model/search_cubit.dart';
import 'package:doc_doc/core/helper/di.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  final List<IconData> icons = [
    Icons.home,
    Icons.search,
    Icons.date_range_outlined,
    Icons.person_outlined,
  ];

  final List<String> lables = ['home', "search", 'appointments', 'profile'];

  final List<Widget> views = [
    BlocProvider(
      create: (context) => getIt<HomeCubit>()..getSpecializations(),
      child: const HomeScreen(),
    ),
    BlocProvider(
      create: (context) => getIt<SearchCubit>(),
      child: const SearchScreen(),
    ),
    BlocProvider(
      create: (context) => getIt<AppointmentCubit>()..getAllAppointment(),
      child: const AllAppointmentScreen(),
    ),
    BlocProvider(
      create: (context) => getIt<ProfileCubit>()..getProfile(),
      child: ProfileScreen(),
    ),
  ];

  int currentIndx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: views[currentIndx],
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SafeArea(
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 20,
                  offset: Offset(0, 8), // ظل لتحت
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(icons.length, (index) {
                return GestureDetector(
                  onTap: () {
                    changeCurrentIndx(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Icon(
                          icons[index],
                          size: 20,
                          color: currentIndx == index
                              ? AppColor.primaryColor
                              : AppColor.grey,
                        ),

                        Text(
                          lables[index],
                          style: TextStyle(
                            color: currentIndx == index
                                ? AppColor.primaryColor
                                : AppColor.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }

  void changeCurrentIndx(int index) {
    return setState(() {
      currentIndx = index;
    });
  }
}
