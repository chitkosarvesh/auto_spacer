import 'package:flutter/material.dart';

const _defaultHeight = 16.0;

/// AutoSpacer is a class that can be used to add spacers between widgets.
class AutoSpacer {
  /// AutoSpacer accepts the desired height of the spacer. This value is used
  /// only when custom spacer is not used
  const AutoSpacer({this.height = _defaultHeight});

  /// height of the spacer
  final double? height;

  /// returns the actual spacer widget
  Widget get spacer => SizedBox(height: height);

  /// returns the actual list of widgets separated by widgets
  static List<Widget> fromList(
    List<Widget> widgets, {
    bool addAtStart = false,
    bool addAtEnd = false,
    double? height,
    Widget? spacer,
  }) {
    final widgetsWithSpacers = <Widget>[];
    final defaultSpacer = AutoSpacer(height: height);
    if (addAtStart) {
      widgetsWithSpacers.insert(0, spacer ?? defaultSpacer.spacer);
    }
    for (var i = 0; widgets.length > i; i++) {
      if (i == widgets.length - 1) {
        widgetsWithSpacers.add(widgets[i]);
        break;
      }
      widgetsWithSpacers.addAll([widgets[i], spacer ?? defaultSpacer.spacer]);
    }
    if (addAtEnd) {
      widgetsWithSpacers.add(spacer ?? defaultSpacer.spacer);
    }
    return widgetsWithSpacers;
  }
}
