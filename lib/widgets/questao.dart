import 'package:flutter/material.dart';

class Questao extends StatelessWidget {

  String labelPergunta;
  Questao(this.labelPergunta);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            labelPergunta,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}