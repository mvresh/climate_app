import 'package:flutter/material.dart';
import 'package:climate_app/weather_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: LocationPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/first',
      routes: {
        '/first': (context) => LocationPage(),
        '/second': (context) => WeatherPage(),
      }
    ),
  );
}

// Create WeatherPage in a separate file
class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Stack(children: <Widget>[

          Image.asset(
            "assets/BL03THINKMIGRATE1.jpg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.color,
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 50,),
              Align(alignment: Alignment.topCenter,
                child: FlatButton(
                  onPressed: () {Navigator.pushNamed(context, '/second');},
                  child: Text('Weather',style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'SpartanMB',
                      color: Colors.white)),
                ),
              ),
            ],
          ),

        ],

        ),
      ),
    );
  }
}
