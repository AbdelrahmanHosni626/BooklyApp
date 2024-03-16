import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/features/book_details/ui/widgets/book_action.dart';
import 'package:bookly_app/features/book_details/ui/widgets/book_details_App_bar.dart';
import 'package:bookly_app/features/book_details/ui/widgets/book_details_item.dart';
import 'package:bookly_app/features/book_details/ui/widgets/you_can_also_like_list_view.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/logic/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsScreen extends StatefulWidget {
  final BookModel bookModel;

  const BookDetailsScreen({super.key, required this.bookModel});

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo!.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            physics: const RangeMaintainingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BookDetailsAppBar(),
                verticalSpace(35.h),
                BookDetailsItem(bookModel: widget.bookModel,),
                verticalSpace(35.h),
                BookAction(bookModel: widget.bookModel,),
                verticalSpace(50.h),
                Text(
                  'You can also like',
                  style: TextStyles.font14WhiteSemiBold,
                ),
                verticalSpace(15.h),
                const YouCanAlsoLikeListView(),
                verticalSpace(15.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
