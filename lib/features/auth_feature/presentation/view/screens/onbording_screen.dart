import 'package:doc_doc/core/custom_widgets/custom_btn.dart';
import 'package:doc_doc/core/helper/extention.dart';
import 'package:doc_doc/core/helper/share_pref_halper.dart';
import 'package:doc_doc/core/helper/shared_pref_keys.dart';
import 'package:doc_doc/core/routs/routes.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:doc_doc/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                spacing: 32,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/Group.svg',
                        width: 38,
                        height: 38,
                      ),
                      const Text(
                        " Docdoc",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/images/docdoc_logo_low_opacity.svg",
                      ),
                      Container(
                        foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                            stops: const [0.14, 0.4],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.white,
                              Colors.white.withValues(alpha: 0.0),
                            ],
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/doctor_onbording2.png',
                          height: 450,
                        ),
                      ),

                      Positioned(
                        bottom: 0,
                        left: 50,
                        right: 50,
                        child: Column(
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              "Best  Doctor\nAppointment App",
                              style: AppTextStyles.interBold32Blue.copyWith(
                                fontSize: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.interRegular12gray,
                  ),

                  CustomBtn(
                    onPressed: () async {
                      context.pushNamed(Routes.loginScreen);
                      isVisited = true;
                      await SharedPrefHelper.setData(
                        SharedPrefKeys.isVisited,
                        true,
                      );
                    },
                    text: "Get Started",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
