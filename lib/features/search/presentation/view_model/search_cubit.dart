import 'package:doc_doc/features/search/presentation/view_model/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repo/search_repo.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> searchDoctors(String query) async {
    if (query.trim().isEmpty) {
      emit(SearchInitial());
      return;
    }

    emit(SearchLoading());

    final result = await searchRepo.searchDoctor(query);

    result.fold(
      ifLeft: (error) {
        emit(SearchFailure(error.getAllErrorMessage()));
      },
      ifRight: (response) {
        emit(SearchSuccess(response));
      },
    );
  }
}
