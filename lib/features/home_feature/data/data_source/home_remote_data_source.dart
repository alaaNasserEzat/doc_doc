import 'package:doc_doc/features/home_feature/data/models/specialization_response.dart';
import 'package:doc_doc/core/networking/api_concumer.dart';
import 'package:doc_doc/core/networking/api_constants.dart';

class HomeRemoteDataSource {
  final ApiConcumer apiConcumer;

  HomeRemoteDataSource({required this.apiConcumer});

  Future<SpecializationResponse> getSpecializationtDoctors() async {
    final res = await apiConcumer.get(ApiConstants.specializationEndPoint);
    return SpecializationResponse.fromJson(res);
  }
}
