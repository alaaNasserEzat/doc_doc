import 'package:doc_doc/core/features/appoitment/data/models/appointment_data.dart';

class AppointmentResponse {
  final String message;
  final AppointmentData data;
  final bool status;
  final int code;

  AppointmentResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory AppointmentResponse.fromJson(Map<String, dynamic> json) {
    return AppointmentResponse(
      message: json['message'],
      data: AppointmentData.fromJson(json['data']),
      status: json['status'],
      code: json['code'],
    );
  }
}
