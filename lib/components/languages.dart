import 'package:flutter/material.dart';


class Languages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: ListView(
            children: [
              Text("Select Language", style: TextStyle(color: Theme
                  .of(context)
                  .primaryColorDark, fontWeight: FontWeight.bold),),
          MyStatefulWidget()
            ],

          ),
        )
    );
  }
}
enum SingingCharacter { Auto,English, Arabic }
  class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.Auto;
  @override
  Widget build(BuildContext context) {

  return Column(
      children: [
        ListTile(
  contentPadding: EdgeInsets.only(left: 5.0),
  title: Text("English",style: TextStyle(fontWeight: FontWeight.bold,
  color: Color.fromRGBO(
    38, 49, 68, 1),
  fontSize: 14,
  fontFamily: 'Roboto')),
  leading: Radio<SingingCharacter>(
  value: SingingCharacter.English,
  groupValue: _character,
  onChanged: (SingingCharacter? value) {
  setState(() {
  _character = value;
  });
  }
    )
        ),
        ListTile(
            contentPadding: EdgeInsets.only(left: 5.0),
            title: Text("English",style: TextStyle(fontWeight: FontWeight.bold,
                color: Color.fromRGBO(
                    38, 49, 68, 1),
                fontSize: 14,
                fontFamily: 'Roboto')),
            leading: Radio<SingingCharacter>(
                value: SingingCharacter.English,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                }
            )
        ),
        ListTile(
            contentPadding: EdgeInsets.only(left: 5.0),
            title: Text("English",style: TextStyle(fontWeight: FontWeight.bold,
                color: Color.fromRGBO(
                    38, 49, 68, 1),
                fontSize: 14,
                fontFamily: 'Roboto')),
            leading: Radio<SingingCharacter>(
                value: SingingCharacter.English,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                }
            )
        )
        ,
        ListTile(
            contentPadding: EdgeInsets.only(left: 5.0),
            title: Text("English",style: TextStyle(fontWeight: FontWeight.bold,
                color: Color.fromRGBO(
                    38, 49, 68, 1),
                fontSize: 14,
                fontFamily: 'Roboto')),
            leading: Radio<SingingCharacter>(
                value: SingingCharacter.English,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                }
            )
        ),
        ListTile(
            contentPadding: EdgeInsets.only(left: 5.0),
            title: Text("English",style: TextStyle(fontWeight: FontWeight.bold,
                color: Color.fromRGBO(
                    38, 49, 68, 1),
                fontSize: 14,
                fontFamily: 'Roboto')),
            leading: Radio<SingingCharacter>(
                value: SingingCharacter.English,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                }
            )
        ),
        ListTile(
            contentPadding: EdgeInsets.only(left: 5.0),
            title: Text("English",style: TextStyle(fontWeight: FontWeight.bold,
                color: Color.fromRGBO(
                    38, 49, 68, 1),
                fontSize: 14,
                fontFamily: 'Roboto')),
            leading: Radio<SingingCharacter>(
                value: SingingCharacter.English,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                }
            )
        ),
        ListTile(
            contentPadding: EdgeInsets.only(left: 5.0),
            title: Text("English",style: TextStyle(fontWeight: FontWeight.bold,
                color: Color.fromRGBO(
                    38, 49, 68, 1),
                fontSize: 14,
                fontFamily: 'Roboto')),
            leading: Radio<SingingCharacter>(
                value: SingingCharacter.English,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                }
            )
        ),
        ListTile(
            contentPadding: EdgeInsets.only(left: 5.0),
            title: Text("English",style: TextStyle(fontWeight: FontWeight.bold,
                color: Color.fromRGBO(
                    38, 49, 68, 1),
                fontSize: 14,
                fontFamily: 'Roboto')),
            leading: Radio<SingingCharacter>(
                value: SingingCharacter.English,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                }
            )
        ),
        ListTile(
            contentPadding: EdgeInsets.only(left: 5.0),
            title: Text("English",style: TextStyle(fontWeight: FontWeight.bold,
                color: Color.fromRGBO(
                    38, 49, 68, 1),
                fontSize: 14,
                fontFamily: 'Roboto')),
            leading: Radio<SingingCharacter>(
                value: SingingCharacter.English,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                }
            )
        ),
        ListTile(
            contentPadding: EdgeInsets.only(left: 5.0),
            title: Text("English",style: TextStyle(fontWeight: FontWeight.bold,
                color: Color.fromRGBO(
                    38, 49, 68, 1),
                fontSize: 14,
                fontFamily: 'Roboto')),
            leading: Radio<SingingCharacter>(
                value: SingingCharacter.English,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                }
            )
        )
      ])
    ;

  }
  }


