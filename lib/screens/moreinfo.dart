import 'package:flutter/material.dart';

class MoreInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More Info'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('PRIMA PROPERTIES'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/property');
              },
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('ELIGIBILTY'),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('FAQ'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/faq');
              },
            ),
            Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          child: Text('More info'),
        ),
      ),
    );
  }
}
