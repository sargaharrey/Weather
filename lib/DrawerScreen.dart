import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather/WeatherScreen.dart';
import 'package:weather/SearchScreen.dart';
import 'package:weather/home.dart';
import 'package:weather/main.dart';

class DrawerScreen extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return new Container(
        width: MediaQuery
            .of(context)
            .size
            .width * 0.80,

        child: Drawer(

            child: Container(
                color: Theme
                    .of(context)
                    .primaryColorDark,

                // flex: 1,
                child: Expanded(

                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: ListView(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 0),
                            child: buildMenuItem(
                                text: "home",
                                icon: FontAwesomeIcons.home,

                                onClicked: () => selectedItem(context, 0)


                            ),
                          ),
                          Divider(
                              color: Theme
                                  .of(context)
                                  .primaryColor
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 0),
                            child: buildMenuItem(
                                text: "Weather",
                                icon: FontAwesomeIcons.snowflake,

                                onClicked: () => selectedItem(context, 1)


                            ),

                          ),
                          Divider(
                              color: Theme
                                  .of(context)
                                  .primaryColor
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 0),
                            child: buildMenuItem(
                                text: "Search",
                                icon: FontAwesomeIcons.search,

                                onClicked: () => selectedItem(context, 2)


                            ),

                          ),
                          Divider(
                              color: Theme
                                  .of(context)
                                  .primaryColor
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                    children: [


                                      Icon(FontAwesomeIcons.temperatureLow,
                                        color: Theme
                                            .of(context)
                                            .primaryColor, size: 20,),
                                      Container(
                                        margin: EdgeInsets.only(left: 15),
                                        child: Text("Statusbar",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Theme
                                                  .of(context)
                                                  .primaryColor,
                                              fontSize: 14,
                                              fontFamily: 'Roboto'),),
                                      ),
                                    ]
                                ),


                                Container(margin: EdgeInsets.only(right: 20),
                                    child: Icon(Icons.toggle_off, color: Theme
                                        .of(context)
                                        .primaryColor, size: 20)),

                              ],

                            ),

                          ),
                          Divider(
                              color: Theme
                                  .of(context)
                                  .primaryColor
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                    children: [


                                      Icon(FontAwesomeIcons.eye, color: Theme
                                          .of(context)
                                          .primaryColor, size: 20,),
                                      Container(
                                        margin: EdgeInsets.only(left: 15),
                                        child: Text("DarkMode",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Theme
                                                  .of(context)
                                                  .primaryColor,
                                              fontSize: 14,
                                              fontFamily: 'Roboto'),),
                                      ),
                                    ]
                                ),


                                Container(margin: EdgeInsets.only(right: 20),
                                    child: Icon(Icons.toggle_off, color: Theme
                                        .of(context)
                                        .primaryColor, size: 20)),

                              ],

                            ),

                          ),
                          Divider(
                              color: Theme
                                  .of(context)
                                  .primaryColor
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: Row(

                              children: [
                                Icon(FontAwesomeIcons.globe, color: Theme
                                    .of(context)
                                    .primaryColor, size: 20,),
                                Container(
                                  margin: EdgeInsets.only(left: 15),
                                  child: Text("Lanuages", style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme
                                          .of(context)
                                          .primaryColor,
                                      fontSize: 14,
                                      fontFamily: 'Roboto'),),)

                              ],

                            ),

                          ),

                        ],
                      ),

                    )
                )


            ))
    );}

    Widget buildMenuItem({
      required String text,
      required IconData icon,
      VoidCallback? onClicked,
    }) {
      final color = Colors.white;
      final hoverColor = Colors.white70;

      return ListTile(
        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
        leading: Icon(icon, color: color,size:20),

        title: Align(
          child: Text(text, style: TextStyle(fontWeight: FontWeight.bold,
              color: color,
              fontSize: 14,
              fontFamily: 'Roboto')),
             alignment: Alignment(-1.2,0),
        ),
        hoverColor: hoverColor,
        onTap: onClicked,
      );}

    void selectedItem(BuildContext context, int index) {
      Navigator.of(context).pop();

      switch (index) {
        case 0:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>  HomeScreen(),
          ));
          break;
        case 1:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => WeatherScreen(),
          ));
          break;
        case 2:
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => SearchScreen(),
          ));
          break;
      }
    }

}