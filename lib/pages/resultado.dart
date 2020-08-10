import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int nota;
  final void Function() reiniciar;
  Resultado(this.nota, this.reiniciar);

   String get fraseResult{
     if(nota < 8 ){
       return 'Pontuação $nota --- vamos melhorar';
     }else{
       return 'Pontuação $nota --- Parabéns!';
     }
   }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              fraseResult,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.amber),
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text("Reiniciar"),
              onPressed: reiniciar)
          ],
        ),
      ),
    );
  }
}
