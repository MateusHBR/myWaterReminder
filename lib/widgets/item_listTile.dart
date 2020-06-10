import 'package:flutter/material.dart';

class ItemListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListTile(
      leading: Container(
        width: size.height * 0.15,
        child: Row(
          children: <Widget>[
            Icon(
              Icons.local_drink,
              color: Colors.blue,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
              ),
              child: Text('400ml'),
            ),
          ],
        ),
      ),
      title: Text('10:20'),
      trailing: IconButton(
        icon: Icon(
          Icons.remove_circle,
          color: Colors.red,
        ),
        onPressed: () {},
      ),
    );
  }
}
