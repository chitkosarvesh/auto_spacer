# auto_spacer
    
[![pub package](https://img.shields.io/pub/v/auto_spacer.svg)](https://pub.dartlang.org/packages/auto_spacer)
[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)
![Codecov](https://img.shields.io/codecov/c/github/chitkosarvesh/auto_spacer)

A simple Flutter package to insert a spacer between a list of widgets

## Usage

```dart
import 'package:auto_spacer/auto_spacer.dart';
import 'package:flutter/material.dart';

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AutoSpacer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ExampleScreen(),
    );
  }
}

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const widgets = <Widget>[
      Text('Hello World'),
      ListTile(
        leading: Icon(Icons.ac_unit),
        title: Text('ListTile'),
        subtitle: Text('This is a ListTile'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'TextField',
        ),
      ),
      ListTile(
        leading: Icon(Icons.ac_unit),
        title: Text('ListTile'),
        subtitle: Text('This is a ListTile'),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('AutoSpacer Example'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: AutoSpacer.fromList(widgets),
        ),
      ),
    );
  }
}
```