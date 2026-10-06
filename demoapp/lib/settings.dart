import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget{
  const SettingsScreen ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings screen') ,
        backgroundColor: Color.fromRGBO(50, 185, 9, 1),
      ),
      backgroundColor: const Color.fromARGB(220, 4, 87, 1),
      body: Center(child: Text('welcome to settings'),),
    );
  }
}
