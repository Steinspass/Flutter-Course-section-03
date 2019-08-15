import 'package:flutter/material.dart';


class ScrollPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _page1(),
          _page2()
        ],
      ),
    );
  }

  Widget _page1() {
    return Stack(
      children: <Widget>[
        _colorBackground(),
        _imageBackground(),
        _text()
      ],
    );
  }

  Widget _colorBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );

  }

  Widget _imageBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ) ,
    );
  }

   Widget _text() {

     final styleText = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('11℃', style: styleText,),
          Text('Miercoles', style: styleText,),
          Expanded(child: Container(),),
          Icon(Icons.keyboard_arrow_down, size: 90.0, color: Colors.white,)
        ],
      ),
    );
   }





  Widget _page2() {
    return Stack(
      children: <Widget>[
        _colorBackground(),
        _button(),
      ],
    );
  }

  Widget _button() {
    return Center(
      child: RaisedButton(
        onPressed: (){ },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text('Welcome', style: TextStyle(fontSize: 20.0),),
        ),
        shape: StadiumBorder(),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }

 

  

  
}