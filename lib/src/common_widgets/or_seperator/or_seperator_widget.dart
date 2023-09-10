import 'package:flutter/material.dart';
import 'package:unilever_app/src/const/size.dart';

import '../../const/text_string.dart';

class CustomOrSperator extends StatelessWidget {
  const CustomOrSperator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              color: Colors.blueGrey,
              height: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: paddingLeft, right: paddingLeft),
            child: Text(or,style: Theme.of(context).textTheme.titleMedium,),
          ),
          Expanded(
            child: Container(
              color: Colors.blueGrey,
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}