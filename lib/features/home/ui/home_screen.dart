import 'package:bookly_app/features/home/ui/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/ui/widgets/custom_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          FeaturedBoosListView(),
        ],
      ),
    );
  }
}

class FeaturedBoosListView extends StatelessWidget {
  const FeaturedBoosListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const CustomListViewItem(),
      ),
    );
  }
}
