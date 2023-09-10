import 'package:flutter/material.dart';
import 'package:unilever_app/src/Utils/theme/color_theme.dart';
import 'package:unilever_app/src/const/size.dart';

class CustomOutlinedButtonI extends StatelessWidget {
  final Icon btnIcon;
  // final Widget btnRoute;
  final String btnlabel;
  final double btnwidth;
  final Color btnColor;
  final AlignmentGeometry btnPosition;
  const CustomOutlinedButtonI({super.key, required this.btnIcon, required this.btnlabel, required this.btnPosition, this.btnwidth = double.infinity,required this.btnColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: btnHeight,
        width: btnwidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(btnHeight),
        ),
        child: OutlinedButton.icon(
          onPressed: (){}, icon: btnIcon, label: Text(btnlabel),),
    );
  }
}