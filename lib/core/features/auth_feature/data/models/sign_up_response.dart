class SignUpResponse {
    final String message;
  final SignupData data;
  final bool status;
  final int code;

  SignUpResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory SignUpResponse.fromJson(Map<String, dynamic> json) {
    return SignUpResponse(
      message: json['message'] as String,
      data: SignupData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool,
      code: json['code'] as int,
    );
  }
}


class SignupData {
  final String token;
  final String username;

  SignupData({required this.token, required this.username});

  factory SignupData.fromJson(Map<String, dynamic> json) => SignupData(
        token: json['token'] as String,
        username: json['username'] as String,
      );
}