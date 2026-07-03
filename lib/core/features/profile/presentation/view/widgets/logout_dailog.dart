import 'package:doc_doc/core/helper/extention.dart';
import 'package:doc_doc/core/helper/share_pref_halper.dart';
import 'package:doc_doc/core/helper/shared_pref_keys.dart';
import 'package:doc_doc/core/routs/routes.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

Future<dynamic> showLogoutDialog(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        insetPadding: EdgeInsets.all(16),
        child: Container(
          height: 240,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Confirm Logout',
                  style: AppTextStyles.interBold32Blue.copyWith(fontSize: 24),
                ),

                Divider(thickness: 1.3, color: AppColor.lightGrey),
                Text(
                  'Are you shoure you want Log Out?',
                  style: AppTextStyles.interMedium12Gray75.copyWith(
                    color: AppColor.primaryColor,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 10,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side: BorderSide(
                              color: AppColor.lightGrey,
                              width: 1.3,
                            ),
                          ),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                          AppColor.white,
                        ),
                        fixedSize: WidgetStateProperty.all(Size(100, 30)),
                      ),
                      child: Text(
                        'Cancel ',
                        style: AppTextStyles.interBold14Black,
                      ),
                    ),

                    TextButton(
                      onPressed: () async {
                        context.pushReplacementNamed(Routes.loginScreen);
                        SharedPrefHelper.removeSecuredData(
                          SharedPrefKeys.userToken,
                        );
                      },
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                          AppColor.primaryColor,
                        ),
                        fixedSize: WidgetStateProperty.all(Size(100, 30)),
                      ),
                      child: Text(
                        'Ok',
                        style: AppTextStyles.interMedium18White,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
