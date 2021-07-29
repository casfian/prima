import 'package:flutter/material.dart';
import 'package:prima/screens/eventtab.dart';
import 'package:prima/screens/newstab.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('NEWS & EVENTS'),
            backgroundColor: Colors.blue[900],
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'NEWS',
                ),
                Tab(
                  text: 'EVENTS',
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            NewsTab(),
            EventsTab(),
          ]),
        ),
      ),
    );
  }
}
