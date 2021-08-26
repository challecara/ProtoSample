import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('First Page'),
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
            Text('Hello World'),
            ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('secondPage'),
                child: Text('次のページ'))
          ],
        ),
      ),
    );
  }
}
