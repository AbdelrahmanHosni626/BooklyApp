import 'package:bookly_app/core/helpers/extensions.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';

class YouCanAlsoLikeListViewItem extends StatelessWidget {

  final BookModel bookModel;

  final String imageUrl;
  const YouCanAlsoLikeListViewItem({super.key, required this.imageUrl, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.bookDetailsScreen, arguments: bookModel),
      child: Container(
        width: 100.w,
        height: 150.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}