import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/product/custom_product_tile_I.dart';

class CustomProductMenu extends StatelessWidget {
  final Axis scrollDirection;
  final String productImage;
  final String productName;
  const CustomProductMenu({super.key, required this.productImage, required this.productName, this.scrollDirection = Axis.vertical});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: GridView.builder(
      scrollDirection: scrollDirection,
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 350
                ),
                itemBuilder: (context, index) => CustomProductTileI(productTileImage: productImage, productTileName: productName,)),);
  }
}