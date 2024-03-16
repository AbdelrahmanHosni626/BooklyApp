import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/networking/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/networking/end_points.dart';
import '../models/book_model/book_model.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);



  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(endPoint: bestSellerBooksEndPoint);
      List<BookModel> bestSellerBookModel = [];
      for (var item in data['items']) {
        bestSellerBookModel.add(BookModel.fromJson(item));
      }

      if (kDebugMode) {
        print(
            '#####################################################################################$bestSellerBookModel');
      }
      return right(bestSellerBookModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }



  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(endPoint: featuredBooksEndPoint);
      List<BookModel> featuredBookModel = [];
      for (var item in data['items']) {
        featuredBookModel.add(BookModel.fromJson(item));
      }

      if (kDebugMode) {
        print(
            '**************************************************************************$featuredBookModel');
      }
      return right(featuredBookModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async {
    try {
      var data = await apiService.get(endPoint: similarBooksEndPoint);
      List<BookModel> similarBooksModel = [];
      for (var item in data['items']) {
        similarBooksModel.add(BookModel.fromJson(item));
      }

      if (kDebugMode) {
        print(
            '**************************************************************************$similarBooksModel');
      }
      return right(similarBooksModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
