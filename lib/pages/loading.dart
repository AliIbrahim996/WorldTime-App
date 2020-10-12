import 'package:flutter/material.dart';
import 'package:time_app/services/worldTime.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setUpTime() async {
    try {
      WorldTime t = WorldTime(
          location: 'Syria', avatar: 'syria.png', urlEndPoint: 'Asia/Damascus');
      await t.calculateTime();
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'location' : t.location,
        'flag':t.avatar,
        'time':t.getTime()
      });
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    setUpTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text('Loading'),
      )),
    );
  }
}
