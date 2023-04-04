import 'package:flutter/material.dart';

import 'package:calc_imc/constants.dart';

class CustomCard extends StatelessWidget {
  final Widget child;

  const CustomCard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: kActiveCardColour, borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
