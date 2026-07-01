import 'package:doc_doc/core/features/profile/data/models/user_data.dart';

class ProfileResponse {
  final String message;
  final List<UserData> data;
  final bool status;
  final int code;

  ProfileResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) {
    return ProfileResponse(
      message: json['message'] ?? '',
      data:
          (json['data'] as List?)?.map((e) => UserData.fromJson(e)).toList() ??
          [],
      status: json['status'] ?? false,
      code: json['code'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'data': data.map((e) => e.toJson()).toList(),
      'status': status,
      'code': code,
    };
  }
}
