// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/home/home_view.dart';
import '../ui/views/posts/posts_view.dart';
import '../ui/views/services/services_view.dart';
import '../ui/views/user/user_view.dart';

class Routes {
  static const String homeView = '/';
  static const String postsView = '/posts-view';
  static const String servicesView = '/services-view';
  static const String userView = '/user-view';
  static const all = <String>{
    homeView,
    postsView,
    servicesView,
    userView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.postsView, page: PostsView),
    RouteDef(Routes.servicesView, page: ServicesView),
    RouteDef(Routes.userView, page: UserView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    PostsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PostsView(),
        settings: data,
      );
    },
    ServicesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ServicesView(),
        settings: data,
      );
    },
    UserView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserView(),
        settings: data,
      );
    },
  };
}
