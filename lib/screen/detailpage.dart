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
    // dynamic index = ModalRoute.of(context)!.settings.arguments;
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
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f2f9),
                    ),
                    child: Text(
                      "Country :- ${provider.ModelList[0]['name']}",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f2f9),
                    ),
                    child:  Text(
                      "GDP :- ${provider.ModelList[0]['gdp']}",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f2f9),
                    ),
                    child:  Text(
                      "Population :- ${provider.ModelList[0]['population']}",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f2f9),
                    ),
                    child:  Text(
                      "Capital :- ${provider.ModelList[0]['capital']}",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f2f9),
                    ),
                    child: Text(
                      "Tourists :- ${provider.ModelList[0]['tourists']}",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f2f9),
                    ),
                    child: Text(
                      "Unemployment :- ${provider.ModelList[0]['unemployment']}",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f2f9),
                    ),
                    child: Text(
                      "Currency :- ${provider.ModelList[0]['currency']}",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f2f9),
                    ),
                    child: Text(
                      "Region :- ${provider.ModelList[0]['region']}",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f2f9),
                    ),
                    child: Text(
                      "Exports :- ${provider.ModelList[0]['exports']}",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f2f9),
                    ),
                    child: Text(
                      "Imports :- ${provider.ModelList[0]['imports']}",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f2f9),
                    ),
                    child: Text(
                      "iso2 :- ${provider.ModelList[0]['iso2']}",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xfff7f2f9),
                    ),
                    child: Text(
                      "Fertility :- ${provider.ModelList[0]['fertility']}",
                      style: TextStyle(fontSize: 28),
                    ),
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
