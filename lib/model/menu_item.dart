import 'package:flutter/widgets.dart';

class MenuItem {
  final Widget label;
  final Widget icon;
  final bool isDestuctive;

  // contsructor
  const MenuItem({
    required this.label,
    required this.icon,
    this.isDestuctive = false,
  });
}
