import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/features/home/logic/best_seller_cubit/best_seller_books_cubit.dart';
import 'package:bookly_app/features/home/logic/best_seller_cubit/best_seller_books_states.dart';
import 'package:bookly_app/features/home/ui/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BestSellerCubit,BestSellerBooksStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => const BestSellerListViewItem(),
          separatorBuilder: (context, index) => verticalSpace(20),
          itemCount: 10,
        );
      },
    );
  }
}