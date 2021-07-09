import 'package:flutter/material.dart';
import 'package:s_wallpaper_app/fashion.dart';
import 'package:s_wallpaper_app/favorite.dart';
import 'package:s_wallpaper_app/home.dart';
import 'package:s_wallpaper_app/nature.dart';
import 'package:s_wallpaper_app/profile.dart';
import 'package:s_wallpaper_app/splash.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        SplashScreen.id: (context) => SplashScreen(),
        FavoriteScreen.id: (context) => FavoriteScreen(),
        NatureScreen.id: (context) => NatureScreen(),
        FashionScreen.id: (context) => FashionScreen(),
      },
    );
  }
}
