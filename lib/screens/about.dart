import 'package:flutter/material.dart';
import 'package:prima/widgets/missionobjectives_widget.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('About Prima'),
      // ),
      body: Center(
        child: Container(
          color: Colors.cyan,
          child: Column(
            children: [
              Image.asset('assets/images/groupphoto.jpg'),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        'Mission & Objectives',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900]),
                      )),
                    ),
                    MissionObjectivesWidget(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        'Functions',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900]),
                      )),
                    ),
                    Container(
                      height: 200,
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(215, 215, 215, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
