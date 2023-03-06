import 'package:casualapp/components/bottom_navigation.dart';
import 'package:casualapp/screens/splash_screen_one.dart';
import 'package:casualapp/screens/splash_screen_two.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routes = {
    BottomNavigation.routeName : (context) => const BottomNavigation(),
    SplashScreenOne.routeName : (context) => const SplashScreenOne(),
    SplashScreenTwo.routeName : (context) => const SplashScreenTwo(),
};