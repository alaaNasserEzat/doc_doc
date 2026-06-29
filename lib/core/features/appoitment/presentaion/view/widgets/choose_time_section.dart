import 'package:doc_doc/core/features/appoitment/presentaion/view/widgets/time_slot_item.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view_model/appointment_state.dart';
import 'package:doc_doc/core/features/appoitment/presentaion/view_model/appoitment_cubit.dart';
import 'package:doc_doc/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChooseTimeSection extends StatefulWidget {
  const ChooseTimeSection({
    super.key,
    required this.startTime,
    required this.lastTime,
  });
  final String startTime;
  final String lastTime;
  @override
  State<ChooseTimeSection> createState() => _ChooseTimeSectionState();
}

class _ChooseTimeSectionState extends State<ChooseTimeSection> {
  generateTimeSlot() {
    final DateFormat format = DateFormat("hh:mm:ss a");
    DateTime start = format.parse(widget.startTime);
    DateTime end = format.parse(widget.lastTime);

    List<String> slots = [];
    while (start.isBefore(end)) {
      slots.add(DateFormat("hh:mm a").format(start));
      start = start.add(const Duration(hours: 1));
    }
    return slots;
  }

  late List<String> times;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    times = generateTimeSlot();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Choose Time", style: AppTextStyles.interBold18Black),

          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: times.map((time) {
              return BlocBuilder<AppointmentCubit, AppointmentState>(
                builder: (context, state) {
                  return TimeSlotItem(
                    time: time,
                    selected:
                        BlocProvider.of<AppointmentCubit>(
                          context,
                        ).selectedTime ==
                        time,
                    onTap: () {
                      // setState(() {
                      //   selectedTime = time;
                      // });
                      BlocProvider.of<AppointmentCubit>(
                        context,
                      ).selectTime(time);
                    },
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
