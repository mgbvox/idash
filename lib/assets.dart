import 'package:flutter/material.dart';

class PNG extends StatelessWidget {
  final String name;
  const PNG(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/$name.png");
  }
}
