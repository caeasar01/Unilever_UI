import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'product.dart';

class ProductType {
    String id;
    String name;
    List<Product> products;

    ProductType({
        required this.id,
        required this.name,
        required this.products,
    });

    factory ProductType.fromJson(Map<String, dynamic> json) => ProductType(
        id: json["id"],
        name: json["name"],
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    );

    factory ProductType.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> json) => ProductType(
        id: json["id"],
        name: json["name"],
        products: [],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
    };
}