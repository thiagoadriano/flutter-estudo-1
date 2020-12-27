import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

class _QuestionarioResposta extends State<QuestionarioResposta> {
  final _perguntas = [
    {
      'texto': 'Qual é a sua cor prefirida?',
      'respostas': [
        {'texto': 'Azul', 'nota': 10},
        {'texto': 'Preto', 'nota': 5},
        {'texto': 'Rosa', 'nota': 3},
        {'texto': 'Vermelho', 'nota': 1}
      ]
    },
    {
      'texto': 'Qual é seu animal preferido?',
      'respostas': [
        {'texto': 'Gato', 'nota': 10},
        {'texto': 'Cachorro', 'nota': 5},
        {'texto': 'Vaca', 'nota': 3},
        {'texto': 'Bode', 'nota': 1}
      ]
    },
    {
      'texto': 'Qual é o seu lugar preferido?',
      'respostas': [
        {'texto': 'Paris', 'nota': 10},
        {'texto': 'Rio de Janeiro', 'nota': 5},
        {'texto': 'São Paulo', 'nota': 3},
        {'texto': 'Sergipe', 'nota': 1}
      ]
    }
  ];
  int pontuacaoFinal = 0;
  int _perguntaSelecionada = 0;

  void _responder(String texto, int nota) {
    if (!isFinalList) {
      setState(() {
        _perguntaSelecionada++;
      });
      pontuacaoFinal += nota;
      print('O valor escolhido foi $texto com a nota $nota');
    }
  }

  void renitial() {
    setState(() {
      pontuacaoFinal = 0;
      _perguntaSelecionada = 0;
    });
  }

  bool get isFinalList {
    return _perguntaSelecionada == _perguntas.length;
  }

  Widget build(BuildContext context) {
    var atualQuastao =
        isFinalList ? null : _perguntas.elementAt(_perguntaSelecionada);
    return isFinalList
        ? Resultado(pontuacaoFinal, renitial)
        : Questionario(
            atualQuastao['texto'], atualQuastao['respostas'], _responder);
  }
}

class QuestionarioResposta extends StatefulWidget {
  _QuestionarioResposta createState() {
    return _QuestionarioResposta();
  }
}
