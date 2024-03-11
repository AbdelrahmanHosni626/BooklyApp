import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/features/search/ui/search_screen.dart';
import 'package:flutter/material.dart';

import '../../features/book_details/ui/book_details_screen.dart';
import '../../features/home/ui/home_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name)
    {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.bookDetailsScreen:
        return MaterialPageRoute(builder: (_) => const BookDetailsScreen());

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
