abstract class BestSellerBooksStates {}

class BestSellerBooksInitialState extends BestSellerBooksStates {}

class BestSellerBooksLoadingState extends BestSellerBooksStates {}

class BestSellerBooksSuccessState extends BestSellerBooksStates {}

class BestSellerBooksErrorState extends BestSellerBooksStates {
  final String error;

  BestSellerBooksErrorState(this.error);
}
