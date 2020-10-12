import 'package:flutter/material.dart';


class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Choose Location'),
          backgroundColor: Colors.red[600],
          elevation: 0,
          centerTitle: true,
        ),
        body: Row(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton.icon(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              label: Text('Increase counter'),
              icon: Icon(Icons.add),
              textColor: Colors.redAccent,
              elevation: 0,
            ),
          ),
          Text('$counter',
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 18,
              ))
        ]));
  }
}
