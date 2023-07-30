import 'package:flutter/material.dart';
import 'dart:convert';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Object?parameters;
  @override
  Widget build(BuildContext context) {
    parameters = ModalRoute.of(context)!.settings.arguments;
    Map data = jsonDecode(jsonEncode(parameters));
    print(data);

    String setbg = data['isDayTime'] ? 'day.png' : 'night.png';
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/$setbg'),
            fit: BoxFit.cover,
            
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),

          child: Column(
            children: <Widget>[
              FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location,
                  color: Colors.grey[200],),
                  label: Text('Edit location',
                    style: TextStyle(
                      color: Colors.grey[200],
                    ),)),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(data['location'],
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                      color: Colors.grey[200],
                    ),
                  ),

                ],
              ),
            SizedBox(height: 20.0),
               Text(data['time'],
                  style: TextStyle(
                            fontSize: 28.0,
                    color: Colors.grey[200],
               ),),
            ],
          ),
        ),
    ),
      ));
  }
}
