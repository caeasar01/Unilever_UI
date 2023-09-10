import 'package:flutter/material.dart';
import 'package:unilever_app/src/Utils/theme/color_theme.dart';
import 'package:unilever_app/src/const/size.dart';

class CustomOutlinedButtonII extends StatelessWidget {
  final String btnlabel;
  final double btnwidth;
  final AlignmentGeometry btnPosition;
  // final Widget btnRoute;
  final Color btnColor;
   const CustomOutlinedButtonII(
      {super.key,
      required this.btnlabel,
      required this.btnPosition,
      required this.btnwidth, required this.btnColor });

  @override 
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        height: btnHeight,
        width: btnwidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(btnHeight),
        ),
        child: OutlinedButton(
          onPressed: () {},
          style: Theme.of(context).outlinedButtonTheme.style,
          child: Text(btnlabel),
        ),
      ),
    );
  }
}
