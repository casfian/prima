import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:prima/model/eventmodel.dart';
//import 'package:prima/screens/detailevent.dart';
import 'package:http/http.dart' as http;
import 'package:prima/screens/detailevent.dart';

class EventsTab extends StatefulWidget {
  @override
  _EventsTabState createState() => _EventsTabState();
}

class _EventsTabState extends State<EventsTab> {
  List<dynamic> events = [];

  Future<List<dynamic>> getPosts() async {
    var data =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var jsonData = json.decode(data.body);
    //print(jsonData);

    for (var em in jsonData) {
      EventModel event =
          EventModel(em!['userid'], em['id'], em['title'], em['body']);
      events.add(event);
    }

    events = jsonData;
    print(events.length);
    print(events);
    return events; //return a list of events
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getPosts(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.none ) {
              return Text('No Data or Error');
            }
            if (snapshot.connectionState == ConnectionState.waiting ) {
              return Center(child: CircularProgressIndicator());
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(snapshot.data[index]['id'].toString()),
                        title: Text(snapshot.data[index]['title']),
                        subtitle: Text(snapshot.data[index]['body']),
                        onTap: () {
                          EventModel passEvent = EventModel(
                              snapshot.data[index]['userid'],
                              snapshot.data[index]['id'],
                              snapshot.data[index]['title'],
                              snapshot.data[index]['body']);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailEvent(pass: passEvent)));
                        },
                      ),
                      Divider(
                        thickness: 2,
                      ),
                    ],
                  ),
                );
              },
            );
          }),
    );
  }
}


/*

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
                      title: Text(events[index]['title'].toString()),
                      onTap: () {
                        print('Click Detail');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailEvent(pass: events[index])));
                      },
                    ),
                    Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              );
            }));

*/