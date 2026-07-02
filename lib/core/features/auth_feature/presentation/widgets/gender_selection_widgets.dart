import 'package:doc_doc/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class GenderSelectionWidget extends StatelessWidget {
  const GenderSelectionWidget({
    super.key,
    required this.selectedGender,
    required this.onChanged,
  });

  final int selectedGender;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RadioListTile<int>(
            activeColor: AppColor.primaryColor,
            hoverColor: AppColor.primaryColor,

            title: const Text('Male'),
            value: 0,
            groupValue: selectedGender,
            onChanged: (value) {
              if (value != null) {
                onChanged(value);
              }
            },
          ),
        ),
        Expanded(
          child: RadioListTile<int>(
            title: const Text('Female'),
            value: 1,
            groupValue: selectedGender,
            onChanged: (value) {
              if (value != null) {
                onChanged(value);
              }
            },
          ),
        ),
      ],
    );
  }
}
