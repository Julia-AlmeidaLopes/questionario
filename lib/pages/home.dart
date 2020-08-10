import 'package:flutter/material.dart';
import 'package:formulario/pages/questionario.dart';
import 'package:formulario/pages/resultado.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var perguntaSelecionada = 0;
  var notaTot = 0;

  void respondido(int nota) {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
        notaTot += nota;
      });
    }
  }

  void reiniciar(){
    setState(() {
      perguntaSelecionada = 0;
      notaTot = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < _perguntas.length;
  }

  final _perguntas = [
    {
      'pergunta': 'Qual a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Branco', 'nota': 5},
        {'texto': 'Cinza', 'nota': 3},
        {'texto': 'Vermelho', 'nota': 1},
      ]
    },

    {
      'pergunta': 'Qual o seu animal de estimação?',
      'respostas': [
        {'texto': 'Cachorro', 'nota': 10},
        {'texto': 'Gato', 'nota': 5},
        {'texto': 'Peixe', 'nota': 3},
        {'texto': 'Coelho', 'nota': 1},
      ]
    },

    {
      'pergunta': 'Qual sua marca de celular favorita?',
      'respostas': [
        {'texto': 'Apple', 'nota': 10},
        {'texto': 'Samsung', 'nota': 5},
        {'texto': 'Motorola', 'nota': 3},
        {'texto': 'Xiaomi', 'nota': 1},
      ]
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Formulário"),
          centerTitle: true,
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntaSelecionada: perguntaSelecionada,
                perguntas: _perguntas,
                responder: respondido)
            : Resultado(notaTot, reiniciar));
  }
}
