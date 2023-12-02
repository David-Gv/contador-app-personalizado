import 'package:flutter/material.dart';
// import 'package:counter_app/screens/home_screen.dart';
import 'package:counter_app/screens/counter_screen.dart';


void main() {
  runApp( const MyApp() );
}

class MyApp extends StatelessWidget  {
  
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)
      ),
      darkTheme: ThemeData.dark(),
      // home: HomeScreen()
      home:const CounterScreen()
    );
  }
  
}