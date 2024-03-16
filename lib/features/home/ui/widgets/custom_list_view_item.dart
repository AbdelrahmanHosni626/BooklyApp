import 'package:bookly_app/core/helpers/extensions.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';

class CustomListViewItem extends StatelessWidget {
  final BookModel bookModel;
  final String imgUrl;

  const CustomListViewItem({super.key, required this.imgUrl, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.bookDetailsScreen, arguments: bookModel),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Image(image: AssetImage(Assets.imagesWrongImage),),
          imageUrl: imgUrl,
        ),
      ),
    );
  }
}