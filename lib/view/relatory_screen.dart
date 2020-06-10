import 'package:dink_water/widgets/item_relatory.dart';
import 'package:flutter/material.dart';

class RelatoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.035,
            top: size.height * 0.02,
            bottom: size.height * 0.02,
          ),
          child: Text(
            'Relatório pessoal',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ItemRelatory(
          color: Colors.green,
          title: 'Média semanal',
        ),
        ItemRelatory(
          color: Colors.blue,
          title: 'Média mensal',
        ),
        ItemRelatory(
          color: Colors.red,
          title: 'Frequência de bebida',
        ),
      ],
    );
  }
}
