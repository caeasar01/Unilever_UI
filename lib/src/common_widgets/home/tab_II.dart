import 'package:flutter/material.dart';

class TabII extends StatelessWidget {
  final String tabLabel;
  const TabII({super.key, required this.tabLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(tabLabel,),
    );
  }
}