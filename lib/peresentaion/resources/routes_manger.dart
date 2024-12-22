import 'package:adv_app/peresentaion/forgetpassword_view/forgetpassword_view.dart';
import 'package:adv_app/peresentaion/login/login.view.dart';
import 'package:adv_app/peresentaion/main/main_view.dart';
import 'package:adv_app/peresentaion/register/register_view.dart';
import 'package:adv_app/peresentaion/resources/strings_manger.dart';
import 'package:adv_app/peresentaion/splash/splash_view.dart';
import 'package:adv_app/peresentaion/store_details/store_details_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetpasswordRoute = "/forgetpassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgetpasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgetpasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
        default:return unDfiendRoute();
    }
  }
  static Route<dynamic> unDfiendRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.noRoutFound
        ),
        
      ),
      body: const Center(child: Text(AppStrings.noRoutFound)),
      
    ));
  }
}
