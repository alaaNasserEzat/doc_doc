import 'package:doc_doc/features/search/data/models/search_response.dart';

abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchSuccess extends SearchState {
  final SearchResponse searchResponse;

  SearchSuccess(this.searchResponse);
}

class SearchFailure extends SearchState {
  final String errMessage;

  SearchFailure(this.errMessage);
}
