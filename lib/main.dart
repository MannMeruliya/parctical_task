import 'package:flutter/material.dart';
import 'package:parctical_task/provider/country_information_provider.dart';
import 'package:parctical_task/screen/Myhomepage.dart';
import 'package:parctical_task/screen/mainpage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ModelProvider(),
    child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MyHomePage(),
        'mainpage': (context) => mainpage()
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
