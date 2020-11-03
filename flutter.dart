import "package:flutter/material.dart";
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Grid',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'ITips'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  singleCard(iconcode, icontitle) {
    return Card(
      color: Colors.white,
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              IconData(iconcode, fontFamily: 'Materialicons'),
              color: Colors.black,
              size: 70.0,
            ),
            //title
            Text(
              icontitle,
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        child: Text('ITips'),
      ),
      body: GridView.count(crossAxisCount: 1, children: <Widget>[
        //icon codes can be found at flutter icons
        singleCard(57744, 'What is IT'),
        singleCard(57746, "I'm in"),
        singleCard(59471, 'Done'),
        singleCard(59472, 'Notes'),
      ]),
      backgroundColor: Colors.lightBlueAccent,
    );
  }