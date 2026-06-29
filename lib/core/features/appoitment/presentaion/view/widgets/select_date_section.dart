import 'package:doc_doc/core/features/appoitment/presentaion/view_model/appoitment_cubit.dart';
import 'package:doc_doc/core/utils/app_color.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class SelectDateSection extends StatefulWidget {
  const SelectDateSection({super.key});

  @override
  State<SelectDateSection> createState() => _SelectDateSectionState();
}

class _SelectDateSectionState extends State<SelectDateSection> {
  Future<void> pickDate() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );
    if (pickedDate != null) {
      BlocProvider.of<AppointmentCubit>(context).selectDate(pickedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text("Select Date", style: AppTextStyles.interBold18Black),

          TextFormField(
            controller: BlocProvider.of<AppointmentCubit>(
              context,
            ).dateController,
            readOnly: true,
            decoration: InputDecoration(
              hintText: DateTime.now().toString().substring(0, 10),
              hintStyle: TextStyle(color: AppColor.lightGrey3),
              fillColor: Color(0xfff2f4f7),
              filled: true,
              suffixIcon: IconButton(
                onPressed: () {
                  pickDate();
                },
                icon: Icon(
                  Icons.calendar_month_rounded,
                  color: AppColor.primaryColor,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: AppColor.lightGrey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: AppColor.lightGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  color: AppColor.primaryColor,
                  width: 1.3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
