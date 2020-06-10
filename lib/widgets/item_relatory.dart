import 'package:flutter/material.dart';

class ItemRelatory extends StatelessWidget {
  final Color color;
  final String title;
  const ItemRelatory({Key key, this.color, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        ListTile(
          leading: Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: color,
            ),
          ),
          title: Text(title),
          trailing: Text(
            '0 ml / dia',
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.height * 0.02,
          ),
          child: Divider(),
        ),
      ],
    );
  }
}
