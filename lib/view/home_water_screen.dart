import 'package:dink_water/widgets/item_listTile.dart';
import 'package:dink_water/widgets/water_sphere.dart';
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
            Stack(
              children: <Widget>[
                WaterSphere(),
                Positioned(
                  bottom: 0,
                  right: 65,
                  left: 65,
                  child: InkWell(
                    onTap: () {},
                    child: Stack(
                      children: <Widget>[
                        Opacity(
                          opacity: 0.1,
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 48,
                          right: 48,
                          top: 10,
                          bottom: 10,
                          child: Text('+200'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
