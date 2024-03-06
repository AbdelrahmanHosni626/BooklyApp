import 'package:bookly_app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../generated/assets.dart';

class YouCanAlsoLikeListViewItem extends StatelessWidget {
  const YouCanAlsoLikeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.bookDetailsScreen),
      child: Container(
        width: 100.w,
        height: 150.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.imagesTestImage,
            ),
          ),
        ),
      ),
    );
  }
}