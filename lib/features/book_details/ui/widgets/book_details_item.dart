import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        Image.asset(
          'assets/images/test_image.png',
          height: 243,
        ),
        verticalSpace(40.h),
        Text(
          'The Jungle Book',
          style: TextStyles.font30WhiteRegular.copyWith(fontFamily: 'sectra'),
        ),
        verticalSpace(4.h),
        Text(
          'Rudyard Kipling',
          style: TextStyles.font18DarGreyMedium,
        ),
        verticalSpace(15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(FontAwesomeIcons.solidStar, size: 15, color: ColorsManager.lightYellow,),
            horizontalSpace(6.w),
            Text('4.8', style: TextStyles.font16WhiteMedium,),
            horizontalSpace(9.w),
            Text('(2390)', style: TextStyles.font14WhiteRegular.copyWith(color: ColorsManager.darkGrey),),
          ],
        ),
      ],
    );
  }
}