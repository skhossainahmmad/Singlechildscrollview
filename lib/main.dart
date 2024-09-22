import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hides the debug banner
      title: "Horizontal Scroll View",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal Scroll View"),
        centerTitle: true, // Centers the title in the AppBar
        backgroundColor: Colors.teal, // Sets the background color of the AppBar
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
        ), // Removes the AppBar shadow
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Enables horizontal scrolling
        padding: EdgeInsets.all(12), // Adds padding around the scroll view
        child: Row(
          children: [
            Container(
              width: 150, // Sets the width of the container
              height: 150, // Sets the height of the container
              color: Colors.red, // Sets the color of the container
              child: Center(
                  child: Text('Item 1', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(width: 10),
            // Adds space between containers
            Container(
              width: 150,
              height: 150,
              color: Colors.green,
              child: Center(
                  child: Text('Item 2', style: TextStyle(color: Colors.white))),
            ),
            SizedBox(width: 10),
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
              child: Center(
                  child: Text('Item 3', style: TextStyle(color: Colors.white))),
            ),

            SizedBox(width: 10),

            Container(
              width: 150,
              height: 150,
              color: Colors.orange,
              child: Center(
                  child: Text('Item 4', style: TextStyle(color: Colors.white))),
            ),

            SizedBox(width: 10),

            Container(
              width: 150,
              height: 150,
              color: Colors.purple,
              child: Center(
                  child: Text('Item 5', style: TextStyle(color: Colors.white))),
            ),
          ],
        ),
      ),
    );
  }
}
