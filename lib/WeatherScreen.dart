import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather/DrawerScreen.dart';


class WeatherScreen extends StatefulWidget{
  @override
  WeatherState createState() =>  WeatherState();
}
class WeatherState extends  State<WeatherScreen> {
  @override
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  void _openDrawer() {
    _drawerKey.currentState!.openDrawer();
  }


  Widget build(BuildContext context) {
    return Scaffold(
        key: _drawerKey,
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        drawer: DrawerScreen(),

        appBar: AppBar(
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

                    child: Text("Egypt", style: TextStyle(
                        fontWeight: FontWeight.bold, color: Theme
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
        ),
        body: SafeArea(

            child: ListView(

              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              children: [
              Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 5),
              child: Text('Sun sep 21, 2021'),
            ),
            Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(100, 100, 111, 0.2),
            offset: Offset(0, 7),
            blurRadius: 29.0,
            spreadRadius: 0
        )
      ],
    ),
    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
    margin: EdgeInsets.only(top: 20),
    child: Column(
     children:[
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Icon(FontAwesomeIcons.cloudMoon,size: 100,color: Theme.of(context).primaryColorDark,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                Text("25°",style: TextStyle(color:Color.fromRGBO(81, 109, 255, 1),fontSize: 42,fontWeight: FontWeight.bold )),
                Text("Clouds & sun",style: TextStyle(color:Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.normal )),
              ],
            )
    ],
    ),
       Container(
         margin:EdgeInsets.symmetric(vertical: 50,horizontal: 0),
             child:Column(
               children: [
                 SizedBox(
                   height: 30,
                   child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

                   children:[
                   Text("Humidity",style: TextStyle(color:Theme.of(context).primaryColorDark,fontSize: 18,fontWeight: FontWeight.normal )),
                    Text("35°",style: TextStyle(color:Theme.of(context).primaryColorDark,fontSize: 18,fontWeight: FontWeight.bold ))
           ]
                 ),
       ),
           SizedBox(
             height: 50,
             child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:[
                       Text("Wind speed",style: TextStyle(color:Theme.of(context).primaryColorDark,fontSize: 18,fontWeight: FontWeight.normal )),
                       Text("3.5mph°",style: TextStyle(color:Theme.of(context).primaryColorDark,fontSize: 18,fontWeight: FontWeight.bold ))
                     ]
                 ),
             ),
                 SizedBox(
                   height: 50,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:[
                       Text("Rain probablity",style: TextStyle(color:Theme.of(context).primaryColorDark,fontSize: 18,fontWeight: FontWeight.normal )),
                       Text("2%°",style: TextStyle(color:Theme.of(context).primaryColorDark,fontSize: 18,fontWeight: FontWeight.bold ))
                     ]
                 ),
                 ),
           SizedBox(
             height: 50,
             child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children:[
                       Text("Pressure",style: TextStyle(color:Theme.of(context).primaryColorDark,fontSize: 18,fontWeight: FontWeight.normal )),
                       Text("1563.2Pa°",style: TextStyle(color:Theme.of(context).primaryColorDark,fontSize: 18,fontWeight: FontWeight.bold ))
                     ]
                 ),
           ),
           SizedBox(
             height: 50,
             child: Align(

                      child: Text("UV index",style: TextStyle(color:Theme.of(context).primaryColorDark,fontSize: 18,fontWeight: FontWeight.normal )),
                     alignment: Alignment.centerLeft,
                 ),
           ),
               ],
             )
       ),



                Container(
                  height: 80,
                  child: ListView(

                    scrollDirection: Axis.horizontal,

                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Text('Now',
                                    style: TextStyle(fontWeight: FontWeight
                                        .bold, color: Color.fromRGBO(
                                        38, 49, 68, 1), fontSize: 14,)),
                                Icon(FontAwesomeIcons.cloudMoon, size: 20,
                                    color: Color.fromRGBO(38, 49, 68, 1)),
                                Text('25°',
                                    style: TextStyle(fontWeight: FontWeight
                                        .bold, color: Color.fromRGBO(
                                        38, 49, 68, 1), fontSize: 14,))
                              ])
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Mon',
                                  style: TextStyle(fontWeight: FontWeight
                                      .bold, color: Color.fromRGBO(
                                      38, 49, 68, 1), fontSize: 14,)),
                              Icon(FontAwesomeIcons.cloudMoonRain, size: 20,
                                  color: Color.fromRGBO(38, 49, 68, 1)),
                              Text('18°',
                                  style: TextStyle(fontWeight: FontWeight
                                      .bold, color: Color.fromRGBO(
                                      38, 49, 68, 1), fontSize: 14,))
                            ],)),
                      Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Tue',
                                  style: TextStyle(fontWeight: FontWeight
                                      .bold, color: Color.fromRGBO(
                                      38, 49, 68, 1), fontSize: 14,)),
                              Icon(FontAwesomeIcons.cloudMoon, size: 20,
                                  color: Color.fromRGBO(38, 49, 68, 1)),
                              Text('24°',
                                  style: TextStyle(fontWeight: FontWeight
                                      .bold, color: Color.fromRGBO(
                                      38, 49, 68, 1), fontSize: 14,))
                            ],)),
                      Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Wed',
                                  style: TextStyle(fontWeight: FontWeight
                                      .bold, color: Color.fromRGBO(
                                      38, 49, 68, 1), fontSize: 14,)),
                              Icon(FontAwesomeIcons.cloudSun, size: 20,
                                  color: Color.fromRGBO(38, 49, 68, 1)),
                              Text('29°',
                                  style: TextStyle(fontWeight: FontWeight
                                      .bold, color: Color.fromRGBO(
                                      38, 49, 68, 1), fontSize: 14,))
                            ],)),
                      Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Thu',
                                  style: TextStyle(fontWeight: FontWeight
                                      .bold, color: Color.fromRGBO(
                                      38, 49, 68, 1), fontSize: 14,)),
                              Icon(FontAwesomeIcons.cloudMoon, size: 20,
                                  color: Color.fromRGBO(38, 49, 68, 1)),
                              Text('25°',
                                  style: TextStyle(fontWeight: FontWeight
                                      .bold, color: Color.fromRGBO(
                                      38, 49, 68, 1), fontSize: 14,))
                            ],)),
                      Container(

                          margin: EdgeInsets.only(right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Fri',
                                  style: TextStyle(fontWeight: FontWeight
                                      .bold, color: Color.fromRGBO(
                                      38, 49, 68, 1), fontSize: 14,)),
                              Icon(FontAwesomeIcons.cloudSunRain, size: 20,
                                  color: Color.fromRGBO(38, 49, 68, 1)),
                              Text('23°',
                                  style: TextStyle(fontWeight: FontWeight
                                      .bold, color: Color.fromRGBO(
                                      38, 49, 68, 1), fontSize: 14,))
                            ],)),
                      Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sat',
                                  style: TextStyle(fontWeight: FontWeight
                                      .bold, color: Color.fromRGBO(
                                      38, 49, 68, 1), fontSize: 14,)),
                              Icon(FontAwesomeIcons.cloudMoonRain, size: 20,
                                  color: Color.fromRGBO(38, 49, 68, 1)),
                              Text('19°',
                                  style: TextStyle(fontWeight: FontWeight
                                      .bold, color: Color.fromRGBO(
                                      38, 49, 68, 1), fontSize: 14,))
                            ],)),
                      Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sun',
                                  style: TextStyle(fontWeight: FontWeight
                                      .bold, color: Color.fromRGBO(
                                      38, 49, 68, 1), fontSize: 14,)),
                              Icon(FontAwesomeIcons.cloudMoonRain, size: 20,
                                  color: Color.fromRGBO(38, 49, 68, 1)),
                              Text('10°',
                                  style: TextStyle(fontWeight: FontWeight
                                      .bold, color: Color.fromRGBO(
                                      38, 49, 68, 1), fontSize: 14,))
                            ],))

                    ],


                  ),

                )
           ] )
        )
            ]
    )
        )

    );
  }
}