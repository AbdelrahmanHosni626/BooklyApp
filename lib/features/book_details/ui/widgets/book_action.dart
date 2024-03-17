import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/app_text_button.dart';

class BookAction extends StatelessWidget {
  final BookModel bookModel;
  const BookAction({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: AppTextButton(
              textColor: Colors.black,
              bgColor: Colors.white,
              text: 'Free',
          ),
        ),
        Expanded(
          child: AppTextButton(
            onPressed: () async {
              Uri url = Uri.parse(bookModel.volumeInfo!.previewLink!);
              if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
              }
            },
            textColor: Colors.white,
            bgColor: ColorsManager.lightRed,
            text: getText(),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
      ],
    );
  }


  String getText() {
    if(bookModel.volumeInfo!.previewLink != null){
      return 'Preview';
    } else {
      return 'Not Available';
    }
  }
}
