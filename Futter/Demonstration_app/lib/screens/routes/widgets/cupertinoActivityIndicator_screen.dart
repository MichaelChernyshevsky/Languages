import 'package:flutter/cupertino.dart';

class CupertinoIndicatorScreen extends StatelessWidget {
  const CupertinoIndicatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoIndicatorExample(),
    );
  }
}

class CupertinoIndicatorExample extends StatelessWidget {
  const CupertinoIndicatorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  CupertinoActivityIndicator(),
                  SizedBox(height: 10),
                  Text('Default'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  CupertinoActivityIndicator(
                      radius: 20.0, color: CupertinoColors.activeBlue),
                  SizedBox(height: 10),
                  Text(
                    'radius: 20.0\ncolor: CupertinoColors.activeBlue',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  CupertinoActivityIndicator(radius: 20.0, animating: false),
                  SizedBox(height: 10),
                  Text(
                    'radius: 20.0\nanimating: false',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
