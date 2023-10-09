import 'package:flutter/material.dart';
import 'package:unilever_app/src/common_widgets/shopping_cart/cart_item.dart';

class CustomCart extends StatelessWidget {
  const CustomCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.4),
      child: ListView.separated(itemBuilder: (context, index)  {return const CustomCartItem();}, separatorBuilder: ((context, index) {
        return const SizedBox(height: 2,);
      }), itemCount: 10)
    );
  }
}