import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/categories/category_custom_widgets.dart';
import 'package:unilever_app/src/common_widgets/scaffold/custom_scaffold.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(contentWidgets: [kCatAppBar(),kCartTabBar()]);
  }
}