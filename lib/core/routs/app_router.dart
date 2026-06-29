import 'package:doc_doc/core/features/auth_feature/presentation/view/screens/login_screen.dart';
import 'package:doc_doc/core/features/auth_feature/presentation/view/screens/onbording_screen.dart';
import 'package:doc_doc/core/features/auth_feature/presentation/view/screens/sign_up_screen.dart';
import 'package:doc_doc/core/features/auth_feature/presentation/view_model/login_cubit.dart';
import 'package:doc_doc/core/features/auth_feature/presentation/view_model/sign_up_cubit.dart';
import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';
import 'package:doc_doc/core/features/home_feature/data/models/specialization_data.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/screens/doctor_details_screen.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/screens/doctor_specialest_screen.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/screens/doctors_screen.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view/screens/home_screen.dart';
import 'package:doc_doc/core/features/home_feature/presentation/view_model/home_cubit.dart';
import 'package:doc_doc/core/helper/di.dart';
import 'package:doc_doc/core/routs/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnbordingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>()..getSpecializations(),
            child: const HomeScreen(),
          ),
        );
      case Routes.doctorsScreen:
        final List<Doctor> doctors = settings.arguments as List<Doctor>;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>()..getSpecializations(),
            child: DoctorsScreen(doctors: doctors),
          ),
        );
      case Routes.doctorSpecialestScreen:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider(
              create: (context) => getIt<HomeCubit>()..getSpecializations(),
              child: DoctorSpecialestScreen(),
            );
          },
        );
      case Routes.doctorDetailsScreen:
        final Doctor doctor = settings.arguments as Doctor;
        return MaterialPageRoute(
          builder: (_) => DoctorDetailsScreen(doctor: doctor),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignUPScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
