import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unilever_app/src/Utils/theme/theme.dart';
import 'package:unilever_app/src/features/screens/brands/brands_screen.dart';
import 'package:unilever_app/src/features/screens/categories/categogies_screen.dart';
import 'package:unilever_app/src/features/screens/home/home_screen.dart';
import 'package:unilever_app/src/features/screens/invite_friends/invite_friends_screen.dart';
import 'package:unilever_app/src/features/screens/tooth_paste/toothpaste_screen.dart';
import 'package:unilever_app/src/features/screens/otp/verification.dart';
import 'package:unilever_app/src/features/screens/search/search_screen.dart';
import 'package:unilever_app/src/features/screens/signin/signin_screen.dart';
import 'package:unilever_app/src/features/screens/splash/splash_screen.dart';
import 'package:unilever_app/src/features/screens/welcome/welcome_screen.dart';

void main() {
  runApp(
     GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const CategoriesScreen(),
    ),
  );
}
