// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Icon_content extends StatelessWidget {
  final String texto;
  final IconData icone;

  const Icon_content({Key? key, required this.texto, required this.icone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(this.icone, size: 50),
        SizedBox(height: 10),
        Text(this.texto),
      ],
    );
  }
}
