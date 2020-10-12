import 'package:flutter/material.dart';
import 'package:time_app/services/worldTime.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(
        location: 'Syria', avatar: 'syria.png', urlEndPoint: 'Asia/Damascus'),
    WorldTime(
        location: 'Lebanon', avatar: 'lebanon.jpg', urlEndPoint: 'Asia/Beirut'),
    WorldTime(
        location: 'Germany',
        avatar: 'germany.png',
        urlEndPoint: 'Europe/Berlin'),
  ];
  void updateData(index) async {
    try {
      await locations[index].calculateTime();
      Navigator.pop(context, {
        'location': locations[index].location,
        'flag': locations[index].avatar,
        'time': locations[index].getTime(),
        'dayOrNight': locations[index].isDayNight
      });
    } catch (e) {
      print('Error: $e');
    }
  }

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
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 6.0),
              child: Card(
                  child: ListTile(
                onTap: () => updateData(index),
                title: Text(locations[index].location),
                leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/${locations[index].avatar}')),
              )),
            );
          },
        ));
  }
}
