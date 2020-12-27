import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final int nota;
  final void Function(String, int) fn;

  Resposta(this.texto, this.nota, this.fn);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Row(children: [
          Column(
            children: [
              Icon(Icons.widgets),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child:Text(texto)
              ),
            ],
          )
        ]),
        onPressed: () {
          this.fn(texto, nota);
        }
      ),
    );
  }
}