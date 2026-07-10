import 'package:doc_doc/core/helper/di.dart';
import 'package:doc_doc/core/helper/share_pref_halper.dart';
import 'package:doc_doc/core/helper/shared_pref_keys.dart';
import 'package:doc_doc/core/routs/app_router.dart';
import 'package:doc_doc/core/routs/routes.dart';
import 'package:doc_doc/core/servicies/notification/local_notification_service.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotificationService.init();
  setupGetIt();
  runApp(const MyApp());
}

bool isVisited = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: AppColor.white,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onBoardingScreen,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}

bool isLogged = false;
checkUserLoggedIn() async {
  final String? userTokrn = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  if (userTokrn != null || userTokrn!.isNotEmpty) {
    isLogged = true;
  } else {
    isLogged = false;
  }
}
