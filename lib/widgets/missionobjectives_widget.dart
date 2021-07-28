import 'package:flutter/material.dart';

class MissionObjectivesWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
                      height: 158,
                      margin: const EdgeInsets.fromLTRB(20,10,20,10),
                      padding: const EdgeInsets.fromLTRB(40, 20, 20, 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.access_alarms, size: 40,),
                              SizedBox(width: 15,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('data2a', style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text('subtitle data2a')
                                ],
                              ),
                            ],
                          ),
                          Divider(thickness: 4),
                          Row(
                            children: [
                              Icon(Icons.access_alarms, size: 40,),
                              SizedBox(width: 15,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('data2a', style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text('subtitle data2a')
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
  }
}