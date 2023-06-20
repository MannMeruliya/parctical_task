import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Country Information"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment(0, -0.4),
            child: Lottie.asset("assets/1.json", width: 200),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              alignment: Alignment(0, 0.5),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('mainpage');
                  },
                  child: Text("Get Start"))),
        ],
      ),
    );
  }
}
