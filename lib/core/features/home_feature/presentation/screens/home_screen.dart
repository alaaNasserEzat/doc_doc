import 'package:doc_doc/core/images/app_assets.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text("hi Alaa", style: AppTextStyles.interBold18Black),
                  Text(
                    "How Are you Today",
                    style: AppTextStyles.interRegular12gray61,
                  ),
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 32,
                backgroundColor: Color(0xffF5F5F5),
                child: SvgPicture.asset(AppAssets.notificationIcon),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
