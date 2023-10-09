import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

import '../../const/size.dart';
import '../../const/text_string.dart';
import '../app_bar/padding.dart';

class CustomMenuItem extends StatelessWidget {
  final String label;
  final IconData? icon;
  const CustomMenuItem({
    super.key, required this.label, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: paddingRight * 2,
      color: Colors.white,
      child: CustomPadding(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon),
          CustomPadding(
              child: Text(
            label,
            style: Theme.of(context).textTheme.titleMedium,
          ))
        ],
      )),
    );
  }
}
