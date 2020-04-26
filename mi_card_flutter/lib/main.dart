import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[600],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/pp.jpg'),
              ),
              Text(
                'Muhammad Kamal',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'SOFTWARE ENGINEER',
                style: TextStyle(
                  fontSize: 18.0,
                  letterSpacing: 2.0,
                  color: Colors.blueGrey[100],
                  fontFamily: 'SourceSansPro',
                ),
              ),
              SizedBox(
                height: 30.0,
                width: 200.0,
                child: Divider(thickness: 1.0,
                color: Colors.blueGrey[100],),
              ),

              Card(
                color: Colors.white,
                //it was container padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0,),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                   //it was a row children: <Widget>[
                      leading:Icon(
                        Icons.phone,
                        color: Colors.blueGrey[900],
                        size: 35.0,
                      ),
                      //SizedBox(width: 15.0,),
                      title:Text(
                        '+201555786787',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                        ),
                      ),
                  ),
                ),
              ),  //phone

              /*Container(
                color: Colors.white,
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0,),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.blueGrey[900],
                      size: 35.0,
                    ),
                    SizedBox(width: 15.0,),
                    Text(
                      'muhammedkamal022@gmail.com',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'SourceSansPro',
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),*/

              Card(
                color: Colors.white,
                //it was container padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0,),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    //it was a row children: <Widget>[
                    leading:Icon(
                      Icons.email,
                      color: Colors.blueGrey[900],
                      size: 35.0,
                    ),
                    //SizedBox(width: 15.0,),
                    title:Text(
                      'muhammedkamal022@gmail.com',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'SourceSansPro',
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),//mail
              Card(
                color: Colors.white,
                //it was container padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0,),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    //it was a row children: <Widget>[
                    leading:Icon(
                      FontAwesome.github,
                      color: Colors.blueGrey[900],
                      size: 35.0,
                    ),
                    //SizedBox(width: 15.0,),
                    title:Text(
                      'muhammedkamal',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'SourceSansPro',
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),//github
              Card(
                color: Colors.white,
                //it was container padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0,),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    //it was a row children: <Widget>[
                    leading:Icon(
                      FontAwesome.twitter,
                      color: Colors.blueGrey[900],
                      size: 35.0,
                    ),
                    //SizedBox(width: 15.0,),
                    title:Text(
                      'muhammedkamal0',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'SourceSansPro',
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              )//twitter

            ],
          ),
        ),
      ),
    );
  }
}
