import 'package:flutter/material.dart';
import 'package:parctical_task/provider/country_information_provider.dart';
import 'package:provider/provider.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    Provider.of<ModelProvider>(context).getData();
    dynamic index = ModalRoute.of(context)!.settings.arguments;
    return Consumer<ModelProvider>(
      builder: (context, provider, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff7f2f9),
          title: Text("📍India"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Country :- ${provider.ModelList[0]['name']}",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "GDP :- ${provider.ModelList[0]['gdp']}",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Population :- ${provider.ModelList[0]['population']}",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Capital :- ${provider.ModelList[0]['capital']}",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Tourists :- ${provider.ModelList[0]['tourists']}",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
