import 'package:flutter/material.dart';
import 'package:time_app/services/worldTime.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setUpTime() async {
    WorldTime t = WorldTime(
        location: 'Syria', avatar: 'syria.png', urlEndPoint: 'Asia/Damascus');
    await t.calculateTime();
    print(t.getTime());
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
      body: Text('Loading Screen'),
    );
  }
}
