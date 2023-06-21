import 'package:flutter/material.dart';
import 'package:parctical_task/provider/country_information_provider.dart';
import 'package:parctical_task/screen/Myhomepage.dart';
import 'package:parctical_task/screen/detailpage.dart';
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
        'detailpage': (context) => detailpage()
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
