import 'package:flutter/material.dart';

import 'item.dart';

class LeftFunctions extends StatefulWidget {
  @override
  _LeftFunctionsState createState() => _LeftFunctionsState();
}

class _LeftFunctionsState extends State<LeftFunctions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SingleItem(
            title: 'Horário das Aulas',
            subtitle:
                'Nesta tela de resumo, você já visualiza as aulas que vai ter no dia.',
            icon: Icons.timer,
          ),
          SizedBox(
            height: 50,
          ),
          SingleItem(
            title: 'Cadastrar Sala',
            subtitle:
                'Clicando nos icones ao lado das aulas, você pode adicionar a sala correspondente aquela aula.',
            icon: Icons.timer,
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
