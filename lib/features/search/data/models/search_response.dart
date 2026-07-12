import 'package:doc_doc/core/features/home_feature/data/models/doctors.dart';

class SearchResponse {
  final String? message;
  final List<Doctor>? data;
  final bool? status;
  final int? code;

  SearchResponse({this.message, this.data, this.status, this.code});

  factory SearchResponse.fromJson(Map<String, dynamic> json) {
    return SearchResponse(
      message: json['message'],
      data: json['data'] != null
          ? List<Doctor>.from(json['data'].map((e) => Doctor.fromJson(e)))
          : [],
      status: json['status'],
      code: json['code'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'data': data?.map((e) => e.toJson()).toList(),
      'status': status,
      'code': code,
    };
  }
}
