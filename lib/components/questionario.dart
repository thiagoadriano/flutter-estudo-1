import 'package:flutter/material.dart';
import '../components/questao.dart';
import '../components/resposta.dart';

class Questionario extends StatelessWidget {
  final String pergunta;
  final List<Map<String, Object>> respostas;
  final void Function(String, int) onSelected;

  Questionario(this.pergunta, this.respostas, this.onSelected);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = respostas.map((t) => Resposta(t['texto'], t['nota'], onSelected)).toList();

    return Column(
        children: [
          Questao(pergunta),
          ...widgets,
        ],
    );
  }
}