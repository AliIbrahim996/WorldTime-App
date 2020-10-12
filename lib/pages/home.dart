import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Map data = {};

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);
    return Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 130.0, 0, 0),
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/chooseLoc');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Choose Location'),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(
                        color: Colors.blue[600],
                        fontFamily: 'Times New Roman',
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                    data['time'],
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontFamily: 'Times New Roman',
                        fontSize: 70.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  )
            ],
          ),
        )));
  }
}
