import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FavouriteScreen"),
        backgroundColor: Colors.blue,
      ),
      body: Text("data"),
    );
  }
}