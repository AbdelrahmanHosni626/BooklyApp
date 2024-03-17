import '../../data/models/book_model/book_model.dart';

abstract class SimilarBooksStates {}

class SimilarBooksInitialState extends SimilarBooksStates {}

class SimilarBooksLoadingState extends SimilarBooksStates {}

class SimilarBooksSuccessState extends SimilarBooksStates {
  final List<BookModel> books;

  SimilarBooksSuccessState(this.books);
}

class SimilarBooksErrorState extends SimilarBooksStates {
  final String error;

  SimilarBooksErrorState(this.error);
}