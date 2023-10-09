import 'package:flutter/material.dart';
import 'package:unilever_app/src/const/size.dart';

class CustomNavBarII extends StatelessWidget {
  final String btnName;
  const CustomNavBarII({super.key, required this.btnName});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
      ),
      child: Text(btnName,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
    );
  }
}