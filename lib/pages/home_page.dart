import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amazon", style: TextStyle(fontFamily: 'Billabong', fontSize: 28),),
      ),
      body: Center(
        child: Text("Welcome to Amazon", style: TextStyle(fontSize: 25),),
      ),
    );
  }
}
