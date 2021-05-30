import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  Screen2({Key? key}) : super(key: key);

  _ViewScreen2State createState() => _ViewScreen2State();
}

enum SingingCharacter { lafayette }

class _ViewScreen2State extends State<Screen2> {
  double _currentSliderValue = 70;
  bool isChecked = false;
  double _currentSliderValue2 = 20;
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.login)),
                Tab(icon: Icon(Icons.work)),
                Tab(icon: Icon(Icons.speaker)),
                Tab(icon: Icon(Icons.settings)),
                Tab(icon: Icon(Icons.logout)),
              ],
            ),
            title: Text('Tab Bar'),
          ),
          body: TabBarView(children: [
            Slider(
                value: _currentSliderValue,
                min: 0,
                max: 100,
                divisions: 10,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                }),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Password',
                ),
              ),
            ),
            Checkbox(
              checkColor: Colors.white,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: ListTile(
                title: const Text('Yes'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.lafayette,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ),
            Slider(
                value: _currentSliderValue2,
                min: 0,
                max: 100,
                divisions: 10,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                }),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name',
                ),
              ),
            ),
          ])),
    );
  }
}
