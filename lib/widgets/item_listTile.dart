import 'package:flutter/material.dart';

class ItemListTile extends StatelessWidget {
  final String date;
  final String ml;

  const ItemListTile({Key key, this.date, this.ml}) : super(key: key);

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
              child: Text('$ml ml'),
            ),
          ],
        ),
      ),
      title: Text('$date Horas'),
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
