import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void _onPress() {
    print("Search Pressed");
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
      backgroundColor: Colors.greenAccent.shade700,
      title: new Text("Fancy Day"),
      actions: <Widget>[
        new IconButton(
            icon: new Icon(Icons.send), onPressed: () => debugPrint("Clicked")),
        new IconButton(
            icon: new Icon(Icons.search), onPressed: _onPress)
      ],
    ),

      // Other Properties
      backgroundColor: Colors.grey.shade300,
      body: new Container(
        alignment: Alignment.center,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Hello",
                  style: new TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.deepOrange
                  ),),
                new InkWell(
                  child: new Text("Button"),

                  onTap: ()=> debugPrint("Button Tapped"),
                ),
              ],
          ),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: () => debugPrint("pressed!"),
          backgroundColor: Colors.lightGreen,
          tooltip: 'Going up',
          child: new Icon(Icons.call_missed),
      ),
      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.add), title: new Text("Hey")),
        new BottomNavigationBarItem(icon: new Icon(Icons.print), title: new Text("No")),
        new BottomNavigationBarItem(icon: new Icon(Icons.call_missed), title: new Text("Hello"))
      ], onTap: (int i) => debugPrint("Hello Touched $i"),),


    );
  }
}
