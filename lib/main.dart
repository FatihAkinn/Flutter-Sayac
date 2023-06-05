import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0;

//Font Arttırma
  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }
//Font Azaltma
  void _decrementCounter() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deprem App Zikir Matik',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sayaç Uygulaması'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$_count',
                style: TextStyle(
                  fontSize: 50,
                  color: _count < 0 ? Colors.red : Colors.green,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: _decrementCounter,
                    tooltip: 'Azalt',
                    child: Icon(Icons.remove),
                  ),
                  SizedBox(width: 20),
                  FloatingActionButton(
                    onPressed: _incrementCounter,
                    tooltip: 'Arttır',
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


