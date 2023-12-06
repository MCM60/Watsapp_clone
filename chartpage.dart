import 'package:flutter/material.dart';



class Chartpage extends StatefulWidget {



  @override
  State<Chartpage> createState() => _ChartpageState();
}

class _ChartpageState extends State<Chartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      body: ListView()
    );
  }
}
