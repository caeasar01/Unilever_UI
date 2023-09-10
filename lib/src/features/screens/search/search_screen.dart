import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/scaffold/custom_scaffold.dart';
import 'package:unilever_app/src/common_widgets/search/search_custom_widgets.dart';

import '../../../const/text_string.dart';

class SearchSreen extends StatelessWidget {
  const SearchSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(contentWidgets: [
      kSearchAppBar(),
      kSearchField(),
      const Expanded(child:SizedBox()),
      Expanded(
        child: Text(noResult, style: Theme.of(context).textTheme.displayLarge,),
      )
      ],);
  }
}