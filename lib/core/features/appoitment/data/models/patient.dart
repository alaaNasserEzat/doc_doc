class Patient {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String gender;

  Patient({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
  });

  factory Patient.fromJson(Map<String, dynamic> json) {
    return Patient(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      gender: json['gender'],
    );
  }
}
