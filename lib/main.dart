import 'package:flutter/material.dart';
import 'home_page.dart';
void main(){
  runApp(const myApp());
}
class myApp extends StatelessWidget{
  const myApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Library App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF121212),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFF673AB7),
        brightness: Brightness.dark,).copyWith(
          primary: const Color(0xFF673AB7),
          secondary: const Color(0xFFFFFFFF),
        ),
      ),
      home: HomePage(),
    );
  }
}