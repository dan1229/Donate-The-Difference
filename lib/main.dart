import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about.dart';
import 'charities.dart';
import 'home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donate The Difference',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.yellowAccent,
        fontFamily: 'SourceSansPro',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    CharitiesPage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Donate The Difference"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.language),
            onPressed: openWebsite,
          ),
        ],
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.favorite),
            title: new Text('Charities'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('About')
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Future openWebsite() async {
    const url = 'http://django-env.w3vvz2fuwh.us-west-2.elasticbeanstalk.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  getItemMenu(String text, IconData icon, {Function onTapped}) {
    return IconButton(
      onPressed: onTapped,
      icon: Icon(
        icon,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

}