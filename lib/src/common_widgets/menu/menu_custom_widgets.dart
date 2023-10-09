import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:unilever_app/src/common_widgets/app_bar/padding.dart';
import 'package:unilever_app/src/common_widgets/menu/custom_menu_view.dart';
import 'package:unilever_app/src/common_widgets/menu/custom_profile.dart';
import 'package:unilever_app/src/const/size.dart';
import 'package:unilever_app/src/const/text_string.dart';

import 'custom_menu_item.dart';

Widget kUserProfile(){
  return const CustomProfile();
}

Widget kInviteFriends(){
  return const CustomMenuItem(icon: FontAwesomeIcons.person, label: inviteFriends,);
}

Widget kMenuList(){
  return const CustomMenuView(icon: FontAwesomeIcons.house, label: home,);
}

Widget kMenuLogOut(){
  return Container(
    color: Colors.white,
    height: defaultButtonSize,
    child: const Column(
      children: [
        Expanded(child: SizedBox()),
        CustomMenuItem(label: logOut, icon: FontAwesomeIcons.lockOpen)
      ],
    ),
  );
}

