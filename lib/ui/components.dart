import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';

//Horizontal line component
class Divide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
      child: Container(
        height:1.0,
        width:130.0,
        color: Colors.white60,),
    );
  }
}

//Bottom Navigation Bar
class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: BottomNavigationBar(
            backgroundColor: Color(0xff21D4FD),
            //0xff00f2fe
            elevation: 0,
            currentIndex: 0, // this will be set when a new tab is tapped
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.access_alarm,
                    color: Colors.white),
                title: new Text('Chrono',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.adjust,
                    color: Colors.white),
                title: new Text('Affichage du temps',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.camera_alt,
                      color: Colors.white),
                  title: Text('Photo',
                      style: TextStyle(
                        color: Colors.white,
                      ))
              )
            ]
        ));
  }
}

//Call Button
class CallButtonCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 25.0),
      child: Container(
          width: 200.0,
          height: 50.0,

          child: new MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              //side: BorderSide(color: Colors.red)
            ),
            elevation: 6,
            color: Color(0xffE93C70),
            textColor: Colors.white,
            child: new Text("Lancez l'appel".toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            onPressed: () => {
              debugPrint("Don't Stop Me Now")
            },
            splashColor: Color(0xff21D4FD),
          )
      ),
    );

  }
}

class CallButton extends StatefulWidget {
  CallButton({Key key}) : super(key: key);

  @override
  _CallButton createState() => _CallButton();
}

class _CallButton extends State<CallButton> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(

        color: Colors.white,
        child: Center(

          child: Ink(
            decoration: const ShapeDecoration(
              color: Colors.deepPurpleAccent,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(Icons.phone_forwarded),
              iconSize: 40,
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class MyExpanableCardViewFlutter extends StatefulWidget {

  @override
  _MyExpanableCardViewFlutterState createState() =>
      _MyExpanableCardViewFlutterState();
}
class _MyExpanableCardViewFlutterState
    extends State<MyExpanableCardViewFlutter> {

  Position _currentPosition;

  String _currentAddress;

  //get newPlace => null;

  @override
  Widget build(BuildContext context) {
    _getCurrentLocation();
    _getAddressFromLatLng();
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
      child: Container(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          elevation: 15,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ExpansionTile(
                leading: Icon(Icons.looks_one, color: Colors.blue.shade700),
                title: Text("Se présenter".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade700,
                    )),
                //subtitle: Text("  Explore the world of H-D"),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.person,
                        color: Colors.blue.shade700
                    ),
                    title: Text('Nom - Prénom',
                        style: TextStyle(
                          color: Colors.blue.shade700,
                        )),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_android,
                        color: Colors.blue.shade700),
                    title: Text('Numéro de votre téléphone',
                        style: TextStyle(
                          color: Colors.blue.shade700,
                        )),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.looks_two,
                    color: Colors.blue.shade700),
                title: Text("Se localiser".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade700,
                    )),
                //subtitle: Text("  Explore the world of H-D"),
                children: <Widget>[
                  ListTile(
                    leading:
                    Icon(Icons.location_on, color: Colors.blue.shade700),
                    title: Text('Coordonnées GPS :',
                        style: TextStyle(
                          color: Colors.blue.shade700,
                          fontWeight: FontWeight.bold,
                        )),
                    subtitle: _currentPosition == null
                        ? Center(
                      child: LinearProgressIndicator(),
                    )
                        : Text(
                      'LAT: ${_currentPosition.latitude.toStringAsFixed(
                          5)}, LONG: ${_currentPosition.longitude
                          .toStringAsFixed(5)}',
                      style: TextStyle(
                        color: Colors.blue.shade700,
                      ),
                    ),
                  ),

                  ListTile(
                    leading: Icon(Icons.my_location,
                        color: Colors.blue.shade700),
                    title: Text('Coordonnées What3Words :',
                        style: TextStyle(
                          color: Colors.blue.shade700,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_city,
                        color: Colors.blue.shade700),
                    title: Text('Adresse postale :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                        )),
                    subtitle: _currentAddress == null
                        ? Text("Récupération de l'adresse en cours",
                        style: TextStyle(
                          color: Colors.blue.shade700,
                        ))

                        : Text('$_currentAddress',
                      style: TextStyle(
                        color: Colors.blue.shade700,
                      ),
                    ),
                  )
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.looks_3,
                    color: Colors.blue.shade700),
                title: Text("Circonstances".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade700,
                    )),
                //subtitle: Text("  Explore the world of H-D"),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.change_history,
                        color: Colors.blue.shade700),
                    title: Text('Accident ? Maladie ? Danger (feu, inondation)? Le danger est-il toujours présent ?',
                        style: TextStyle(
                          color: Colors.blue.shade700,
                        )),
                  ),
                  ListTile(
                    leading: Icon(Icons.question_answer,
                        color: Colors.blue.shade700),
                    title: Text("Que s'est-il passé ?",
                        style: TextStyle(
                          color: Colors.blue.shade700,
                        )),
                  ),
                  ListTile(
                    leading: Icon(Icons.airline_seat_individual_suite,
                        color: Colors.blue.shade700),
                    title: Text('Nombre de blessés / malades',
                        style: TextStyle(
                          color: Colors.blue.shade700,
                        )),

                  ),
                  ListTile(
                    leading: Icon(Icons.cake,
                        color: Colors.blue.shade700),
                    title: Text('Age approximatif (bébé/enfant/ado/adulte/personne agée)',
                        style: TextStyle(
                          color: Colors.blue.shade700,
                        )),
                  ),
                  ListTile(
                    leading: Icon(Icons.directions_car,
                        color: Colors.blue.shade700),
                    title: Text("Si accident de voie publique : type de véhicule / nombre / personnes coincées à l'intérieur",
                        style: TextStyle(
                          color: Colors.blue.shade700,
                        )),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.looks_4,
                    color: Colors.blue.shade700),
                title: Text("Bilan & Gestes effectués".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade700,
                    )),
                //subtitle: Text("  Explore the world of H-D"),
                children: <Widget>[
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Text('Un bilan par victime',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.blue.shade700,
                            fontStyle: FontStyle.italic,
                          )),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on,
                        color: Colors.blue.shade700),
                    title: Text('La victime saigne-t-elle ?',
                        style: TextStyle(
                          color: Colors.blue.shade700,
                        )),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_on,
                        color: Colors.blue.shade700),
                    title: Text(
                        'La victime est-elle consciente (elle réagit quand stimulée)',
                        style: TextStyle(
                          color: Colors.blue.shade700,
                        )),
                  ),
                  ListTile(
                    leading: Icon(Icons.my_location,
                        color: Colors.blue.shade700),
                    title: Text('Si non, respire-elle ?',
                        style: TextStyle(
                          color: Colors.blue.shade700,
                        )),
                  ),
                  ListTile(
                    leading: Icon(Icons.location_city,
                        color: Colors.blue.shade700),
                    title: Text('A-t-elle des blessures (décrire)',
                        style: TextStyle(
                          color: Colors.blue.shade700,
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

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


  _getAddressFromLatLng() async {
    //String Address;
    try {
      List<Placemark> p = await Geolocator().placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);

      Placemark place = p[0];

      setState(() {
        _currentAddress =
        "${place.thoroughfare}, ${place.postalCode}, ${place.locality}";
      });

      print(_currentAddress);
    } catch (e) {
      print(e);
    }
  }
}




