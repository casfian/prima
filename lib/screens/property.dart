import 'package:flutter/material.dart';
import 'package:prima/screens/pcommercialstab.dart';
import 'package:prima/screens/phomestab.dart';
 
 
class Property extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Property'),
              backgroundColor: Colors.blue[900],
              bottom: TabBar(
                  tabs: [
                    Tab(
                      text: 'HOMES',
                    ),
                    Tab(
                      text: 'COMMERCIALS',
                    ),
                  ],
                ),
            ),
            
            body: TabBarView(children: [
                PHomesTab(),
                PCommercialsTab(),
              ]),  
        ),
      ),
    );
  }
}