import 'package:colorize/colorize.dart';

enum Color {red, orange, yellow, green, blue, purple, brown, magenta, tan, cyan, olive, maroon, navy, aquamarine, turquoise, silver, lime, teal, indigo, violet, pink, black, white, grey}

class Spacecraft {
  String name;
  DateTime launchDate;
  Color color;
  String description;
  

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(String name1, DateTime launchDate1, Color color1, String description1) {
    // Initialization code goes here.
    name = name1;
    launchDate = launchDate1;
    color = color1;
    description = description1;
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name, String description) : this(name, null, Color.magenta, description);



  int get launchYear =>
      launchDate?.year; // read-only non-final property

  // Method.
  void describe([String specialMessage]) {
    print('');
      
      Colorize displayText = Colorize('Spacecraft: $name');
      if (color == Color.blue) {
        displayText.blue();
        displayText.bgDarkGray();
      }
      else if (color == Color.red) {
        displayText.red();
        displayText.bgDarkGray();
      }
      else if (color == Color.magenta) {
        displayText.magenta();
        displayText.bgDarkGray();
      }
      else if (color == Color.green) {
        displayText.lightGreen();
        displayText.bgDarkGray();
      }
      else if (color == Color.cyan) {
        displayText.cyan();
        displayText.bgDarkGray();
      }
      else if (color == Color.yellow) {
        displayText.lightYellow();
        displayText.bgDarkGray();
      }

    print(displayText);
    print(typesOfColor(color));
    if (launchDate != null) {
      int years =
          DateTime.now().difference(launchDate).inDays ~/
              365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
    print(description);
    if (specialMessage!=null) {
      print(specialMessage);
    }
  }
} 

String typesOfColor(Color color) {
  switch(color) {
    case Color.aquamarine :
    return "color: aquamarine";
    case Color.black :
    return "color: black";
    case Color.blue :
    return "color: blue";
    case Color.brown :
    return "color: brown";
    case Color.cyan :
    return "color: cyan";
    case Color.green :
    return "color: green";
    case Color.grey :
    return "color: grey";
    case Color.indigo :
    return "color: indigo";
    case Color.lime :
    return "color: lime";
    case Color.magenta :
    return "color: megenta";
    case Color.maroon :
    return "color: maroon";
    case Color.navy :
    return "color: navy";
    case Color.olive :
    return "color: olive";
    case Color.orange :
    return "color: orange";
    case Color.pink :
    return "color: pink";
    case Color.purple :
    return "color: purple";
    case Color.red :
    return "color: red";
    case Color.silver :
    return "color: silver";
    case Color.tan :
    return "color: tan";
    case Color.teal :
    return "color: teal";
    case Color.turquoise :
    return "color: turquoise";
    case Color.violet :
    return "color: violet";
    case Color.white :
    return "color: white";
    case Color.yellow :
    return "color: yellow";
  }
}