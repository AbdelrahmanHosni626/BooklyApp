import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const RangeMaintainingScrollPhysics(),
      itemBuilder: (context, index) => Container(),
      separatorBuilder: (context, index) => verticalSpace(20),
      itemCount: 10,
    );
  }
}