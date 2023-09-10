import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:unilever_app/src/const/image_string.dart';
import 'package:unilever_app/src/const/size.dart';

class CustomProductTileI extends StatelessWidget {
  final String productTileImage;
  final String productTileName;
  const CustomProductTileI({super.key, required this.productTileImage, required this.productTileName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: paddingLeft, bottom: paddingRight),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey,width: 1.5),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: paddingLeft,right: paddingLeft),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Image(image: AssetImage(productTileImage),fit:BoxFit.cover ,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:paddingLeft ),
              child: Text(productTileName,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium,),
            ),
            SizedBox(
              height: paddingRight +10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("GHC 10",style: TextStyle(decoration:TextDecoration.lineThrough, decorationColor: Colors.red,decorationThickness: 3),),
                        Text("1kg"),
                        ],
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("GHC 10"),
                      ],
                    ),
                  ),
                  const Expanded(child:  SizedBox()),
                  Expanded(
                    child: Container(
                      width: paddingRight,
                      decoration: BoxDecoration(
                        border: Border.all(color: Theme.of(context).primaryColor,width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(FontAwesomeIcons.plus, color: Theme.of(context).primaryColor,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}