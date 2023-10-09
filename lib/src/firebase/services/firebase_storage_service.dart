import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:unilever_app/src/features/controllers/product_controllers/product_data_uploader.dart';
import 'package:unilever_app/src/features/models/products/product.dart';
import 'package:unilever_app/src/features/models/products/product_cat.dart';
import 'package:unilever_app/src/features/models/products/product_type.dart';

import '../reference.dart';

class FirebaseStorageService extends GetxService {
  final allProductCat = <ProductCategory>[].obs;
  final allProductType = <ProductType>[].obs;
  final allProducts = <Product>[].obs;

  Future<void> getProducts() async {
    try {
      QuerySnapshot<Map<String, dynamic>> data = await productCatRef.get();
      final productCatList = data.docs
          .map((productType) => ProductCategory.fromSnapshot(productType))
          .toList();
      allProductCat.assignAll(productCatList);

      for (QueryDocumentSnapshot categoryDoc in data.docs) {
        QuerySnapshot<Map<String, dynamic>> typeSnapshot =
            await categoryDoc.reference.collection("Product Type").get();
        final productTypeList = typeSnapshot.docs
            .map((products) => ProductType.fromSnapshot(products))
            .toList();
        allProductType.assignAll(productTypeList);

        for (QueryDocumentSnapshot typeDoc in typeSnapshot.docs) {
          QuerySnapshot<Map<String, dynamic>> productSnapshot =
              await typeDoc.reference.collection('"Products').get();
          final productList = productSnapshot.docs
              .map((products) => Product.fromSnapshot(products))
              .toList();
          allProducts.assignAll(productList);

          for (QueryDocumentSnapshot productDoc in productSnapshot.docs) {
            // Product.fromSnapshot(productDoc);
          }
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
