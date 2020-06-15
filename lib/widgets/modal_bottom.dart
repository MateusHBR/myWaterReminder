import 'package:dink_water/store/home_water_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class ModalBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var homeWaterStore = Provider.of<HomeWaterStore>(context);
    var size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Meta de ingestão',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 40),
              width: size.width * 0.45,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(
                  width: 2,
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.remove,
                        color: Colors.red,
                      ),
                      onPressed: homeWaterStore.subtractValue,
                    ),
                    Observer(
                      builder: (_) {
                        return Text(
                          '${homeWaterStore.user.diaryWater}',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                      onPressed: homeWaterStore.plusValue,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
