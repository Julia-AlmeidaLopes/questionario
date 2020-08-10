import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  String labelOpcoesRespostas;
  Function proximaQuestao;
  Respostas(this.labelOpcoesRespostas, this.proximaQuestao);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            width: double.maxFinite,
            child: RaisedButton(
              onPressed: proximaQuestao,
              child: Text(labelOpcoesRespostas),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
