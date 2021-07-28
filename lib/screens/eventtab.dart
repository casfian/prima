import 'package:flutter/material.dart';
import 'package:prima/screens/detailevent.dart';

class EventsTab extends StatelessWidget {
  final List events = ['Event1', 'Event2', 'Event3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.asset(
                        'assets/images/groupphoto.jpg',
                        width: 100,
                        height: 100,
                      ),
                      title: Text(events[index]),
                      onTap: () {
                        print('Click Detail');
                      
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailEvent() ));
                      },
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              );
            }));
  }
}
