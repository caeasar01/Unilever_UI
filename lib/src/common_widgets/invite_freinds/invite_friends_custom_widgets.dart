import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/app_bar/custom_appbar.dart';
import 'package:unilever_app/src/common_widgets/invite_freinds/link_field.dart';
import 'package:unilever_app/src/common_widgets/invite_freinds/social_grid.dart';
import 'package:unilever_app/src/const/image_string.dart';
import 'package:unilever_app/src/const/text_string.dart';

Widget kInviteAppBar(){
  return const CustomAppBar(appBarTittle: inviteFriends);
}

Widget kLink(){
  return const CustomLinkField();
}

Widget kSocialIcons(){
  return const CustomSocialGrid(socialIcons: logoImage);
}