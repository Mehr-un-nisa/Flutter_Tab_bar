import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  Screen1({Key? key}) : super(key: key);

  _ViewScreen1State createState() => _ViewScreen1State();
}

class _ViewScreen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.phone)),
              Tab(icon: Icon(Icons.facebook)),
              Tab(icon: Icon(Icons.message)),
              Tab(icon: Icon(Icons.games)),
              Tab(icon: Icon(Icons.photo)),
            ],
          ),
          title: Text('Tab Bar'),
        ),
        body: TabBarView(
          children: [
            TextButton(
                child: Text(
                  "Check call history",
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Nothing :-('),
                        );
                      },
                    );
                  });
                }),
            TextButton(
                child: Text(
                  "Check notification",
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('notification(0) :('),
                        );
                      },
                    );
                  });
                }),
            TextButton(
                child: Text(
                  "Check messages",
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('message(0) :('),
                        );
                      },
                    );
                  });
                }),
            TextButton(
                child: Text(
                  "Let's play",
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('You can not play now! :-('),
                        );
                      },
                    );
                  });
                }),
            TextButton(
                child: Text(
                  "Photos",
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Emptry gallery :|'),
                        );
                      },
                    );
                  });
                }),
          ],
        ),
      ),
    );
  }
}
