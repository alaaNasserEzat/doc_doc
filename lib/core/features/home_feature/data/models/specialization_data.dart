import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';

class SpecializationData {
  final int? id;
  final String? name;
  final List<Doctor>? doctors;

  SpecializationData({this.id, this.name, this.doctors});

  factory SpecializationData.fromJson(Map<String, dynamic> json) {
    return SpecializationData(
      id: json['id'],
      name: json['name'],
      doctors: json['doctors'] != null
          ? List<Doctor>.from(json['doctors'].map((e) => Doctor.fromJson(e)))
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'doctors': doctors?.map((e) => e.toJson()).toList(),
    };
  }
}
