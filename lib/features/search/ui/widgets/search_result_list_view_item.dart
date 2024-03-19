import 'package:bookly_app/core/helpers/extensions.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SearchResultListViewItem extends StatelessWidget {
  final BookModel bookModel;
  const SearchResultListViewItem({Key? key, required this.bookModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.bookDetailsScreen, arguments: bookModel),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: customImageListView(
              bookModel.volumeInfo!.imageLinks!.thumbnail!,
            ),
          ),
          horizontalSpace(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.50,
                child: Text(
                  bookModel.volumeInfo!.title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font20WhiteRegular
                      .copyWith(fontFamily: 'sectra'),
                ),
              ),
              verticalSpace(3),
              Text(
                bookModel.volumeInfo!.authors![0],
                style: TextStyles.font14GreyMedium,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Icon(
                    FontAwesomeIcons.solidStar,
                    size: 15,
                    color: ColorsManager.lightYellow,
                  ),
                  horizontalSpace(5),
                  Text(
                    'free',
                    style: TextStyles.font20WhiteBold,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


Widget customImageListView(final String imgUrl) => SizedBox(
  height: 120.h,
  child: CachedNetworkImage(
    fit: BoxFit.fill,
    imageUrl: imgUrl,
  ),
);