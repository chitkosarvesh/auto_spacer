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
