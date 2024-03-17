import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/widgets/custom_error_meassge.dart';
import 'package:bookly_app/features/home/logic/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/logic/featured_books_cubit/featured_books_states.dart';
import 'package:bookly_app/features/home/ui/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksStates>(
      listener: (context, state) {},
      builder: (context, state) {
        if(state is FeaturedBooksSuccessState)
          {
            return SizedBox(
              height: 200.h,
              child: ListView.separated(
                separatorBuilder: (context, index) => horizontalSpace(25),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) => CustomListViewItem(
                  bookModel: state.books[index],
                  imgUrl: state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                ),
              ),
            );
          } else if (state is FeaturedBooksErrorState)
            {
              return CustomErrorWidget(errMessage: state.error);
            } else {
          return const Center(child: CircularProgressIndicator(),);
        }

      },
    );
  }
}
