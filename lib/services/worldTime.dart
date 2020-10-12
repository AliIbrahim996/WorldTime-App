import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // Location name for UI
  // ignore: non_constant_identifier_names
  String _Time; // The Time in Location
  String avatar; //url to an asset flag icon of a location
  String urlEndPoint; //location url for api end point

  WorldTime({this.location, this.avatar, this.urlEndPoint});
  void setTime(String time) {
    this._Time = time;
  }

  String getTime() {
    return this._Time;
  }

  Future<void> calculateTime() async {
    try {
      //make request
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$urlEndPoint');
      Map data = jsonDecode(response.body);
      print(data);

      //get properties from data
      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
     // print(offset);

      //Create DateTime object
      DateTime date = DateTime.parse(dateTime);
      date  = date.add(Duration(hours: int.parse(offset)));
      setTime(DateFormat.jm().format(date));
    } catch (e) {
      print('Error: $e');
    }
  }
}
