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
    String bgImage = data['dayOrNight'] ? 'day.jpg' : 'night.jpeg';
    Color bgColor = data['dayOrNight']
        ? Color.fromRGBO(190, 119, 98, 1.0)
        : Color.fromRGBO(22, 36, 53, 1.0);

    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
            child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/$bgImage'), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 110.0, 0, 0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/chooseLoc');
                  },
                  icon: Icon(Icons.edit_location,
                      color: Colors.deepPurple, size: 25.0),
                  label: Text(
                    'Choose Location',
                    style: TextStyle(
                      color: Colors.blue[600],
                      fontFamily: 'Times New Roman',
                    ),
                  ),
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
                SizedBox(height: 45.0),
                Text(
                  data['time'],
                  style: TextStyle(
                      color: Colors.cyan,
                      fontFamily: 'Times New Roman',
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                )
              ],
            ),
          ),
        )));
  }
}
