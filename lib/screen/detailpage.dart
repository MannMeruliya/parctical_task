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
        body: Column(
          children: [
            Text("${provider.ModelList[index]['gdp']}")
          ],
        ),
      ),
    );
  }
}
