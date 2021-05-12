import 'package:flutter/material.dart';

class Prova extends StatefulWidget {
  @override
  _ProvaState createState() => _ProvaState();
}

class _ProvaState extends State<Prova> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador de quantas vezes você deu o cu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Aperte no botão para ver quantas vezes você deu o cu hoje',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Container(
                child: ElevatedButton(onPressed: () {}, child: Text('Uau')),
                height: 24,
                width: 200,
                color: Colors.black87,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(top: 10))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
