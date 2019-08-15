import 'package:flutter/material.dart';

import 'package:design/src/pages/basic_design_page.dart';
import 'package:design/src/pages/blur_button_page.dart';
import 'package:design/src/pages/scroll_design_page.dart';
import 'package:flutter/services.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      initialRoute: 'button',
      routes: {
        'basico' : (BuildContext context) => BasicPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'button' : (BuildContext context) => ButtonPage(),
      },

      
    );
  }
}
