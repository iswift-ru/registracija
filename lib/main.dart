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
      home: MoyVariant(),
    );
  }
}

///////////////////

class MoyVariant extends StatefulWidget {
  MoyVariant({Key key}) : super(key: key);

  @override
  _MoyVariantState createState() => _MoyVariantState();
}

class _MoyVariantState extends State<MoyVariant> {
  List<String> reportList = ['PR', 'AN', 'TR', 'KT', 'PN', 'ST', 'SK'];

  List<String> selectedReportList = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: HexColor('00539C'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 16),
              child: Text(
                'Pasirinkite darbo laiko nustatymus. \nNustatymai gali būti pakeičiami vėliau.',
                style: TextStyle(
                  color: HexColor('FFFFFF'),
                  fontSize: 16.0,
                  letterSpacing: 0.15,
                ),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: MultiSelectChip(
                reportList,
                onSelectionChanged: (selectedList) {
                  setState(() {
                    selectedReportList = selectedList;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
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
              padding: const EdgeInsets.only(left: 16, right: 16),
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
              padding: const EdgeInsets.only(left: 16, right: 16, top: 0),
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
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Select : " + selectedReportList.join(" , "),
                style: TextStyle(color: Colors.white),
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
      choices.add(Container(
        alignment: Alignment.center,
        height: 46.0,
        width: 46,
        /*decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              25.0,
            ),
            border: Border.all(width: 1, color: Colors.white))*/
        //padding: const EdgeInsets.all(10.0),
        child: ChoiceChip(
          //backgroundColor: HexColor('00539C'),
          label: Text(
            item,
          ),
          labelStyle: TextStyle(color: Colors.blue, fontSize: 12),
          selected: selectedChoices.contains(item),
          selectedColor: Colors.green,

          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              widget.onSelectionChanged(selectedChoices);
            });
          },
        ),
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

/*class CustomChipLabel extends StatefulWidget {
  @override
  _CustomChipLabelState createState() => _CustomChipLabelState();
}

class _CustomChipLabelState extends State<CustomChipLabel> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
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
              "item",
              style: TextStyle(
                  fontSize: 12, color: Colors.white, letterSpacing: 0.4),
            ),
          )
        ],
      ),
    ));
  }
}
*/
////////////////////////////////////////////////////////////////////////////////////////////////////////
