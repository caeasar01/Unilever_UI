import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Product {
    String productId;
    String productType;
    String prodctName;
    String productBrand;
    int productPrice;
    String productImage;
    String prodctWeight;

    Product({
        required this.productId,
        required this.productType,
        required this.prodctName,
        required this.productBrand,
        required this.productPrice,
        required this.productImage,
        required this.prodctWeight,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        productId: json["product_id"],
        productType: json["product_type"],
        prodctName: json["prodct_name"],
        productBrand: json["product_brand"],
        productPrice: json["product_price"],
        productImage: json["product_image"],
        prodctWeight: json["prodct_weight"],
    );

    factory Product.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> json) => Product(
        productId: json["product_id"],
        productType: json["product_type"],
        prodctName: json["prodct_name"],
        productBrand: json["product_brand"],
        productPrice: json["product_price"],
        productImage: json["product_image"],
        prodctWeight: json["prodct_weight"],
        );

    Map<String, dynamic> toJson() => {
        "product_id": productId,
        "product_type": productType,
        "prodct_name": prodctName,
        "product_brand": productBrand,
        "product_price": productPrice,
        "product_image": productImage,
        "prodct_weight": prodctWeight,
    };
}
