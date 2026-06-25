import 'package:dart_either/dart_either.dart';
import 'package:doc_doc/core/features/home_feature/data/data_source/home_remote_data_source.dart';
import 'package:doc_doc/core/features/home_feature/data/models/specialization_response.dart';
import 'package:doc_doc/core/networking/errors/models/error_model.dart';
import 'package:doc_doc/core/networking/errors/server_exception.dart';

class HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepo({required this.homeRemoteDataSource});

  Future<Either<ErrorModel, SpecializationResponse>>
  getSpecializationDoctors() async {
    try {
      final res = await homeRemoteDataSource.getSpecializationtDoctors();
      return Right(res);
    } on ServerException catch (e) {
      return Left(getErrorModel(e.errorModel));
    }
  }
}
