import 'package:ecommerce/core/routes_manager/routes.dart';
import 'package:ecommerce/features/auth/screens/SignIn/sign_in_screen.dart';
import 'package:ecommerce/features/auth/screens/SignUp/sign_up_screen.dart';
import 'package:ecommerce/features/auth/screens/welcome_screen.dart';
import 'package:ecommerce/features/cart/screens/cart_screen.dart';
import 'package:ecommerce/features/main_layout/main_layout.dart';
import 'package:ecommerce/features/product_details/presentation/screens/product_details.dart';
import 'package:ecommerce/features/product_screen/presentation/screens/products_screen.dart';
import 'package:ecommerce/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {

      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.cartRoute:
        return MaterialPageRoute(builder: (_) => const CartScreen());

      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) =>  MainLayout());

      case Routes.productsScreenRoute:
        return MaterialPageRoute(builder: (_) => const ProductsScreen());

      case Routes.productDetails:
        return MaterialPageRoute(builder: (_) => const ProductDetails());

      case Routes.welcomeRoute:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());

      case Routes.signInRoute:
        return MaterialPageRoute(builder: (_) => const SignInScreen());

      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('No Route Found')),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
