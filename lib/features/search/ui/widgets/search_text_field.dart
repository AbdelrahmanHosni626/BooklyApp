import 'package:bookly_app/core/theming/colors.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final Color? fillColor;

  const SearchTextField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.hintText,
    this.hintStyle,
    this.inputTextStyle,
    this.suffixIcon,
    this.keyboardType,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 25.w,
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.lighterGrey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.lighterGrey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
        hintText: 'Search',
        hintStyle: TextStyles.font14WhiteSemiBold
            .copyWith(color: Colors.white.withOpacity(.5)),
        suffixIcon: const Opacity(
          opacity: .5,
          child: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
            size: 15,
          ),
        ),
      ),
    );
  }
}
