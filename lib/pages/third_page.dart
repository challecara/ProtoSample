import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  double size = 14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Third Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                color: Theme.of(context).primaryColor,
              ),
            ),
            ListTile(
              title: const Text('ログアウト'),
              onTap: () =>
                  Navigator.of(context).popUntil((route) => route.isFirst),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello World',
              style: TextStyle(fontSize: size),
            ),
            ElevatedButton(
              onPressed: () => setState(() {
                if (size < 40) {
                  size++;
                }
              }),
              child: Text('Loud'),
            ),
            ElevatedButton(
              onPressed: () => setState(() {
                if (size > 14) {
                  size--;
                }
              }),
              child: Text('Quiet'),
            ),
          ],
        ),
      ),
    );
  }
}
