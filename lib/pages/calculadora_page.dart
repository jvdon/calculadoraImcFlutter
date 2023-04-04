// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calc_imc/constants.dart';
import 'package:calc_imc/partials/card.dart';
import 'package:calc_imc/partials/icon_content.dart';
import 'package:flutter/material.dart';

class CalculadoraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: Icon_content(icone: Icons.male, texto: "Masculino"),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    child: Icon_content(icone: Icons.female, texto: "Feminino"),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Altura"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text("183", style: kNumberTextStyle),
                    Text(
                      "CM",
                      style: kLabelTextStyle,
                    )
                  ],
                ),
                Slider(
                  value: 120,
                  max: 210,
                  thumbColor: Colors.red,
                  onChanged: (double value) => {},
                )
              ],
            ),
          ),
          Expanded(child: Placeholder()),
        ],
      ),
    );
  }
}
