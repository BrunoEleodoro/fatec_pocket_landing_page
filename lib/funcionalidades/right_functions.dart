import 'package:flutter/material.dart';

import 'item.dart';

class RightFunctions extends StatefulWidget {
  @override
  _RightFunctionsState createState() => _RightFunctionsState();
}

class _RightFunctionsState extends State<RightFunctions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SingleItem(
            title: 'Faltas Restantes',
            subtitle:
                'Logo abaixo das aulas do dia, é possivel visualizar quantas faltas você ainda pode ter.',
            icon: Icons.pie_chart,
          ),
          SizedBox(
            height: 50,
          ),
          SingleItem(
            title: 'Próximas avaliações',
            subtitle:
                'Em forma de calendário, você pode visualizar as próximas avaliações deste mês e dos próximos.',
            icon: Icons.calendar_today,
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
