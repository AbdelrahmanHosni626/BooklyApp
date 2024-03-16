import 'package:flutter/material.dart';

import '../helpers/font_wight_helper.dart';

class AppTextButton extends StatelessWidget {
  final Color textColor;
  final Color bgColor;
  final BorderRadius? borderRadius;
  final String text;
  final VoidCallback? onPressed;

  const AppTextButton({
    super.key,
    required this.textColor,
    required this.bgColor,
    this.borderRadius,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: bgColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ??
                    const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ))),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeightHelper.extraBold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
