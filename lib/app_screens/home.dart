import 'package:flutter/material.dart';
import 'package:spacecraft_flutter/SpaceCraft.dart';


Widget getListView() {


  List<Spacecraft> spacecraftsList = List();
  spacecraftsList.add(new Spacecraft('Voyager I', new DateTime(1977, 9, 5), Color.blue, 'Description: Voyager 1 is a space probe launched by NASA on September 5, 1977. Part of the Voyager program to study the outer Solar System.'));
  spacecraftsList.add(new Spacecraft('Mars Rover', new DateTime(2011, 11, 27, 7, 2), Color.red, "Description: Mars rover is a motor vehicle that travels across the surface of the planet Mars upon arrival."));
  spacecraftsList.add(new Spacecraft.unlaunched('Voyager III', 'Description: Voyager 3 would have been Mariner 13, before the name of the mission was changed.'));
  spacecraftsList.add(new Spacecraft('Spotnik 3', new DateTime(1958, 5, 15), Color.green, "Description: Spotnik 3, the first multipurpose space-science satellite placed in orbit."));
  spacecraftsList.add(new Spacecraft('Galileo spacecraft', new DateTime(1989, 10, 18), Color.cyan, "Description: NASA's Galileo spacecraft making a flyby of Jupiter's moon Io, in an artist's rendering."));
  spacecraftsList.add(new Spacecraft('U.S. Explorer 10', new DateTime(1961, 3, 25), Color.yellow, "Description: U.S. Explorer 10 satellite shown undergoing testing in a National Aeronautics and Space Administration laboratory."));


  var listView = ListView(
    children: <Widget>[

      ListTile(
        title: Text("Spacecraft: Voyager I", style: TextStyle(color: Colors.blue)),
        subtitle: Text('''color: blue
Launched: 1977 (42 years ago)
Description: Voyager 1 is a space probe launched by NASA on September 5, 1977. Part of the Voyager program to study the outer Solar System.'''),
      ),

      ListTile(
        title: Text("Spacecraft: Mars Rover", style: TextStyle(color: Colors.red)),
        subtitle: Text('''color: red
Launched: 2011 (8 years ago)
Description: Mars rover is a motor vehicle that travels across the surface of the planet Mars upon arrival.'''),
      ),

      ListTile(
        title: Text("Spacecraft: Voyager III", style: TextStyle(color: Colors.purple)),
        subtitle: Text('''color: purple
Unlaunched
Description: Voyager 3 would have been Mariner 13, before the name of the mission was changed.'''),
      ),

      ListTile(
        title: Text("Spacecraft: Spotnik 3", style: TextStyle(color: Colors.green)),
        subtitle: Text('''color: green
Launched: 1958 (61 years ago)
Description: Spotnik 3, the first multipurpose space-science satellite placed in orbit.'''),
      ),

      ListTile(
        title: Text("Spacecraft: Galileo spacecraft", style: TextStyle(color: Colors.cyan)),
        subtitle: Text('''color: cyan
Launched: 1989 (30 years ago)
Description: NASA's Galileo spacecraft making a flyby of Jupiter's moon Io, in an artist's rendering.'''),
      ),

      ListTile(
        title: Text("Spacecraft: U.S. Explorer 10", style: TextStyle(color: Colors.yellow)),
        subtitle: Text('''color: yellow
Launched: 1961 (58 years ago)
Description: U.S. Explorer 10 satellite shown undergoing testing in a National Aeronautics and Space Administration laboratory.'''),
      ),

    ],
  );

  return listView;
}