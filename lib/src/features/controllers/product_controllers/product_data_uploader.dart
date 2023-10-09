import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:unilever_app/src/firebase/reference.dart';

import '../../models/products/product_cat.dart';

class ProductDataUploader extends GetxController {
  @override
  void onReady() {
    productUploader();
    super.onReady();
  }

  Future<void> productUploader() async {
    final manifestContent = await DefaultAssetBundle.of(Get.context!)
        .loadString("AssetMaifest.json");
    final Map<String, dynamic> manifestMap = jsonDecode(manifestContent);

    // load json FilePath
    final productsInAsset = manifestMap.keys
        .where((path) => path.startsWith("assets/db") && path.contains(".json"))
        .toList();

    //load json content
    List <ProductCategory> productCat =[];
    for (var products in productsInAsset){
      String productCatContent = await rootBundle.loadString(products);
      productCat.add(ProductCategory.fromJson(jsonDecode(productCatContent)));
    }

    for (var productcategory in productCat){
      batch.set(productCatRef.doc(productcategory.id), {
        "Category": productcategory.category,
        "Product Type": productcategory.productType,
      });
      
      for(var producttype in productcategory.productType){
        final productTypePath = productTypeRef(pCatId: productcategory.id, pTypeId: producttype.id);
        batch.set(productTypePath, {
          "Name": producttype.name,
          "Product": producttype.products,
        });

        for (var products in producttype.products){
          final productPath = productRef(pCatId: productcategory.id, pTypeId: producttype.id, pId: products.productId);
          batch.set(productPath, {
            "Product Name": products.prodctName,
            "Product Price": products.productPrice,
            "Product Type": products.productType,
            "Product Weight": products.prodctWeight,
            "Product Image": products.productImage,
            "Product Brand": products.productBrand,
          });
        }
      }
    }
    batch.commit();
  }
}
