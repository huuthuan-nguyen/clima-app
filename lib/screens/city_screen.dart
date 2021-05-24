import 'package:clima_app/utilities/constants.dart';
import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                    onPressed: null,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 50,
                    )),
              ),
              Container(
                child: null,
                padding: EdgeInsets.all(20),
              ),
              TextButton(
                  onPressed: null,
                  child: Text(
                    "Get Weather",
                    style: kButtonTextStyle,
                  ))
            ],
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/city_background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
      ),
    );
  }
}
