import 'package:flutter/material.dart';

class TabsController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Tabs Demo'),
          bottom: TabBar(
            // indicatorColor: Colors.amber, 
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50), // creates border
              color: Colors.amber, //change background color from here
            ),
            // indicatorSize: TabBarIndicatorSize.label,
            // indicatorWeight: 10,
            tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.search),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Icon(
            Icons.flight,
            size: 350,
          ),
          Icon(
            Icons.directions_transit,
            size: 350,
          ),
          Icon(
            Icons.directions_car,
            size: 350,
          ),
        ]),
      ),
    );
  }
}
