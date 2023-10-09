import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/product/custom_product_menu.dart';

class CustomTabViewI extends StatelessWidget {
  final int crossCount;
  final Axis scrollDirection;
  final String productName;
  final String productImage;
  final String productCart;
  const CustomTabViewI({super.key, required this.productCart, required this.productName, required this.productImage, this.scrollDirection = Axis.vertical, this.crossCount = 1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(productCart,style: Theme.of(context).textTheme.displayLarge,),
            Text("See All ()", style: Theme.of(context).textTheme.labelMedium,),
          ],
        )),

        const SizedBox(height: 10,),

        CustomProductMenu(productImage: productImage, productName: productName, scrollDirection: scrollDirection,crossCount: crossCount,)
      ],
    );
  }
}