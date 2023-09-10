import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:unilever_app/src/const/size.dart';
import 'package:unilever_app/src/const/text_string.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              keyboardType: TextInputType.name,
              decoration:InputDecoration(
                contentPadding: const EdgeInsets.only(left:paddingRight, top: paddingLeft,bottom: paddingLeft),
                hintText: "$search for products...",
                hintStyle: Theme.of(context).textTheme.displayMedium,
                suffixIcon: const Icon(FontAwesomeIcons.magnifyingGlass),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30),),
                ),
              ),
            );
  }
}