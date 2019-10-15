import 'package:flutter/material.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Image.asset(
              "assets/farmers-social-reutersa.jpg",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              color: Colors.black87,
              colorBlendMode: BlendMode.color,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.near_me,
                            color: Colors.white,
                          ),
                          iconSize: 50,
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.location_city,
                            color: Colors.white,
                          ),
                          iconSize: 50,
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        '32° ☀',
                        style: TextStyle(
                            fontSize: 60,
                            fontFamily: 'SpartanMB'),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'It\'s 🍦time in Mumbai!',
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'SpartanMB'),textAlign: TextAlign.right,
                    ),
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
