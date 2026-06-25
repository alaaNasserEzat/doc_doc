import 'package:doc_doc/core/images/app_assets.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomWidget extends StatelessWidget {
  const WelcomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Text("hi, Alaa!", style: AppTextStyles.interBold18Black),
                Text(
                  "How Are you Today?",
                  style: AppTextStyles.interRegular12gray61,
                ),
              ],
            ),
            Spacer(),
            CircleAvatar(
              radius: 24,
              backgroundColor: Color(0xffF5F5F5),
              child: Stack(
                children: [
                  SvgPicture.asset(AppAssets.notificationIcon),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: AppColor.red5E,
                      radius: 3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
