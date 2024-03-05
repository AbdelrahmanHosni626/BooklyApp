import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      height: 160.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Assets.imagesTestImage,
          ),
        ),
      ),
    );
  }
}