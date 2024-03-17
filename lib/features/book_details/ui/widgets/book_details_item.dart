import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class BookDetailsItem extends StatelessWidget {

  final BookModel bookModel;
  const BookDetailsItem({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        Container(
          width: 120.w,
          height: 180.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                bookModel.volumeInfo!.imageLinks!.thumbnail!,
              )
            )
          ),
        ),
        verticalSpace(40.h),
        Text(
          bookModel.volumeInfo!.title!,
          textAlign: TextAlign.center,
          style: TextStyles.font30WhiteRegular.copyWith(fontFamily: 'sectra'),
        ),
        verticalSpace(4.h),
        Text(
          bookModel.volumeInfo!.authors![0],
          style: TextStyles.font18DarGreyMedium,
        ),
        verticalSpace(15.h),
      ],
    );
  }
}