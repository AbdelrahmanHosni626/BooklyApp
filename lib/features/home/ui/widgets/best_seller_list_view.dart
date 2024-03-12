import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/widgets/custom_error_meassge.dart';
import 'package:bookly_app/features/home/logic/best_seller_cubit/best_seller_books_cubit.dart';
import 'package:bookly_app/features/home/logic/best_seller_cubit/best_seller_books_states.dart';
import 'package:bookly_app/features/home/ui/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BestSellerCubit, BestSellerBooksStates>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is BestSellerBooksSuccessState) {
          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => BestSellerListViewItem(
              bookModel: state.books[index],
            ),
            separatorBuilder: (context, index) => verticalSpace(20),
            itemCount: state.books.length,
          );
        } else if (state is BestSellerBooksErrorState) {
          return CustomErrorWidget(errMessage: state.error);
        } else {
          return Column(
            children:
            [
              loadingCard(),
              loadingCard(),
              loadingCard(),
              loadingCard(),
            ],
          );
        }
      },
    );
  }
}
Shimmer loadingCard() => Shimmer.fromColors(
  baseColor: Colors.grey.shade300,
  highlightColor: Colors.black.withOpacity(.2),
  child: Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 125,
          width: 125,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8)),
        ),
        horizontalSpace(10),
        Expanded(
          child: Column(
            children: [
              Container(
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              verticalSpace(8),
              Container(
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              verticalSpace(8),
              Container(
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              verticalSpace(8),
              Container(
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);