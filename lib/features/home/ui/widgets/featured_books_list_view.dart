import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/features/home/ui/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => horizontalSpace(25),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const CustomListViewItem(),
      ),
    );
  }
}
