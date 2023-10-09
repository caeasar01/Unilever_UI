import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/menu/menu_custom_widgets.dart';
import 'package:unilever_app/src/common_widgets/scaffold/custom_scaffold.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      sbgColor: Colors.red,
      scaffoldPadding: 0,
      contentWidgets: [
      kUserProfile(),
      const SizedBox(height: 5,),
      kInviteFriends(),
      const SizedBox(height: 5,),
      kMenuList(),
      kMenuLogOut(),
    ],);
  }
}