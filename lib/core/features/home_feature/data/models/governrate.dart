class Governrate {
  final int? id;
  final String? name;

  Governrate({this.id, this.name});

  factory Governrate.fromJson(Map<String, dynamic> json) {
    return Governrate(id: json['id'], name: json['name']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }
}
