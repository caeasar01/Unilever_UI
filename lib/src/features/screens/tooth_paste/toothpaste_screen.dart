import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/scaffold/custom_scaffold.dart';

import '../../../common_widgets/product/product_menu_custom+widgets.dart';

class ToothpasteScreen extends StatelessWidget {
  const ToothpasteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(contentWidgets: [
      kProductmenuAppBar(),
      kproductMenu(),
    ]);
  }
}
