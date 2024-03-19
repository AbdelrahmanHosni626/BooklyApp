import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/networking/api_service.dart';
import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../home/data/models/book_model/book_model.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);




  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks({required String bookType}) async {
    try {
      var data = await apiService.get(endPoint: 'volumes?q=subject:$bookType&Filtering=free-ebooks');
      List<BookModel> searchedBookModel = [];
      for (var item in data['items']) {
        searchedBookModel.add(BookModel.fromJson(item));
      }

      if (kDebugMode) {
        print(
            '#####################################################################################$searchedBookModel');
      }
      return right(searchedBookModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }




}
