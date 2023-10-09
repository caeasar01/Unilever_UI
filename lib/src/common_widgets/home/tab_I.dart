import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class TabI extends StatelessWidget {
  final IconData tabIcon;
  final String tabName;
  const TabI({super.key, required this.tabIcon, required this.tabName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Icon(tabIcon)),
          Expanded(child: Text(tabName, style: Theme.of(context).textTheme.displaySmall,)),
        ],
      )
    );
  }
}