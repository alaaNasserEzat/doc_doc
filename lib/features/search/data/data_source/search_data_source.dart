import 'package:doc_doc/core/features/search/data/models/search_response.dart';
import 'package:doc_doc/core/networking/api_concumer.dart';
import 'package:doc_doc/core/networking/api_constants.dart';

class SearchDataSource {
  final ApiConcumer apiConcumer;

  SearchDataSource({required this.apiConcumer});

  Future<SearchResponse> searchDoctot(String query) async {
    final res = await apiConcumer.get(
      ApiConstants.searchDoctor,
      queryParams: {"name": query},
    );
    return SearchResponse.fromJson(res);
  }
}
