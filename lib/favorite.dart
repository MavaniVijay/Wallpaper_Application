import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  static String id = "FavoriteScreen";
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
