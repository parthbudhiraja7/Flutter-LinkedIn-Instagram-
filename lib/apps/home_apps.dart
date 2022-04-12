import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_samples/apps/apps.dart';

class HomeAppsPage extends StatelessWidget {
  void _handlerToPage(BuildContext context, Widget child) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => child));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Apps Concept - BrProgrammer'), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            CupertinoButton(
              color: Theme.of(context).primaryColor,
              child: Text('Instagram-Redesign'),
              onPressed: () => _handlerToPage(context, InstagramRedesign()),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            CupertinoButton(
              color: Theme.of(context).primaryColor,
              child: Text('LinkedIn-Redesign'),
              onPressed: () => _handlerToPage(context, LinkedInRedesign()),
            ),
          ],
        ),
      ),
    );
  }
}
