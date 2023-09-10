import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class CustomSocialGrid extends StatelessWidget {
  final String socialIcons;
  const CustomSocialGrid({super.key, required this.socialIcons});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0,right: 0),
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(30),
      ),
      child: GridView.builder(scrollDirection: Axis.vertical,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) => Image(image: AssetImage(socialIcons),),),
    );
  }
}