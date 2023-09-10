import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/menu/product_menu_custom+widgets.dart';
import 'package:unilever_app/src/common_widgets/scaffold/custom_scaffold.dart';

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
