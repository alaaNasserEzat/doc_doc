import 'package:dart_either/dart_either.dart';
import 'package:doc_doc/features/search/data/data_source/search_data_source.dart';
import 'package:doc_doc/features/search/data/models/search_response.dart';
import 'package:doc_doc/core/networking/errors/models/error_model.dart';
import 'package:doc_doc/core/networking/errors/server_exception.dart';

class SearchRepo {
  final SearchDataSource searchDataSource;

  SearchRepo({required this.searchDataSource});
  Future<Either<ErrorModel, SearchResponse>> searchDoctor(String query) async {
    try {
      final res = await searchDataSource.searchDoctot(query);
      return Right(res);
    } on ServerException catch (e) {
      return Left(getErrorModel(e.errorModel));
    }
  }
}
