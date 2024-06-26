import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('AppBar'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () => debugPrint("Add IconButton Pressed..."))
        ],
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Body'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Bottom Nav Bar Item 1')),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail), title: Text('Bottom Nav Bar Item 2')),
        ],
        onTap: (value) => print('Bottom Navigation Bar onTap: ${value}'),
      ),
      bottomSheet: Container(
        color: Colors.amberAccent,
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.update),
                onPressed: () => print('Bottom Sheet Icon Pressed')),
            Text('Bottom Sheet Text')
          ],
        ),
      ),

      drawer: Drawer(
        elevation: 2.0,
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => print('Drawer Item 1 Pressed')),
                Text('Drawer Item 1')
              ],
            ),
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => print('Drawer Item 2 Pressed')),
                Text('Drawer Item 2')
              ],
            )
          ],
        ),
      ),

      // For swiping in from right-side
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => print('Drawer Item 1 Pressed')),
                Text('Drawer Item 1')
              ],
            ),
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => print('Drawer Item 2 Pressed')),
                Text('Drawer Item 2')
              ],
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton Pressed');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),

      persistentFooterButtons: <Widget>[
        IconButton(
            icon: Icon(Icons.update),
            onPressed: () => print('Persistent Footer Icon pressed')),
        Text('Persistent Footer Text')
      ],
    );
  }
}
