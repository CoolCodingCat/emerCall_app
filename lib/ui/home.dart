import 'package:flutter/material.dart';
//import '/model/emerservices.dart';
import 'components.dart';
import 'top_block.dart';



class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      //backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1764c6),
        title: Text("APPEL D'URGENCE",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [

                Color(0xff1764c6),

                Color(0xff21D4FD),
              ],
              stops: [0.4, 0.7],


            ),
          ),
          child: ListView(
            children: <Widget>[

              BlockTop(),

              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                child: Center(
                  child: Text('Ne raccrochez pas en premier'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      )),
                ),
              ),
              //Divide(),
              MyExpanableCardViewFlutter(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

