import 'package:bookly_app/core/helpers/extensions.dart';
import 'package:bookly_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../generated/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Row(
        children: [
          Image.asset(
            Assets.imagesAppBarLogo,
            height: 20.h,
          ),
          const Spacer(),
          IconButton(
            onPressed: ()
            {
              context.pushNamed(Routes.searchScreen);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
