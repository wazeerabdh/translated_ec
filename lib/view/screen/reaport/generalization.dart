import 'package:flutter/material.dart';

class Generalization extends StatelessWidget {
  const Generalization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "التعميم",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true),

    );
  }
}
