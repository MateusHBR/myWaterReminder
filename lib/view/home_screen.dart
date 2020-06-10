import 'package:dink_water/view/configuration_screen.dart';
import 'package:dink_water/view/home_water_screen.dart';
import 'package:dink_water/view/relatory_screen.dart';
import 'package:dink_water/widgets/tab_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Expanded(child: Container()),
                  TabBar(
                    indicatorColor: Colors.white,
                    tabs: [
                      TabWidget('Início', Icons.local_drink),
                      TabWidget('Relatório', Icons.assignment),
                      TabWidget('Configurações', Icons.settings),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            HomeWaterScreen(),
            RelatoryScreen(),
            ConfigurationScreen(),
          ],
        ),
      ),
    );
  }
}
