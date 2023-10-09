

import 'package:get/get.dart';
import 'package:unilever_app/src/features/screens/brands/brands_screen.dart';
import 'package:unilever_app/src/features/screens/categories/categogies_screen.dart';
import 'package:unilever_app/src/features/screens/home/home_screen.dart';
import 'package:unilever_app/src/features/screens/invite_friends/invite_friends_screen.dart';
import 'package:unilever_app/src/features/screens/menu/menu_screen.dart';
import 'package:unilever_app/src/features/screens/my_order/my_order_screen.dart';
import 'package:unilever_app/src/features/screens/otp/verification.dart';
import 'package:unilever_app/src/features/screens/search/search_screen.dart';
import 'package:unilever_app/src/features/screens/shopping_cart/shopping_cart_sreen.dart';
import 'package:unilever_app/src/features/screens/signin/signin_screen.dart';
import 'package:unilever_app/src/features/screens/splash/splash_screen.dart';
import 'package:unilever_app/src/features/screens/tooth_paste/toothpaste_screen.dart';
import 'package:unilever_app/src/features/screens/welcome/welcome_screen.dart';

class AppRouting{
  static List <GetPage> appRoutes() =>
  [
    GetPage(name: "/" ,page: ()=> const SplashScreen()),
    GetPage(name: "/SignIn", page: () => const SignInScreen()),
    GetPage(name: "/Verification", page: ()=> const VerificationScreen()),
    GetPage(name: "/Home", page: ()=> const HomeScreen()),
    GetPage(name: "/ShoppingCart", page: ()=> const ShoppingCartSreen()),
    GetPage(name: "/Orders", page: ()=> const MyOrderScreen()),
    GetPage(name: "/Invite", page:()=> const InviteFriendsScreen()),
    GetPage(name: "/Menu", page: ()=> const MenuScreen()),
    GetPage(name: "/Brands", page: ()=> const BrandsSreen()),
    GetPage(name: "/Categories", page: ()=> const CategoriesScreen()),
    GetPage(name: "/Welcome", page: ()=> const WelcomeScreen()),
    GetPage(name: "/ProductMenu", page: ()=> const ToothpasteScreen()),
    GetPage(name: "/Search", page: ()=> const SearchSreen()),
  ];
}
