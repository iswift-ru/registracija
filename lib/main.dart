import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registracija',
      theme: ThemeData(
          primaryColor: Color(0xFF00539C),
          textTheme: TextTheme(
              title: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16.0))),
      home: DayOfWeek(),
    );
  }
}

class DayOfWeek extends StatefulWidget {
  @override
  _DayOfWeekState createState() => _DayOfWeekState();
}

class _DayOfWeekState extends State<DayOfWeek> {
  List<String> selectedReportList = List();
  List<String> reportList = ['PR', 'AN', 'TR', 'KT', 'PN', 'ŠT', 'SK'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        color: Color(0xFF00539C),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                'Pasirinkite darbo laiko nustatymus. \nNustatymai gali būti pakeičiami vėliau.',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16.0,
                  letterSpacing: 0.15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Darbo dienos',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14.0,
                  letterSpacing: 0.15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: MultiSelectChip(
                reportList,
                onSelectionChanged: (selectedList) {
                  setState(() {
                    selectedReportList = selectedList;
                  });
                },
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            Row(
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
            Text('Pirmas vizitas dienoje',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  letterSpacing: 0.4,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 16),
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
            Text('Paskutinio vizito pabaiga',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  letterSpacing: 0.4,
                )),
            Divider(
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Atostogos',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Text('PRIDETI',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFFBC02D),
                        letterSpacing: 0.75))
              ],
            ),
            Text('Neprivaloma pridėti',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(255, 255, 255, 0.7),
                  letterSpacing: 0.4,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Divider(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>) onSelectionChanged;

  MultiSelectChip(this.reportList, {this.onSelectionChanged});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  List<String> selectedChoices = List();

  _buildChoiceList() {
    List<Widget> choices = List();

    widget.reportList.forEach((item) {
      choices.add(ChoiceChip(
        label: Text(item),
        labelStyle: TextStyle(color: Colors.white, fontSize: 12),
        selected: selectedChoices.contains(item),
        shape: selectedChoices.contains(item)
            ? CircleBorder(side: BorderSide(color: Colors.white, width: 1))
            : CircleBorder(
                side: BorderSide(color: Color(0xFF00539C), width: 1)),
        backgroundColor: Color(0xFF00539C),
        selectedColor: Color(0xFF00539C),
        onSelected: (selected) {
          setState(() {
            selectedChoices.contains(item)
                ? selectedChoices.remove(item)
                : selectedChoices.add(item);
          });
        },
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: _buildChoiceList(),
    );
  }
}
