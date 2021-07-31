import 'package:flutter/material.dart';
import 'package:prima/model/eventmodel.dart';

class DetailEvent extends StatelessWidget {
  DetailEvent({Key? key, this.pass}) : super(key: key);

  final EventModel? pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Event'),
      ),
      //sini ko nak guna Listview boleh, Column boleh utk layout
      //aku buat simple aja guna ListTile
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: ListTile(
              title: Text('Title: ${pass!.title.toString()}'),
              subtitle: Text('\n${pass!.body.toString()}'),
            ),
          ),
        ], 
      ),
    );
  }
}
