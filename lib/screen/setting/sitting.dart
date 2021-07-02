import 'package:flutter/material.dart';

class SittingScreen extends StatefulWidget {
  const SittingScreen({ Key? key }) : super(key: key);

  @override
  _SittingScreenState createState() => _SittingScreenState();
}

class _SittingScreenState extends State<SittingScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color.fromRGBO(224, 224, 224, 1),
      appBar: AppBar(
        title: Text('Sitting'),
      ),
      body: Center(
        child: Text(
          'Sitting Screen',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}