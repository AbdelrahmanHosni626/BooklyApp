import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/app_text_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: AppTextButton(
              textColor: Colors.black,
              bgColor: Colors.white,
              text: '19.99€'),
        ),
        Expanded(
          child: AppTextButton(
            textColor: Colors.white,
            bgColor: ColorsManager.lightRed,
            text: 'Free preview',
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
