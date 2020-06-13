import 'package:dink_water/store/home_water_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class WaterSphere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeWaterStore = Provider.of<HomeWaterStore>(context);
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.35,
      width: size.height * 0.35,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Observer(
                builder: (_) {
                  return Text(
                    '${homeWaterStore.value}/${homeWaterStore.user.diaryWater} ml',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.height * 0.035,
                    ),
                  );
                },
              ),
              Text(
                'Meta de bebida diária',
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  fontSize: size.height * 0.02,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
