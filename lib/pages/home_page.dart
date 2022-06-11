import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int value = 787;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog"),
      ),
      body: const Center(
        child: Text("Hi, This is nitin-$value"),
      ),
      drawer: const Drawer(),
    );
  }
}
