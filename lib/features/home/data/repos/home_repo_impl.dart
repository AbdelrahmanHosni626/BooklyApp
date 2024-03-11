import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/networking/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/networking/end_points.dart';

class HomeRepoImpl implements HomeRepo {

  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, Map<String,dynamic>>> fetchBestSellerBooks() async{
    try {
      var data = await apiService.get(endPoint: bestSellerBooks);
      if (kDebugMode) {
        print(data);
      }
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String,dynamic>>> fetchFeaturedBooks() async{
    try {
      var data = await apiService.get(endPoint: featuredBooks);
      if (kDebugMode) {
        print(data);
      }
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}