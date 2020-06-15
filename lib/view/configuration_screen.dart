import 'package:dink_water/store/home_water_store.dart';
import 'package:dink_water/widgets/item_config.dart';
import 'package:dink_water/widgets/modal_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
        Observer(
          builder: (_) {
            return ItemConfig(
              title: 'Meta de ingestão',
              value: '${homeWaterStore.user.diaryWater} ml',
              function: () => showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                isScrollControlled: true,
                builder: (_) => ModalBottom(),
              ),
            );
          },
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.height * 0.02,
          ),
          child: Divider(),
        ),
        ListTile(
          title: Text('Sexo'),
          trailing: Observer(
            builder: (_) {
              return DropdownButton(
                // hint: Text('Selecione seu sexo'),
                value: homeWaterStore.user.gender,
                items: homeWaterStore.getDropDownGenre(),
                onChanged: homeWaterStore.changeDropDown,
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.height * 0.02,
          ),
          child: Divider(),
        ),
        ItemConfig(
          title: 'Peso',
          value: '${homeWaterStore.user.weight} KG',
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
