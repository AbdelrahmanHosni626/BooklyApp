import 'package:bookly_app/core/networking/api_service.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/logic/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/search/ui/search_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/book_details/ui/book_details_screen.dart';
import '../../features/home/ui/home_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.bookDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SimilarBooksCubit(
              HomeRepoImpl(
                ApiService(
                  Dio(),
                ),
              ),
            ),
            child: const BookDetailsScreen(),
          ),
        );

      case Routes.searchScreen:
        return MaterialPageRoute(builder: (_) => const SearchScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route Defined For ${settings.name}'),
            ),
          ),
        );
    }
  }
}
