import 'package:flutter/material.dart';

class CoinScreen extends StatefulWidget {
  const CoinScreen({ Key? key }) : super(key: key);

  @override
  _CoinScreenState createState() => _CoinScreenState();
}

class _CoinScreenState extends State<CoinScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Color.fromRGBO(224, 224, 224, 1),
      appBar: AppBar(
        title: Text('Coin'),
      ),
      body: Center(
        child: Text(
          'Coin Screen',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}