import 'package:doc_doc/core/features/appoitment/data/models/patient.dart';
import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';

class AppointmentData {
  final int id;
  final Doctor doctor;
  final Patient patient;
  final String appointmentTime;
  final String appointmentEndTime;
  final String status;
  final String notes;
  final int appointmentPrice;

  AppointmentData({
    required this.id,
    required this.doctor,
    required this.patient,
    required this.appointmentTime,
    required this.appointmentEndTime,
    required this.status,
    required this.notes,
    required this.appointmentPrice,
  });

  factory AppointmentData.fromJson(Map<String, dynamic> json) {
    return AppointmentData(
      id: json['id'],
      doctor: Doctor.fromJson(json['doctor']),
      patient: Patient.fromJson(json['patient']),
      appointmentTime: json['appointment_time'],
      appointmentEndTime: json['appointment_end_time'],
      status: json['status'],
      notes: json['notes'],
      appointmentPrice: json['appointment_price'],
    );
  }
}
