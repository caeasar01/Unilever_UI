import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/my_order/my_oder_custom_widgets.dart';
import 'package:unilever_app/src/common_widgets/nav_bar/custom_nav_bar_II.dart';
import 'package:unilever_app/src/common_widgets/scaffold/custom_scaffold.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      contentWidgets: [
        kMyOrderAppBar()
      ],
      navBar: CustomNavBarII(btnName: "Replay Order"),
      );
  }
}