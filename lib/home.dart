import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_samples/animation/home_animations.dart';
import 'package:flutter_samples/apps/home_apps.dart';

class HomePage extends StatelessWidget {
  void _handlerToPage(BuildContext context, Widget child) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => child));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Examples - BrProgrammer')),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CupertinoButton(
              color: Theme.of(context).primaryColor,
              child: Text('Apps'),
              onPressed: () => _handlerToPage(context, HomeAppsPage()),
            ),
            const SizedBox(height: 10),
            CupertinoButton(
              color: Theme.of(context).primaryColor,
              child: Text('Animations'),
              onPressed: () => _handlerToPage(context, HomeAnimationsPage()),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
