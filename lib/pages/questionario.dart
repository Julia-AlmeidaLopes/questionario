import 'package:flutter/material.dart';
import 'package:formulario/widgets/questao.dart';
import 'package:formulario/widgets/respostas.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  Questionario(
      {@required this.perguntaSelecionada,
      @required this.perguntas,
      @required this.responder});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> resp = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null;

    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: <Widget>[
          Questao(perguntas[perguntaSelecionada]['pergunta']),
          SizedBox(
            height: 20,
          ),
          ...resp.map((res){
            return Respostas(
              res['texto'], 
              () => responder(res['nota']),
            );
          }).toList(),
        ],
      ),
    );
  }
}
