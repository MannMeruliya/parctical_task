import 'package:flutter/material.dart';
import 'package:parctical_task/provider/country_information_provider.dart';
import 'package:provider/provider.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    Provider.of<ModelProvider>(context).getData();
    return Consumer(
      builder: (context, provider, child) => Scaffold(
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
