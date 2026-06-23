class ErrorModel {
  // final int status;
  final String message;
  final Map<String, dynamic>? errors;

  ErrorModel({
    //required this.status,
    required this.message,
    this.errors,
  });
  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      message: json["message"],
      errors: json["data"] is Map<String, dynamic>
          ? json["data"] as Map<String, dynamic>
          : null,
    );
  }
  String getAllErrorMessage() {
    print(errors ?? "empty");
    if (errors == null || errors!.isEmpty) {
      return message;
    }

    return errors!.entries.map((entry) => entry.value.join(', ')).join('\n');
  }
}
