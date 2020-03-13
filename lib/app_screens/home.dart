import 'package:flutter/material.dart';
import 'package:spacecraft_flutter/SpaceCraft.dart';


Widget getListView() {


  List<Spacecraft> spacecraftsList = List();
  spacecraftsList.add(new Spacecraft('Voyager 1', new DateTime(1977, 9, 5), Color.blue, 'Description: Voyager 1 is a space probe launched by NASA on September 5, 1977. Part of the Voyager program to study the outer Solar System.'));
  spacecraftsList.add(new Spacecraft('Mars Rover', new DateTime(2011, 11, 27, 7, 2), Color.red, "Description: Mars rover is a motor vehicle that travels across the surface of the planet Mars upon arrival."));
  spacecraftsList.add(new Spacecraft.unlaunched('Voyager III', 'Description: Voyager 3 would have been Mariner 13, before the name of the mission was changed.'));
  spacecraftsList.add(new Spacecraft('Spotnik 3', new DateTime(1958, 5, 15), Color.green, "Description: Spotnik 3, the first multipurpose space-science satellite placed in orbit."));
  spacecraftsList.add(new Spacecraft('Galileo spacecraft', new DateTime(1989, 10, 18), Color.cyan, "Description: NASA's Galileo spacecraft making a flyby of Jupiter's moon Io, in an artist's rendering."));
  spacecraftsList.add(new Spacecraft('U.S. Explorer 10', new DateTime(1961, 3, 25), Color.yellow, "Description: U.S. Explorer 10 satellite shown undergoing testing in a National Aeronautics and Space Administration laboratory."));

  List<ListTile> listTiles = List();
  listTiles.add(new ListTile(title:Text(spacecraftsList[0].name),subtitle: Column(children: <Widget>[Text(spacecraftsList[0].description),],)));
  listTiles.add(new ListTile(title:Text(spacecraftsList[1].name),subtitle: Column(children: <Widget>[Text(spacecraftsList[1].description),],)));
  listTiles.add(new ListTile(title:Text(spacecraftsList[2].name),subtitle: Column(children: <Widget>[Text(spacecraftsList[2].description),],)));
  listTiles.add(new ListTile(title:Text(spacecraftsList[3].name),subtitle: Column(children: <Widget>[Text(spacecraftsList[3].description),],)));
  listTiles.add(new ListTile(title:Text(spacecraftsList[4].name),subtitle: Column(children: <Widget>[Text(spacecraftsList[4].description),],)));
  listTiles.add(new ListTile(title:Text(spacecraftsList[5].name),subtitle: Column(children: <Widget>[Text(spacecraftsList[5].description),],)));
  

  var listView = ListView(
    children: listTiles

  );

  return listView;
}