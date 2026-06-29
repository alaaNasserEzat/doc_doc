class AppointmentRequestBody {
  final int doctorId;
  final String startTime;
  final String? notes;

  AppointmentRequestBody({
    required this.doctorId,
    required this.startTime,
    this.notes,
  });

  factory AppointmentRequestBody.fromJson(Map<String, dynamic> json) {
    return AppointmentRequestBody(
      doctorId: json['doctor_id'],
      startTime: json['start_time'],
      notes: json['notes'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'doctor_id': doctorId, 'start_time': startTime, 'notes': notes};
  }
}
