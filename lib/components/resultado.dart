import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() goBack;

  Resultado(this.pontuacao, this.goBack);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Center(
        child: Text('Obrigado por responder!', style: TextStyle(fontSize: 28)),
      ),
      Center(
        child: Text('Sua Pontuaçao foi de: $pontuacao',
            style: TextStyle(fontSize: 18)),
      ),
      Container(
        width: 250,
        child: FlatButton(
        textColor: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.backspace),
          Padding(
              child: Text('Recomeçar'),
              padding: EdgeInsets.symmetric(horizontal: 5))
        ]),
        onPressed: goBack),
      )
    ]));
  }
}
