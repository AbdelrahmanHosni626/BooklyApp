import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class HomeRepo
{
  Future<Either<Failure,Map<String,dynamic>>> fetchBestSellerBooks();
  Future<Either<Failure,Map<String,dynamic>>> fetchFeaturedBooks();
}