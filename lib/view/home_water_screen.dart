import 'package:dink_water/model/cups.dart';
import 'package:dink_water/store/home_water_store.dart';
import 'package:dink_water/widgets/item_listTile.dart';
import 'package:dink_water/widgets/water_sphere.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class HomeWaterScreen extends StatelessWidget {
  String formatDate(DateTime date) {
    DateFormat dateFormat = DateFormat("HH:mm");
    String formatted = dateFormat.format(date);
    return formatted.toString();
  }

  @override
  Widget build(BuildContext context) {
    final homeWaterStore = Provider.of<HomeWaterStore>(context);
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
                    onTap: () {
                      homeWaterStore.addValue();
                      homeWaterStore.addCup(
                        Cups(
                          ml: 200,
                          date: DateTime.now(),
                        ),
                      );
                    },
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
                          child: Container(
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.local_drink),
                                Text(
                                  '+200',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
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
                child: Observer(
                  builder: (_) {
                    return ListView.separated(
                      separatorBuilder: (context, index) => Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.height * 0.02,
                        ),
                        child: Divider(),
                      ),
                      itemCount: homeWaterStore.cups.length,
                      itemBuilder: (context, index) {
                        return ItemListTile(
                          ml: homeWaterStore.cups[index].ml.toString(),
                          date: formatDate(homeWaterStore.cups[index].date),
                        );
                      },
                    );
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
