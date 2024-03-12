import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class FeaturedBooksStates {}

class FeaturedBooksInitialState extends FeaturedBooksStates {}

class FeaturedBooksLoadingState extends FeaturedBooksStates {}

class FeaturedBooksSuccessState extends FeaturedBooksStates {
  final List<BookModel> books;

  FeaturedBooksSuccessState(this.books);
}

class FeaturedBooksErrorState extends FeaturedBooksStates {
  final String error;

  FeaturedBooksErrorState(this.error);
}
