import 'package:flutter/material.dart';
import 'package:unilever_app/src/const/size.dart';

class CustomElevatedButton extends StatelessWidget {
  final String btnName;
  final AlignmentGeometry btnPosition;
  final double btnWidth;
  final Widget? btnRoute;
  final Color btnColor;
  const CustomElevatedButton({super.key,required this.btnName, required this.btnPosition, this.btnRoute, this.btnWidth = double.infinity, required this.btnColor,});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: btnPosition,
      child: Container(
        height: btnHeight,
        width: btnWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(btnHeight),
          color: btnColor,
        ),
        child: ElevatedButton(
          onPressed: (){},
          style: Theme.of(context).elevatedButtonTheme.style, 
          child: Text(btnName.toUpperCase()),
          ),
      ),
    );
  }
}