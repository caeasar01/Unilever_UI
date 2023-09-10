import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:unilever_app/src/common_widgets/invite_freinds/invite_friends_custom_widgets.dart';
import 'package:unilever_app/src/common_widgets/scaffold/custom_scaffold.dart';
import 'package:unilever_app/src/common_widgets/signin/signin_custom_widgets.dart';

class InviteFriendsScreen extends StatelessWidget {
  const InviteFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(contentWidgets: [
      kInviteAppBar(),
      const Expanded(child: SizedBox(
        child: Icon(FontAwesomeIcons.userPlus,size: 100,),
      )),
      kLink(),
      kSpacing(),
      kSpacing(),
      kOr(),
      kSpacing(),
      kSpacing(),
      kSocialIcons(),
    ]);
  }
}