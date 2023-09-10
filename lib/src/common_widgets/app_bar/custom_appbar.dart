import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import '../../const/text_string.dart';

class CustomAppBar extends StatelessWidget {
  final String appBarTittle;
  const CustomAppBar({
    super.key,
    required this.appBarTittle,
  }) ;


  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      toolbarHeight: _height*0.1,
      centerTitle: true,
      leading: InkWell(
        onTap: (){},
        child: const Icon(FontAwesomeIcons.arrowLeftLong, color: Colors.blueGrey,)),
        title: Text(appBarTittle, style: Theme.of(context).textTheme.displayLarge,),
    );
  }
}