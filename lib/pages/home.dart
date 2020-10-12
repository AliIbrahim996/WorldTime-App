import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/chooseLoc');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Choose Location'))));
  }
}
