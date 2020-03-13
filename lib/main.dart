import 'package:flutter/material.dart';
import './app_screens/home.dart';
import 'package:spacecraft_flutter/SpaceCraft.dart';


void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "SpaceCrafts",
    home: Scaffold(
      appBar: AppBar(title: Text("SpaceCrafts"),),
      body: getListView(),
    ),
  ));
}