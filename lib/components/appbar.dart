


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Appbar extends StatelessWidget{
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  void _openDrawer () {
    _drawerKey.currentState!.openDrawer();
  }
  @override
  Widget build(BuildContext context) {
    return new AppBar(
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.alignLeft, color: Theme
              .of(context)
              .primaryColorDark, size: 20),
          onPressed: _openDrawer,
        ),
        title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //Center Row contents horizontally,
            crossAxisAlignment: CrossAxisAlignment.center,
            //Center Row contents vertically,,
            children: [
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(FontAwesomeIcons.mapMarkerAlt, color: Theme
                    .of(context)
                    .primaryColorDark, size: 20),
              ),
              Container(

                child: Text("Egypt",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Theme
                        .of(context)
                        .primaryColorDark, fontSize: 20, fontFamily: 'Roboto')),
              )
            ]
        ),

        centerTitle: true,

        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.search, color: Theme
                .of(context)
                .primaryColorDark, size: 20),
            onPressed: null,

          )
        ]
    );
  }
}