import 'package:dink_water/store/home_water_store.dart';
import 'package:dink_water/widgets/item_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfigurationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeWaterStore = Provider.of<HomeWaterStore>(context);
    var size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.02,
            horizontal: size.width * 0.05,
          ),
          child: Text(
            'Geral',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.height * 0.02,
          ),
          child: Divider(),
        ),
        ItemConfig(
          title: 'Meta de ingestão',
          value: '${homeWaterStore.user.diaryWater} ml',
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.height * 0.02,
          ),
          child: Divider(),
        ),
        ItemConfig(
          title: 'Sexo',
          value: '${homeWaterStore.user.gender}',
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.height * 0.02,
          ),
          child: Divider(),
        ),
        ItemConfig(
          title: 'Peso',
          value: '${homeWaterStore.user.weight} Kg',
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
