import 'package:dart_either/dart_either.dart';
import 'package:doc_doc/core/features/profile/data/data_source/profile_remote_data_source.dart';
import 'package:doc_doc/core/features/profile/data/models/profile_response.dart';
import 'package:doc_doc/core/networking/errors/models/error_model.dart';
import 'package:doc_doc/core/networking/errors/server_exception.dart';

class ProfileRepo {
  final ProfileRemoteDataSource profileRemoteDataSource;

  ProfileRepo({required this.profileRemoteDataSource});
  Future<Either<ErrorModel, ProfileResponse>> getProfile() async {
    try {
      final res = await profileRemoteDataSource.getProfile();
      return Right(res);
    } on ServerException catch (e) {
      return Left(getErrorModel(e.errorModel));
    }
  }
}
