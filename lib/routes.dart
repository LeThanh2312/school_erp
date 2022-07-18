import 'package:flutter/material.dart';
import 'package:school_erp/screens/home/home_screen.dart';
import 'package:school_erp/screens/login/login_screen.dart';

class Routes{
  Routes._();

  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    login: (BuildContext context) => LoginScreen(),
    home: (BuildContext context) => HomeScreen(),
  };


}