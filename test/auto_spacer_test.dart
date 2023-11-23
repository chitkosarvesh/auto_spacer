import 'package:auto_spacer/auto_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

final widgets = <Widget>[
  const Text('1'),
  const Text('2'),
  const Text('3'),
];

void main() {
  test('auto_spacer without any params', () {
    final widgetsWithSpacers = AutoSpacer.fromList(widgets);
    expect(widgetsWithSpacers.length, 5);
    expect(widgetsWithSpacers[0], isA<Text>());
    expect(widgetsWithSpacers[1], isA<SizedBox>());
    expect(widgetsWithSpacers[2], isA<Text>());
    expect(widgetsWithSpacers[3], isA<SizedBox>());
    expect(widgetsWithSpacers[4], isA<Text>());
  });
  test('auto_spacer with addAtStart', () {
    final widgetsWithSpacers = AutoSpacer.fromList(widgets, addAtStart: true);
    expect(widgetsWithSpacers.length, 6);
    expect(widgetsWithSpacers[0], isA<SizedBox>());
    expect(widgetsWithSpacers[1], isA<Text>());
    expect(widgetsWithSpacers[2], isA<SizedBox>());
    expect(widgetsWithSpacers[3], isA<Text>());
    expect(widgetsWithSpacers[4], isA<SizedBox>());
    expect(widgetsWithSpacers[5], isA<Text>());
  });
  test('auto_spacer with addAtEnd', () {
    final widgetsWithSpacers = AutoSpacer.fromList(widgets, addAtEnd: true);
    expect(widgetsWithSpacers.length, 6);
    expect(widgetsWithSpacers[0], isA<Text>());
    expect(widgetsWithSpacers[1], isA<SizedBox>());
    expect(widgetsWithSpacers[2], isA<Text>());
    expect(widgetsWithSpacers[3], isA<SizedBox>());
    expect(widgetsWithSpacers[4], isA<Text>());
    expect(widgetsWithSpacers[5], isA<SizedBox>());
  });
  test('auto_spacer with both addAtStart and addAtEnd', () {
    final widgetsWithSpacers =
        AutoSpacer.fromList(widgets, addAtStart: true, addAtEnd: true);
    expect(widgetsWithSpacers.length, 7);
    expect(widgetsWithSpacers[0], isA<SizedBox>());
    expect(widgetsWithSpacers[1], isA<Text>());
    expect(widgetsWithSpacers[2], isA<SizedBox>());
    expect(widgetsWithSpacers[3], isA<Text>());
    expect(widgetsWithSpacers[4], isA<SizedBox>());
    expect(widgetsWithSpacers[5], isA<Text>());
    expect(widgetsWithSpacers[6], isA<SizedBox>());
  });
  test('auto_spacer with custom spacer', () {
    final widgetsWithSpacers = AutoSpacer.fromList(
      widgets,
      spacer: const SizedBox(height: 10),
    );
    expect(widgetsWithSpacers.length, 5);
    expect(widgetsWithSpacers[0], isA<Text>());
    expect(widgetsWithSpacers[1], isA<SizedBox>());
    expect(widgetsWithSpacers[2], isA<Text>());
    expect(widgetsWithSpacers[3], isA<SizedBox>());
    expect(widgetsWithSpacers[4], isA<Text>());
  });
  test('auto_spacer with custom spacer and addAtStart', () {
    final widgetsWithSpacers = AutoSpacer.fromList(
      widgets,
      spacer: const SizedBox(height: 10),
      addAtStart: true,
    );
    expect(widgetsWithSpacers.length, 6);
    expect(widgetsWithSpacers[0], isA<SizedBox>());
    expect(widgetsWithSpacers[1], isA<Text>());
    expect(widgetsWithSpacers[2], isA<SizedBox>());
    expect(widgetsWithSpacers[3], isA<Text>());
    expect(widgetsWithSpacers[4], isA<SizedBox>());
    expect(widgetsWithSpacers[5], isA<Text>());
  });
  test('auto_spacer with custom spacer and addAtEnd', () {
    final widgetsWithSpacers = AutoSpacer.fromList(
      widgets,
      spacer: const SizedBox(height: 10),
      addAtEnd: true,
    );
    expect(widgetsWithSpacers.length, 6);
    expect(widgetsWithSpacers[0], isA<Text>());
    expect(widgetsWithSpacers[1], isA<SizedBox>());
    expect(widgetsWithSpacers[2], isA<Text>());
    expect(widgetsWithSpacers[3], isA<SizedBox>());
    expect(widgetsWithSpacers[4], isA<Text>());
    expect(widgetsWithSpacers[5], isA<SizedBox>());
  });
  test('auto_spacer with custom spacer, addAtStart and addAtEnd', () {
    final widgetsWithSpacers = AutoSpacer.fromList(
      widgets,
      spacer: const SizedBox(height: 10),
      addAtStart: true,
      addAtEnd: true,
    );
    expect(widgetsWithSpacers.length, 7);
    expect(widgetsWithSpacers[0], isA<SizedBox>());
    expect(widgetsWithSpacers[1], isA<Text>());
    expect(widgetsWithSpacers[2], isA<SizedBox>());
    expect(widgetsWithSpacers[3], isA<Text>());
    expect(widgetsWithSpacers[4], isA<SizedBox>());
    expect(widgetsWithSpacers[5], isA<Text>());
    expect(widgetsWithSpacers[6], isA<SizedBox>());
  });
  test('auto_spacer with custom height', () {
    final widgetsWithSpacers = AutoSpacer.fromList(
      widgets,
      height: 10,
    );
    expect(widgetsWithSpacers.length, 5);
    expect(widgetsWithSpacers[0], isA<Text>());
    expect(widgetsWithSpacers[1], isA<SizedBox>());
    expect(widgetsWithSpacers[2], isA<Text>());
    expect(widgetsWithSpacers[3], isA<SizedBox>());
    expect(widgetsWithSpacers[4], isA<Text>());
  });
}
