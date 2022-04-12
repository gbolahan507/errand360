// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/auth/complete_sign_up_view/complete_sign_up_view.dart';
import '../ui/auth/login/login_view.dart';
import '../ui/auth/signup/sign_up_view.dart';
import '../ui/main/home/home_view.dart';
import '../ui/main/main_view/main_view.dart';
import '../ui/main/startup/startup_view.dart';

class Routes {
  static const String startupView = '/';
  static const String loginView = '/login-view';
  static const String signUpView = '/sign-up-view';
  static const String completeSignUpView = '/complete-sign-up-view';
  static const String mainView = '/main-view';
  static const String homeView = '/home-view';
  static const all = <String>{
    startupView,
    loginView,
    signUpView,
    completeSignUpView,
    mainView,
    homeView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.completeSignUpView, page: CompleteSignUpView),
    RouteDef(Routes.mainView, page: MainView),
    RouteDef(Routes.homeView, page: HomeView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
    LoginView: (data) {
      var args = data.getArgs<LoginViewArguments>(
        orElse: () => LoginViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LoginView(key: args.key),
        settings: data,
      );
    },
    SignUpView: (data) {
      var args = data.getArgs<SignUpViewArguments>(
        orElse: () => SignUpViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignUpView(key: args.key),
        settings: data,
      );
    },
    CompleteSignUpView: (data) {
      var args = data.getArgs<CompleteSignUpViewArguments>(
        orElse: () => CompleteSignUpViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CompleteSignUpView(
          key: args.key,
          email: args.email,
        ),
        settings: data,
      );
    },
    MainView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const MainView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// LoginView arguments holder class
class LoginViewArguments {
  final Key? key;
  LoginViewArguments({this.key});
}

/// SignUpView arguments holder class
class SignUpViewArguments {
  final Key? key;
  SignUpViewArguments({this.key});
}

/// CompleteSignUpView arguments holder class
class CompleteSignUpViewArguments {
  final Key? key;
  final String? email;
  CompleteSignUpViewArguments({this.key, this.email});
}
