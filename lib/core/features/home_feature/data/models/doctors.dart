import 'package:doc_doc/core/features/home_feature/data/models/city.dart';
import 'package:doc_doc/core/features/home_feature/data/models/specialization.dart';

class Doctor {
  final int? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? photo;
  final String? gender;
  final String? address;
  final String? description;
  final String? degree;
  final Specialization? specialization;
  final City? city;
  final int? appointPrice;
  final String? startTime;
  final String? endTime;

  Doctor({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.address,
    this.description,
    this.degree,
    this.specialization,
    this.city,
    this.appointPrice,
    this.startTime,
    this.endTime,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      photo: json['photo'],
      gender: json['gender'],
      address: json['address'],
      description: json['description'],
      degree: json['degree'],
      specialization: json['specialization'] != null
          ? Specialization.fromJson(json['specialization'])
          : null,
      city: json['city'] != null ? City.fromJson(json['city']) : null,
      appointPrice: json['appoint_price'],
      startTime: json['start_time'],
      endTime: json['end_time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'photo': photo,
      'gender': gender,
      'address': address,
      'description': description,
      'degree': degree,
      'specialization': specialization?.toJson(),
      'city': city?.toJson(),
      'appoint_price': appointPrice,
      'start_time': startTime,
      'end_time': endTime,
    };
  }
}
