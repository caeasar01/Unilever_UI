
// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    String userName;
    String id;
    String email;
    String phone;
    List<dynamic> myOrders;
    List<dynamic> favorites;
    String address;
    String registrationDate;
    String profilePic;

    User({
        required this.userName,
        required this.id,
        required this.email,
        required this.phone,
        required this.myOrders,
        required this.favorites,
        required this.address,
        required this.registrationDate,
        required this.profilePic,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        userName: json["userName"],
        id: json["id"],
        email: json["email"],
        phone: json["phone"],
        myOrders: List<dynamic>.from(json["My orders"].map((x) => x)),
        favorites: List<dynamic>.from(json["favorites"].map((x) => x)),
        address: json["address"],
        registrationDate: json["Registration_date"],
        profilePic: json["ProfilePic"],
    );

    Map<String, dynamic> toJson() => {
        "userName": userName,
        "id": id,
        "email": email,
        "phone": phone,
        "My orders": List<dynamic>.from(myOrders.map((x) => x)),
        "favorites": List<dynamic>.from(favorites.map((x) => x)),
        "address": address,
        "Registration_date": registrationDate,
        "ProfilePic": profilePic,
    };
}
