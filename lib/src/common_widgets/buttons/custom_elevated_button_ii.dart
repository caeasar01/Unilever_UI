import 'package:flutter/material.dart';

import '../../const/size.dart';

class CustomElevatedButtonII extends StatelessWidget {
  final String btnName;
  final Icon btnIcon;
  final Color btnColor;
  final double btnwidth;
  final AlignmentGeometry btnPosition;
  const CustomElevatedButtonII(
      {super.key,
      required this.btnName,
      required this.btnIcon,
      required this.btnPosition, required this.btnColor, this.btnwidth = double.infinity,
      
      });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: btnPosition,
      child: Container(
        height: btnHeight,
        width: double.infinity ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(btnHeight),
          color:btnColor,
        ),
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: btnIcon,
          label: Text(btnName),
          style: Theme.of(context).elevatedButtonTheme.style,
        ),
      ),
    );
  }
}
