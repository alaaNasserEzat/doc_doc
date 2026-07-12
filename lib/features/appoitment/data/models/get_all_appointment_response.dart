import 'package:doc_doc/core/features/appoitment/data/models/appointment_data.dart';

class GetAllAppointmentsResponse {
  final String message;
  final List<AppointmentData> data;
  final bool status;
  final int code;

  GetAllAppointmentsResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory GetAllAppointmentsResponse.fromJson(Map<String, dynamic> json) {
    return GetAllAppointmentsResponse(
      message: json['message'] ?? '',
      data:
          (json['data'] as List?)
              ?.map((e) => AppointmentData.fromJson(e))
              .toList() ??
          [],
      status: json['status'] ?? false,
      code: json['code'] ?? 0,
    );
  }
}
