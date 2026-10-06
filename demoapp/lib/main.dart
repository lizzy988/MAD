import 'package:flutter/material.dart';
import 'package:demoapp/settings.dart';
void main() {
  runApp(const MyApp());//the root widget of the flutter application
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override //override to neutralise all attributes that come with stateless widget
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: mainscreen()
title: 'My Application',
home:const MyHomePage(title: 'Home Page'),
 );
  }
    
  }
  class MyHomePage extends StatefulWidget{
const MyHomePage ({super.key, required this.title});
final String title;

@override
  State<MyHomePage> createState() => HomePagestate();

  }
class HomePagestate extends State<MyHomePage> {
  @override
Widget build(BuildContext context){
return Scaffold(appBar: AppBar(
  title: Text('Home Screen'),
  backgroundColor:(Color.fromARGB(56, 28, 4, 131))),
  body: const Center(child: Text('Welcome to Home Page')),
  drawer: Drawer(
    child: ListView(children: [DrawerHeader(
      decoration: BoxDecoration(color: Color.fromRGBO(230, 9, 145, 1)),
      child: Text('Menu')),
  ListTile(title: Text('Home'),
  leading: Icon(Icons.home),
  onTap: () {
    Navigator.pop(context);
  },),
  ListTile(title: Text('Settings'),
  leading: Icon(Icons.settings), 
  onTap: () {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder:(context) => const SettingsScreen(),
    ));
  },),
  ListTile(title: Text('Profile'),
  leading: Icon(Icons.person), 
  onTap: () {
    Navigator.pop(context);
  },),
  ListTile(title: Text('Logout'),
  leading: Icon(Icons.logout), 
  onTap: () {
    Navigator.pop(context);
  },),
  ]),),
);
}
  }


