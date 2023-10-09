import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class QuatityButtonI extends StatelessWidget {
  const QuatityButtonI({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Theme.of(context).primaryColor),
              ),
              child:  const Icon(FontAwesomeIcons.minus,size: 15,),
            ),
          ),
          const Text("4"),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Theme.of(context).primaryColor,),
              ),
              child: const Icon(FontAwesomeIcons.plus, size: 15,),
            ),
          ),
        ],
      ),
    );
  }
}