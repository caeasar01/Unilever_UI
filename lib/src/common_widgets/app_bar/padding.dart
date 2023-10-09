import 'package:flutter/material.dart';

import '../../const/size.dart';

class CustomPadding extends StatelessWidget {
  final Widget child;
  const CustomPadding({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: paddingLeft,right: paddingLeft),
      child: child,
    );
  }
}