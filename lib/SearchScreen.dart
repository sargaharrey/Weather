import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather/DrawerScreen.dart';


class SearchScreen extends StatefulWidget{
  @override
  SearchState createState() =>  SearchState();
}



class SearchState extends State<SearchScreen> {
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
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  boxShadow:[
                  BoxShadow(
                        color: Color.fromRGBO(100, 100, 111, 0.2),
                  offset: Offset(0, 7),
                        blurRadius: 29.0,
                        spreadRadius: 0
                  ),
              ]
                ),

              child:TextField(
                  decoration:InputDecoration(

                    prefixIcon: Icon(FontAwesomeIcons.search,size: 20,color:Theme.of(context).primaryColorDark,),
                    hintText: 'Search...',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,

                    ),
                      border: InputBorder.none,

                  ),
                  )

             ),
          InkWell(
            onTap:() => print("hello"),
              child:Container(
                 margin: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
                 padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                     color: Colors.white,
                     boxShadow:[
                       BoxShadow(
                           color: Color.fromRGBO(100, 100, 111, 0.2),
                           offset: Offset(0, 7),
                           blurRadius: 29.0,
                           spreadRadius: 0
                       ),
                     ]
                 ),
                 child: Column(
                   children:[
                    Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Icon(FontAwesomeIcons.cloudMoon,size: 100,color: Theme.of(context).primaryColorDark,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.end,
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [

                               Text("25°",style: TextStyle(color:Color.fromRGBO(81, 109, 255, 1),fontSize: 42,fontWeight: FontWeight.bold )),
                               Text("Egypt",style: TextStyle(color:Color.fromRGBO(81, 109, 255, 1),fontSize: 20,fontWeight: FontWeight.bold )),
                               Row(
                                 children: [
                                   Icon(FontAwesomeIcons.mapMarkerAlt,size: 20,color: Theme.of(context).primaryColorDark,),
                                   Text("Clouds & sun",style: TextStyle(color:Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.normal )),
                                 ],)

                             ],
                           )
                         ],
                       ),

                     ]
                 )


              ),
          ),
            InkWell(
                onTap:() => print("hello"),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 0),
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                          color: Color.fromRGBO(100, 100, 111, 0.2),
                          offset: Offset(0, 7),
                          blurRadius: 29.0,
                          spreadRadius: 0
                      ),
                    ]
                ),
                child: Column(
                  children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(FontAwesomeIcons.cloudSun,size: 100,color: Theme.of(context).primaryColorDark,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Text("25°",style: TextStyle(color:Color.fromRGBO(81, 109, 255, 1),fontSize: 42,fontWeight: FontWeight.bold )),
                            Text("Germany",style: TextStyle(color:Color.fromRGBO(81, 109, 255, 1),fontSize: 20,fontWeight: FontWeight.bold )),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.mapMarkerAlt,size: 20,color: Theme.of(context).primaryColorDark,),
                                Text("Clouds & sun",style: TextStyle(color:Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.normal )),
                              ],)

                          ],
                        )
                      ],
                    ),

                  ],
                ),
              ),
              ),
            InkWell(
                onTap:() => print("hello"),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 0),
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                          color: Color.fromRGBO(100, 100, 111, 0.2),
                          offset: Offset(0, 7),
                          blurRadius: 29.0,
                          spreadRadius: 0
                      ),
                    ]
                ),
                child: Column(
                  children:[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(FontAwesomeIcons.cloudSunRain,size: 100,color: Theme.of(context).primaryColorDark,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [

                            Text("25°",style: TextStyle(color:Color.fromRGBO(81, 109, 255, 1),fontSize: 42,fontWeight: FontWeight.bold )),
                            Text("Italy",style: TextStyle(color:Color.fromRGBO(81, 109, 255, 1),fontSize: 20,fontWeight: FontWeight.bold )),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.mapMarkerAlt,size: 20,color: Theme.of(context).primaryColorDark,),
                                Text("Clouds & sun",style: TextStyle(color:Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.normal )),
                              ],)

                          ],
                        )
                      ],
                    ),

                  ],
                ),
              )
            )
    ]
    )
        )
    );
  }
}