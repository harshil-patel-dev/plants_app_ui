import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plants_app_flutter/constants.dart';
import 'package:plants_app_flutter/screens/home/home_screen.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(
       const SystemUiOverlayStyle(
         statusBarColor: Colors.transparent
         //color set to transperent or set your own color
      )
  );
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,        
      ),
      home: HomeScreen(),
    );
  }
}
