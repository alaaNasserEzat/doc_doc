import 'package:doc_doc/features/home_feature/data/models/governrate.dart';

class City {
  final int? id;
  final String? name;
  final Governrate? governrate;

  City({this.id, this.name, this.governrate});

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'],
      name: json['name'],
      governrate: json['governrate'] != null
          ? Governrate.fromJson(json['governrate'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'governrate': governrate?.toJson()};
  }
}
