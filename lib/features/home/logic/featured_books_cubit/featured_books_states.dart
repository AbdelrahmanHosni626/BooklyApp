
abstract class FeaturedBooksStates {}

class FeaturedBooksInitialState extends FeaturedBooksStates {}

class FeaturedBooksLoadingState extends FeaturedBooksStates {}

class FeaturedBooksSuccessState extends FeaturedBooksStates {}

class FeaturedBooksErrorState extends FeaturedBooksStates {
  final String error;

  FeaturedBooksErrorState(this.error);
}
