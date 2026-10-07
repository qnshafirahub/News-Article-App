import 'package:flutter/material.dart';
import 'package:news_article_app/myhomepage.dart';
import 'loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Halaman pertama adalah Login
      //home: const LoginPage(),
      routes: {
        "/": (context) => const LoginPage(),
        "/home":(context) => const MyHomePage(),
        
      },
      
    );
  }
}