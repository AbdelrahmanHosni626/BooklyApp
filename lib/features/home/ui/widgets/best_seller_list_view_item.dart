import 'package:bookly_app/core/helpers/extensions.dart';
import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/core/theming/colors.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.bookDetailsScreen),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120.h,
            child: Image.asset(
              Assets.imagesTestImage,
            ),
          ),
          horizontalSpace(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.57,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font20WhiteRegular.copyWith(fontFamily: 'sectra'),
                ),
              ),
              verticalSpace(3),
              Text('J.K. Rowling', style: TextStyles.font14GreyMedium,),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('19.99 €     ', style: TextStyles.font20WhiteBold,),
                  Row(
                    children: [
                      const Icon(FontAwesomeIcons.solidStar, size: 15, color: ColorsManager.lightYellow,),
                      Text('4.8', style: TextStyles.font16WhiteMedium,),
                      Text('(2390)', style: TextStyles.font14WhiteRegular,),
                    ],
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