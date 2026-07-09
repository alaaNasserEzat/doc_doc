import 'package:doc_doc/core/helper/extention.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

showAppBar({required BuildContext context, required String title}) {
  return AppBar(
    centerTitle: true,
    title: Text(title, style: AppTextStyles.interMedium18White),
    backgroundColor: AppColor.primaryColor,
    leading: IconButton(
      onPressed: () {
        context.pop();
      },
      icon: Icon(Icons.arrow_back_ios_new, color: AppColor.white),
    ),
  );
}
