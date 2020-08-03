import 'package:Testing_App/screens/homescreen.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Home Page".toUpperCase(),
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.white,
          child: Text('Fetch Data'),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return HomeScreen();
            }));
          },
        ),
      ),
    );
  }
}
