import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/menu/custom_menu_item.dart';
import 'package:unilever_app/src/const/text_string.dart';

class CustomMenuView extends StatelessWidget {
  final String label;
  final IconData icon;
  const CustomMenuView({super.key, required this.label, required  this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index){
          return CustomMenuItem(icon: icon, label: label,);}),
    );
  }
}