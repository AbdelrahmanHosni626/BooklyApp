import '../../data/models/book_model/book_model.dart';

abstract class BestSellerBooksStates {}

class BestSellerBooksInitialState extends BestSellerBooksStates {}

class BestSellerBooksLoadingState extends BestSellerBooksStates {}

class BestSellerBooksSuccessState extends BestSellerBooksStates {
  final List<BookModel> books;

  BestSellerBooksSuccessState(this.books);
}

class BestSellerBooksErrorState extends BestSellerBooksStates {
  final String error;

  BestSellerBooksErrorState(this.error);
}
