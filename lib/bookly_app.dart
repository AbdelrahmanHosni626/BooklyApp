import 'package:bookly_app/core/routing/app_router.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BooklyApp extends StatelessWidget {
  final AppRouter appRouter;
  const BooklyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.homeScreen,

        theme: ThemeData(scaffoldBackgroundColor: ColorsManager.mainBlue),

      ),
    );
  }
}
