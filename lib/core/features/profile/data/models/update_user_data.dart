class UpdatedUserData {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String gender;
  final String? emailVerifiedAt;
  final String createdAt;
  final String updatedAt;

  UpdatedUserData({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UpdatedUserData.fromJson(Map<String, dynamic> json) {
    return UpdatedUserData(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      gender: json['gender'],
      emailVerifiedAt: json['email_verified_at'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'gender': gender,
      'email_verified_at': emailVerifiedAt,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
