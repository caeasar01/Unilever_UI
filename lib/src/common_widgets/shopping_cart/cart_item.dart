import 'package:flutter/material.dart';
import 'package:unilever_app/src/const/image_string.dart';
import 'package:unilever_app/src/const/size.dart';

import '../buttons/quatity_button_I.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      contentPadding: const EdgeInsets.only(left: paddingRight,top: paddingLeft-10,bottom: paddingLeft-10, right: paddingRight),
      tileColor: Colors.amber,
      leading:  Container(
          width: 80,
          decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage(logoImage),),
            border: Border.all(),
            borderRadius: BorderRadius.circular(15),
          )
        ), 
      title: const SizedBox(
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Product Name"),
                Text("weigth"),
                Text("price")
              ],
            ),
          ),
      trailing: const QuatityButtonI(),
      
    );
  }
}
