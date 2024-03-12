import 'package:bookly_app/core/helpers/extensions.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';

class CustomListViewItem extends StatelessWidget {
  final String imgUrl;

  const CustomListViewItem({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.bookDetailsScreen),
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