import 'package:flutter/material.dart';


class PasswordValidationRow extends StatelessWidget {
  const PasswordValidationRow({super.key, required this.text, required this.isValid});
final String text;
final bool isValid;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CircleAvatar(
          radius: 4,
          backgroundColor: Colors.green,
        ),
        SizedBox(width: 8),
        Text(text,style: TextStyle(fontSize: 12, color: Colors.green,decoration:isValid ? TextDecoration.lineThrough : TextDecoration.none)),
      ],
    );
  }
}