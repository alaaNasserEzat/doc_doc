import 'package:doc_doc/features/profile/data/models/update_user_data.dart';

class UpdateProfileResponse {
  final String message;
  final UpdatedUserData data;
  final bool status;
  final int code;

  UpdateProfileResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory UpdateProfileResponse.fromJson(Map<String, dynamic> json) {
    return UpdateProfileResponse(
      message: json['message'],
      data: UpdatedUserData.fromJson(json['data']),
      status: json['status'],
      code: json['code'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'data': data.toJson(),
      'status': status,
      'code': code,
    };
  }
}
