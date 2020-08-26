import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


class LocateMe extends StatefulWidget {
  @override
  _LocateMeState createState() => _LocateMeState();
}

class _LocateMeState extends State<LocateMe> {

  _getCurrentLocation() {
    final Geolocator geolocator = Geolocator()
      ..forceAndroidLocationManager;

    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
        print(position);
      });
    }).catchError((e) {
      print(e);
    });
  }



  Position _currentPosition;

  //String _currentAddress;

  get geolocator => null;

  get newPlace => null;



  @override
  Widget build(BuildContext context) {
    _getCurrentLocation();
    return Container(
      child: Row(
        children: [
          if (_currentPosition = null )
            CircularProgressIndicator()
          else
            Text(
                "LATITUDE: ${_currentPosition.latitude.toStringAsFixed(5)}, LONGITUDE: ${_currentPosition.longitude.toStringAsFixed(5)}"),
        ],

      ),
    );
  }
}
