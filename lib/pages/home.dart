import 'package:flutter/material.dart';
import '../components/questionario_resposta.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Perguntas')),
      body: QuestionarioResposta()
    );
  }
}
