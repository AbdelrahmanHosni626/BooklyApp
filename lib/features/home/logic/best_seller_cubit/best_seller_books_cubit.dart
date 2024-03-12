import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/logic/best_seller_cubit/best_seller_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerCubit extends Cubit<BestSellerBooksStates> {
  BestSellerCubit(this.homeRepo) : super(BestSellerBooksInitialState());

  final HomeRepo homeRepo;

  Future<void> fetchBestSellerBooks() async {
    emit(BestSellerBooksLoadingState());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold(
      (error) {
        emit(
          BestSellerBooksErrorState(error.errMessage),
        );
      },
      (books) {
        emit(BestSellerBooksSuccessState(books));
      },
    );
  }
}
