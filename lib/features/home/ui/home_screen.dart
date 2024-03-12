import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/features/home/ui/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/ui/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/ui/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                FeaturedBooksListView(),
                verticalSpace(50),
                Text('Best Seller', style: TextStyles.font20WhiteSemiBold),
                verticalSpace(20),
                const BestSellerListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


