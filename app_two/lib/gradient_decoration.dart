  import 'package:app_two/dice_roll.dart';
  import 'package:flutter/material.dart';


  const startAlignment = Alignment.topRight;
  const endAlignment = Alignment.bottomLeft;

  class DecorationGradient extends StatelessWidget {
    const DecorationGradient (this.colorOne, this.colorTwo, {super.key});

  final Color colorOne;
  final Color colorTwo;



    @override
    Widget build(context) {
      return Container(
            decoration:  BoxDecoration(
              gradient: LinearGradient(
                colors:  [colorOne, colorTwo],
                begin: startAlignment,
                end: endAlignment,
              )
            ),
            child: Center(
              child: DiceRoller()
            ),
          );
    }
  }
