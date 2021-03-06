import 'package:flutter/material.dart';
import 'package:flutter_navigation/second.dart';
import 'first.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('FirstPage'),
              onPressed: () async {
                final name = 'flutter';

                final res = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPage(name: 'flutter'))
                );
              },
            ),
            RaisedButton(
              child: Text('SecondPage'),
              onPressed: () async {
                final res = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage())
                );
                print(res);
              },
            ),
          ],
        ),
      )
    );
  }
}
