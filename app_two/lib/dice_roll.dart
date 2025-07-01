import 'dart:math';
import 'package:flutter/material.dart';


final randomDice = Random();
class DiceRoller extends StatefulWidget{
 
 const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  } 
}

class _DiceRollerState extends State<DiceRoller> {

var currentDiceRoll = 2;

void rollDice(){
  
  setState(() {
    currentDiceRoll = randomDice.nextInt(6) + 1;
  }
  );
 

}


  @override
  Widget build(context){
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                'assets/images/dice-$currentDiceRoll.png'
                ,width: 200
                ),
                const SizedBox(
                  height: 
                  20),
                TextButton(
                  onPressed: rollDice,
                  style: TextButton.styleFrom(
                    // padding: const EdgeInsets.only(
                    //   top: 20
                    //   ),
                    // on comment we can use that but there 1 way again to use, to add paddin between image and button the name is sizedbox, you can search taht
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 28
                    ),
                  ),
                  child: const Text("Role Dice")
                  ),
              ],
            );
  }

}