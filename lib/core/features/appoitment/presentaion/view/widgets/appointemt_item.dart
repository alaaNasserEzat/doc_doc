import 'package:doc_doc/core/features/appoitment/data/models/appointment_data.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/white_shadwo_container.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppointemtItem extends StatelessWidget {
  const AppointemtItem({super.key, required this.appointmentData});
  final AppointmentData appointmentData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: WhiteShadwoContainer(
        child: Column(
          spacing: 10,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColor.whiteff,
                  child: Icon(
                    appointmentData.doctor.gender == "male"
                        ? Icons.person
                        : Icons.face_3,
                    color: AppColor.primaryColor,
                  ),
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Text(
                      appointmentData.doctor.name ?? "",
                      style: AppTextStyles.interBold18Black,
                    ),
                    Text(
                      appointmentData.doctor.specialization!.name ?? "",
                      style: AppTextStyles.interMedium12Gray75.copyWith(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Divider(color: AppColor.lightGrey),

            Row(
              spacing: 5,
              children: [
                Icon(Icons.calendar_month, color: AppColor.grey, size: 15),
                Text(
                  "   ${appointmentData.appointmentEndTime.substring(0, appointmentData.appointmentTime.length - 7)}",
                  style: AppTextStyles.interMedium12Gray75,
                ),
              ],
            ),
            Row(
              spacing: 5,
              children: [
                Icon(Icons.access_time, color: AppColor.grey, size: 15),
                Text(
                  "at ${appointmentData.appointmentTime.substring(appointmentData.appointmentTime.length - 7)}",
                  style: AppTextStyles.interMedium12Gray75,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
