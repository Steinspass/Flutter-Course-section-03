import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';



class ButtonPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backgroundColor(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _title(),
                _cardButton(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBarAlternativeColorsChanged(context),
      
      //BottomNavigationBar(
      //  unselectedItemColor: Colors.white,
      //  backgroundColor: Color.fromRGBO(52, 54, 101, 1.0),
      //  fixedColor: Colors.pink,
      //  items: <BottomNavigationBarItem>[
      //    BottomNavigationBarItem(
      //      title: Container(),
      //      icon: Icon(Icons.calendar_today)
      //    ),
//
      //    BottomNavigationBarItem(
      //      title: Container(),
      //      icon: Icon(Icons.pie_chart_outlined)
      //    ),
//
      //    BottomNavigationBarItem(
      //      title: Container(),
      //      icon: Icon(Icons.supervised_user_circle)
      //    ),
//
      //  ],
      //),
    );
  }

  Widget _backgroundColor() {
      final blurBackground = Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.6),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromRGBO(52, 54, 101, 1.0),
              Color.fromRGBO(35, 37, 57, 1.0)
            ],
          ),
          ),
      );

      final pinkBox = Transform.rotate(
        angle:  -pi / 5.0,
        child: Container(
          height: 340.0,
          width: 340.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90.0),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(236, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0)
              ]
            ) 
          ),
        ),
      );
      
      return Stack(
        children: <Widget>[
          blurBackground,
          Positioned(
            top: -90.0,
            child: pinkBox,
          )
          
        ],
      );
  }

  Widget _title() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              Text('Classify Transaction', style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0,),
              Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 18.0),)
            ],
          ),
      ),
    );
  }

  Widget _bottomNavigationBarAlternativeColorsChanged(BuildContext context){

      return Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context)
          .textTheme.
          copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))
        ),
        child: BottomNavigationBar(
          items: [
              BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.calendar_today)
          ),

          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.bubble_chart)
          ),

          BottomNavigationBarItem(
            title: Container(),
            icon: Icon(Icons.supervised_user_circle)
          ),

          ],
        ),
      );
  }

  Widget _cardButton() {

    return Table(
      children: [
        TableRow(
          children: [
            _createButtonCard(Colors.blue, Icons.border_all, 'General'),
            _createButtonCard(Colors.purpleAccent, Icons.directions_bus, 'Bus')
          ]
          ),

          TableRow(
          children: [
            _createButtonCard(Colors.pinkAccent, Icons.shop, 'Shop'),
            _createButtonCard(Colors.orange, Icons.insert_drive_file, 'File')
          ]
          ),

          TableRow(
          children: [
            _createButtonCard(Colors.blueAccent, Icons.movie_filter, 'Entertaiment'),
            _createButtonCard(Colors.green, Icons.cloud, 'Grocery')
          ]
          ),

          TableRow(
          children: [
            _createButtonCard(Colors.redAccent, Icons.photo_album, 'Photos'),
            _createButtonCard(Colors.teal, Icons.help_outline, 'Help')
          ]
          ),
      ],
    );

  }

  Widget _createButtonCard(Color color, IconData icon, String text) {
    
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.70),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0,),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon( icon, color: Colors.white, size: 30.0 ,),
              ),
              Text(text, style: TextStyle(color: color),),
              SizedBox(height: 5.0,)
            ],
          ),
        ),
      ),
    );
  }



}