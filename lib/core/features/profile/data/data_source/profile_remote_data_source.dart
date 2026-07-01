import 'package:doc_doc/core/features/profile/data/models/profile_response.dart';
import 'package:doc_doc/core/networking/api_concumer.dart';
import 'package:doc_doc/core/networking/api_constants.dart';

class ProfileRemoteDataSource {
  final ApiConcumer apiConsumer;

  ProfileRemoteDataSource({required this.apiConsumer});

  Future<ProfileResponse> getProfile() async {
    final response = await apiConsumer.get(ApiConstants.getProfile);
    return ProfileResponse.fromJson(response);
  }
}
