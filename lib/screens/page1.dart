import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {

    Future<void> _launchInBrowser(String url) async {
      if (await canLaunch(url)) {
        await launch(
          url,
          forceSafariVC: false,
          forceWebView: false,
          headers: <String, String>{'my_header_key': 'my_header_value'},
        );
      } else {
        throw 'Could not launch $url';
      }
    }

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 40),
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.home,
                  size: 100,
                ),
                Text('page 1'),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _launchInBrowser('https://www.google.com');
                      });
                      
                    },
                    child: Text('More Information'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
