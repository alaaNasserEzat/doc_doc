import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordRow extends StatelessWidget {
  const ForgetPasswordRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(value: false, onChanged: (val){

        },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
        ),
        side: BorderSide(color: AppColor.lightGrey3,width: 1.5),
        ),
        Text( "Remember me",style: AppTextStyles.interRegular12gray3,),
        Spacer(),
        Text(
          "Forgot Password?",
          style: AppTextStyles.interRegular12blue
        ),
      ],
    );
  }
}