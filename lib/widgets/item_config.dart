import 'package:flutter/material.dart';

class ItemConfig extends StatelessWidget {
  final String title;
  final String value;
  final Function function;

  const ItemConfig({Key key, this.title, this.value, this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: Text(title),
        trailing: Text(
          value,
          style: TextStyle(
            color: Colors.lightBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
