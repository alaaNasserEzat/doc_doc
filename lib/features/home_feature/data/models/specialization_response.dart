import 'package:doc_doc/features/home_feature/data/models/specialization_data.dart';

class SpecializationResponse {
  final List<SpecializationData>? data;

  SpecializationResponse({this.data});

  factory SpecializationResponse.fromJson(Map<String, dynamic> json) {
    return SpecializationResponse(
      data: json['data'] != null
          ? List<SpecializationData>.from(
              json['data'].map((e) => SpecializationData.fromJson(e)),
            )
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {'data': data?.map((e) => e.toJson()).toList()};
  }
}
