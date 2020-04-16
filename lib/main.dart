import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registracija',
      theme: ThemeData(
          primaryColor: HexColor('00539C'),
          textTheme: TextTheme(
              title: TextStyle(color: HexColor('FFFFFF'), fontSize: 16.0))),
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    /*Widget daysOfTheWeek() {

      return Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 36.0,
              width: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  border: Border.all(width: 1, color: Colors.white)),
              child: Text(
                'PR',
                style: TextStyle(
                    fontSize: 12, color: Colors.white, letterSpacing: 0.4),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 36.0,
              width: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  border: Border.all(width: 1, color: Colors.white)),
              child: Text(
                'AN',
                style: TextStyle(
                    fontSize: 12, color: Colors.white, letterSpacing: 0.4),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 36.0,
              width: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  border: Border.all(width: 1, color: Colors.white)),
              child: Text(
                'TR',
                style: TextStyle(
                    fontSize: 12, color: Colors.white, letterSpacing: 0.4),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 36.0,
              width: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  border: Border.all(width: 1, color: Colors.white)),
              child: Text(
                'KT',
                style: TextStyle(
                    fontSize: 12, color: Colors.white, letterSpacing: 0.4),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 36.0,
              width: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  border: Border.all(width: 1, color: Colors.white)),
              child: Text(
                'PN',
                style: TextStyle(
                    fontSize: 12, color: Colors.white, letterSpacing: 0.4),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 36.0,
              width: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  border: Border.all(width: 1, color: Colors.white)),
              child: Text(
                'ST',
                style: TextStyle(
                    fontSize: 12, color: Colors.white, letterSpacing: 0.4),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 36.0,
              width: 36,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  border: Border.all(width: 1, color: Colors.white)),
              child: Text(
                'SK',
                style: TextStyle(
                    fontSize: 12, color: Colors.white, letterSpacing: 0.4),
              ),
            ),
          ],
        ),
      );
    }*/

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 166, left: 16),
            child: Text(
              'Pasirinkite darbo laiko nustatymus. \nNustatymai gali būti pakeičiami vėliau.',
              style: TextStyle(
                color: HexColor('FFFFFF'),
                fontSize: 16.0,
                letterSpacing: 0.15,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16),
            child: Text(
              'Darbo dienos',
              style: TextStyle(
                color: HexColor('FFFFFF'),
                fontSize: 14.0,
                letterSpacing: 0.15,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          DaysOfWeek(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: new Divider(
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Pradžia',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Text('8:00',
                    style: TextStyle(fontSize: 14, color: Colors.white))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('Pirmas vizitas dienoje',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  letterSpacing: 0.4,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Pabaiga',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Text('17:00',
                    style: TextStyle(fontSize: 14, color: Colors.white))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text('Paskutinio vizito pabaiga',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  letterSpacing: 0.4,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 80),
            child: new Divider(
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Atostogos',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Text('PRIDETI',
                    style: TextStyle(
                        fontSize: 14,
                        color: HexColor('FBC02D'),
                        letterSpacing: 0.75))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text('Neprivaloma pridėti',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  letterSpacing: 0.4,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: new Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class DaysOfWeek extends StatefulWidget {
  @override
  _DaysOfWeekState createState() => _DaysOfWeekState();
}

class _DaysOfWeekState extends State<DaysOfWeek> {
  final everyDaysOfWeek = ['PR', 'AN', 'TR', 'KT', 'PN', 'ST', 'SK'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: everyDaysOfWeek.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 36.0,
                    width: 36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          25.0,
                        ),
                        border: Border.all(width: 1, color: Colors.white)),
                    child: Text(
                      everyDaysOfWeek[i],
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          letterSpacing: 0.4),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

/*return Padding(
    padding: const EdgeInsets.all(16),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    Container(
    alignment: Alignment.center,
    height: 36.0,
    width: 36,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
    25.0,
    ),
    border: Border.all(width: 1, color: Colors.white)),
    child: Text(
    'everyDaysOfWeek.PR',
    style: TextStyle(
    fontSize: 12, color: Colors.white, letterSpacing: 0.4),
    ),
    )
    ],
    ),
    ),*/
