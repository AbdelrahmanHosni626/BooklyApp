import '../../../home/data/models/book_model/book_model.dart';

abstract class SearchStates {}

class SearchInitialState extends SearchStates {}

class SearchLoadingState extends SearchStates {}

class SearchSuccessState extends SearchStates {
  final List<BookModel> books;

  SearchSuccessState(this.books);
}

class SearchErrorState extends SearchStates {
  final String errMessage;

  SearchErrorState(this.errMessage);
}
