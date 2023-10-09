import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'dart:convert';

import 'product_type.dart';

ProductCategory productCategoryFromJson(String str) => ProductCategory.fromJson(json.decode(str));

String productCategoryToJson(ProductCategory data) => json.encode(data.toJson());

class ProductCategory {
    String id;
    String category;
    List<ProductType> productType;

    ProductCategory({
        required this.id,
        required this.category,
        required this.productType,
    });

    factory ProductCategory.fromJson(Map<String, dynamic> json) => ProductCategory(
        id: json["id"],
        category: json["category"],
        productType: List<ProductType>.from(json["product_type"].map((x) => ProductType.fromJson(x))),
    );

    factory ProductCategory.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> json) => ProductCategory(
        id: json["id"],
        category: json["category"],
        productType: [],);

    Map<String, dynamic> toJson() => {
        "id": id,
        "category": category,
        "product_type": List<dynamic>.from(productType.map((x) => x.toJson())),
    };
}