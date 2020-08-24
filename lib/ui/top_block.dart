import 'package:flutter/material.dart';
import 'components.dart';


class BlockTop extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(

        elevation: 15,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0)
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Text("Choisissez votre service d'urgence".toUpperCase(),
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0, left: 28.0, right: 28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.shade200,
                        ),
                        child: Center(
                          child: Text('15', style:
                          TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text('samu'.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.blue.shade700,
                                  fontWeight: FontWeight.bold,
                                )),
                          )
                      )

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(

                          shape: BoxShape.circle,
                          color: Colors.red.shade100,

                        ),
                        child: Center(
                          child: Text('18', style:
                          TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text('pompiers'.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.blue.shade700,
                                  fontWeight: FontWeight.bold,
                                )),
                          )
                      )

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(

                          shape: BoxShape.circle,
                          color: Colors.blueAccent.shade100,

                        ),
                        child: Center(
                          child: Text('17', style:
                          TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text('police'.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.blue.shade700,
                                  fontWeight: FontWeight.bold,
                                )),
                          )
                      )

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(

                          shape: BoxShape.circle,
                          color: Colors.deepPurpleAccent,

                        ),
                        child: Center(
                          child: Text('112', style:
                          TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text('urgence'.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.blue.shade700,
                                  fontWeight: FontWeight.bold,
                                )),
                          )
                      )

                    ],
                  ),

                ],
              ),


            ),
            //Icon button
            CallButtonCall(),
//

          ],

        ),

      ),
    );


  }
}
