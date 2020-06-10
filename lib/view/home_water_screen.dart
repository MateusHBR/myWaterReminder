import 'package:dink_water/widgets/item_listTile.dart';
import 'package:flutter/material.dart';

class HomeWaterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height * 0.88,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: size.height * 0.35,
              width: size.height * 0.35,
              padding: EdgeInsets.only(
                left: size.height * 0.05,
                right: size.height * 0.05,
                top: size.height * 0.05,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(500),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '1000/1000',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.04,
                    ),
                  ),
                  Text(
                    'ml',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.04,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Meta de bebida diária',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.02,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.08,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 1),
                    height: size.height * 0.08,
                    width: size.height * 0.12,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      color: Colors.blue[100],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('2000ml'),
                          Icon(Icons.local_drink),
                        ],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    top: size.height * 0.04,
                    left: size.width * 0.051,
                  ),
                  child: Text(
                    'Registros de hoje',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.04,
              ),
              height: size.height * 0.4,
              child: Card(
                elevation: 6,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.height * 0.02,
                    ),
                    child: Divider(),
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ItemListTile();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
