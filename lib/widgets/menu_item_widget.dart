import 'package:animate_do/animate_do.dart';
import 'package:chat_reactions/model/menu_item.dart';
import 'package:flutter/material.dart';

/// Single menu item widget with animation
class MenuItemWidget extends StatelessWidget {
  /// Creates a menu item widget.
  const MenuItemWidget({
    super.key,
    required this.item,
    required this.index,
    required this.isClicked,
    required this.onTap,
  });

  final MenuItem item;
  final int index;
  final bool isClicked;
  final Function(MenuItem, int) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => onTap(item, index),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            item.label,
            Pulse(
              infinite: false,
              duration: const Duration(milliseconds: 500),
              animate: isClicked,
              child: item.icon,
            ),
          ],
        ),
      ),
    );
  }
}
