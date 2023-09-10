import 'dart:math';

import 'package:flutter/material.dart';
import 'package:unilever_app/src/const/size.dart';

import '../../const/text_string.dart';

class CustomLinkField extends StatelessWidget {
  const CustomLinkField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      width: MediaQuery.of(context).size.width,
      height: paddingRight + 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Padding(
             padding: EdgeInsets.only(left: paddingLeft),
             child: Text(link, style: Theme.of(context).textTheme.displayMedium,),
           ),
          SizedBox(
            height: 50,
            width: 100,
            child: ElevatedButton(
              onPressed: (){},
              child: const Text(copyLink),
              style: Theme.of(context).elevatedButtonTheme.style,
            ),
          )
        ],
      ),
    );
  }
}