import 'package:bookly_app/core/widgets/custom_error_meassge.dart';
import 'package:bookly_app/features/book_details/ui/widgets/you_can_also_like_list_view_item.dart';
import 'package:bookly_app/features/home/logic/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/logic/similar_books_cubit/similar_books_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';

class YouCanAlsoLikeListView extends StatelessWidget {
  const YouCanAlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SimilarBooksCubit, SimilarBooksStates>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is SimilarBooksSuccessState) {
          return SizedBox(
            height: 150.h,
            width: double.infinity,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, index) => horizontalSpace(10),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) =>
                  YouCanAlsoLikeListViewItem(
                    bookModel: state.books[index],
                    imageUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                  ),
            ),
          );
        } else if (state is SimilarBooksErrorState) {
          return CustomErrorWidget(errMessage: state.error);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
