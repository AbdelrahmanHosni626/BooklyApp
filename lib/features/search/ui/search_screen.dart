import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/features/search/ui/widgets/search_result_list_view.dart';
import 'package:bookly_app/features/search/ui/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchTextField(),
              verticalSpace(20),
              Text('Search Result', style: TextStyles.font16WhiteMedium.copyWith(fontFamily: 'sectra'),),
              verticalSpace(20),
              const Expanded(child: SearchResultListView()),
            ],
          ),
        ),
      ),
    );
  }
}
