import 'package:flutter/material.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: const Center(
        child: Text("Home Page"),
      ),
    );
  }

}