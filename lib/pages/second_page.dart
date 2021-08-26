import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Second Page'),
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
              style: TextStyle(fontSize: 50, color: Colors.red),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('前のページ'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('thirdPage'),
              child: Text('次のページ'),
            )
          ],
        ),
      ),
    );
  }
}
