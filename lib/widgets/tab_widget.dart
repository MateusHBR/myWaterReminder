import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  TabWidget(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Tab(
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(icon),
          Container(
            width: size.width * 0.15,
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
