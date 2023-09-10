import 'package:flutter/material.dart';
import 'package:unilever_app/src/const/image_string.dart';

class CustomBrandGrid extends StatelessWidget {
  final String brandLogo;
  const CustomBrandGrid({super.key, required this.brandLogo});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: GridView.builder(scrollDirection: Axis.vertical,
                itemCount: 50,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) => Image(image: AssetImage(brandLogo))),);
  }
}