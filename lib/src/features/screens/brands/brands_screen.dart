import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/brands/brands_custom_widgets.dart';
import 'package:unilever_app/src/common_widgets/scaffold/custom_scaffold.dart';
import 'package:unilever_app/src/common_widgets/signin/signin_custom_widgets.dart';

class BrandsSreen extends StatelessWidget {
  const BrandsSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      contentWidgets: [
      kBrandsAppBar(),
      kSearchBrands(),
      kSpacing(),
      kBrands(),
      ]
      );
  }
}