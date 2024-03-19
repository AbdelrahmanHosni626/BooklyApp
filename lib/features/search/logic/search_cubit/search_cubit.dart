import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:bookly_app/features/search/logic/search_cubit/search_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchStates> {
  SearchCubit(this.searchRepo) : super(SearchInitialState());

  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks({required String bookType}) async {
    emit(SearchLoadingState());

    var result = await searchRepo.fetchSearchBooks(bookType: bookType);

    result.fold(
      (failure) => emit(SearchErrorState(failure.errMessage)),
      (books) => emit(SearchSuccessState(books)),
    );
  }
}