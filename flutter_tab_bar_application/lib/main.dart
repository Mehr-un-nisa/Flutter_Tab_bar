import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'Screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab bar',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'MAD'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tab bar'), actions: []),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 80,
            ),
            ListTile(
              title: Text(
                'Main screen having drawer which contains two screens, screen1 has 5 tabs and screen2 has 6 tabs',
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.purple),
              padding: EdgeInsets.only(right: 178.0, top: 23.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/side.jpg'),
                    radius: 38.0,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Mehru Saleem',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'xy@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading:
                  Icon(Icons.mobile_friendly, size: 30, color: Colors.purple),
              title: Text('Tab bar functionality'),
            ),
            Divider(
              color: Colors.grey,
              height: 0.02,
            ),
            ListTile(
              leading: Icon(Icons.screen_share),
              title: Text('Screen1'),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => Screen1(),
                    ));
              },
            ),
            Divider(
              color: Colors.grey,
              height: 0.02,
            ),
            ListTile(
              leading: Icon(Icons.screen_share),
              title: Text('Screen2'),
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => Screen2(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
