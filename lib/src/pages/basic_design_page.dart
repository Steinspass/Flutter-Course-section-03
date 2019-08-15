import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final styleTitle    = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold );
  final styleSubTitle = TextStyle(fontSize: 14.0, color: Colors.blueGrey );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(  
              child: Column(
          children: <Widget>[
            _createImage(),
            _createTitle(),
            _createActions(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
            _createDescription(),
          ],
        ),
      )
    );
  }

  Widget _createImage(){
    return Image(
            image: NetworkImage('https://images.pexels.com/photos/235648/pexels-photo-235648.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
          );
  }

  Widget _createTitle() {
    return SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Person Standing on Terraces', style: styleTitle,),
                        SizedBox(height: 7.0,),
                        Text('Thailand taked in September 20, 2016 4:35 pm', style: styleSubTitle,)
                      ],
                    ),
                  ),

                  Icon(Icons.star, color: Colors.orange, size: 30.0,),

                  Text('63', style: TextStyle(fontSize: 20.0),)

                
                ],

              ),
            ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _itemActions(Icons.favorite, 'Favorite Site'),
        _itemActions(Icons.near_me, 'Route'),
        _itemActions(Icons.share, 'Share'),
      ],
    );
  }

  Widget _itemActions(IconData icon, String text) {
    return Column(
          children: <Widget>[
            Icon(icon, color: Colors.lightBlue, size: 30.0,),
            SizedBox(height: 5.0,),
            Text(text, style: TextStyle(fontSize: 15.0, color: Colors.lightBlue),)
          ],
        );
  }

  Widget _createDescription() {
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0 ),
        child: Text(
          'Ipsum ad reprehenderit quis adipisicing ex velit duis magna reprehenderit officia ad magna quis. Non quis reprehenderit enim qui anim anim sint nisi nulla exercitation id. Laborum duis veniam deserunt eu in eu ad anim Lorem magna fugiat in nostrud dolore. Qui pariatur enim exercitation pariatur mollit amet commodo ad ad duis. Sit et dolore dolor tempor qui deserunt. Anim cillum ullamco eiusmod anim sunt consectetur qui magna aute sit fugiat excepteur.',
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }



}