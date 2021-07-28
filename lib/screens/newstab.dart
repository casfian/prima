import 'package:flutter/material.dart';
import 'package:prima/model/prmodel.dart';
import 'package:prima/screens/detailevent.dart';

class NewsTab extends StatefulWidget {
  @override
  _NewsTabState createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  int newsCount = 0;
  List<PRModel> newsArray = [];

  List<PRModel> pressrealease = [
    PRModel('Press1', 'description 1', 'groupphoto.jpg', '1/7/2021', 'http://www.google.com'), 
    PRModel('Press2', 'description 2', 'groupphoto.jpg', '2/7/2021', 'http://www.google.com'), 
    PRModel('Press3', 'description 3', 'groupphoto.jpg', '3/7/2021', 'http://www.google.com'),
    ];
  List<PRModel> announcement = [
    PRModel('Press1', 'Announcement 1', 'groupphoto.jpg', '1/7/2021', 'http://www.google.com'), 
    PRModel('Press2', 'Announcement 1', 'groupphoto.jpg', '2/7/2021', 'http://www.google.com'), 
    ];
  List<PRModel> newscoverage = [
    PRModel('Press1', 'Coverage 1', 'groupphoto.jpg', '1/7/2021', 'http://www.google.com'), 
    PRModel('Press2', 'Coverage 2', 'groupphoto.jpg', '2/7/2021', 'http://www.google.com'), 
    PRModel('Press3', 'Coverage 3', 'groupphoto.jpg', '3/7/2021', 'http://www.google.com'),
    PRModel('Press4', 'Coverage 4', 'groupphoto.jpg', '4/7/2021', 'http://www.google.com'), 
    PRModel('Press5', 'Coverage 5', 'groupphoto.jpg', '5/7/2021', 'http://www.google.com'), 
    PRModel('Press6', 'Coverage 6', 'groupphoto.jpg', '6/7/2021', 'http://www.google.com'),
  ];

  @override
  void initState() {
    super.initState();
    newsCount = pressrealease.length + announcement.length + newscoverage.length;
    newsArray = pressrealease + announcement + newscoverage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          color: Colors.cyan[100],
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.ac_unit_sharp),
                    onPressed: () {
                      print('Press Release');
                      setState(() {
                        newsCount = pressrealease.length;
                        newsArray = pressrealease;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.announcement),
                    onPressed: () {
                      print('Announcements');
                      setState(() {
                        newsCount = announcement.length;
                        newsArray = announcement;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.list),
                    onPressed: () {
                      print('News Coverage');
                      setState(() {
                        newsCount = newscoverage.length;
                        newsArray = newscoverage;
                      });
                    },
                  ),
                ],
              ),
              Container(
                child: Expanded(
                  child: ListView.builder(
                      itemCount: newsCount,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailEvent()));
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            height: 80,
                            width: MediaQuery.of(context).size.width - 40,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/groupphoto.jpg',
                                      width: 50,
                                      height: 50,
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      children: [
                                        Text(newsArray[index].title),
                                        Text(newsArray[index].date),
                                      ],
                                    ),
                                    
                                  ],
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
