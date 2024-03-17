import 'package:bookly_app/core/networking/api_service.dart';
import 'package:bookly_app/core/routing/app_router.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/core/theming/colors.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/logic/best_seller_cubit/best_seller_books_cubit.dart';
import 'package:bookly_app/features/home/logic/featured_books_cubit/featured_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BooklyApp extends StatelessWidget {
  final AppRouter appRouter;

  const BooklyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers:
        [
          BlocProvider(
            create: (BuildContext context) => FeaturedBooksCubit(
              HomeRepoImpl(
                ApiService(
                  Dio(),
                ),
              ),
            )..fetchFeaturedBooks(),
          ),
          BlocProvider(
            create: (BuildContext context) => BestSellerCubit(
              HomeRepoImpl(
                ApiService(
                  Dio(),
                ),
              ),
            )..fetchBestSellerBooks(),
          ),
        ],

        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.onBoardingScreen,
          theme: ThemeData(
              scaffoldBackgroundColor: ColorsManager.mainBlue,
              primaryColor: ColorsManager.mainBlue,
              textTheme: GoogleFonts.montserratTextTheme()),
        ),
      ),
    );
  }
}
