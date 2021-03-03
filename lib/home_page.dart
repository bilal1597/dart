import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App')),
      drawer: Drawer(),
      body: Material(
        child: Container(
          child: Center(
            child: Text('welcome'),
          ),
        ),
      ),
    );
  }
}
