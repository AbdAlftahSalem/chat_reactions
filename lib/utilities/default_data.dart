import 'package:flutter/material.dart';
import 'package:chat_reactions/model/menu_item.dart';

class DefaultData {
// default list of five reactions to be displayed from emojis and a plus icon at the end
// the plus icon will be used to add more reactions
  static const List<String> reactions = [
    '👍',
    '❤️',
    '😂',
    '😮',
    '😢',
    '😠',
  ];
  // The default list of menuItems
  static const List<MenuItem> menuItems = [
    reply,
    copy,
    delete,
  ];

  // defaul reply menu item
  static const MenuItem reply = MenuItem(
    label: Text('Reply'),
    icon: Icon(Icons.reply, color: Colors.blue),
  );

  // default copy menu item
  static const MenuItem copy = MenuItem(
    label: Text('Copy'),
    icon: Icon(Icons.copy, color: Colors.green),
  );

  // default edit menu item
  static const MenuItem delete = MenuItem(
    label: Text('Delete'),
    icon: Icon(Icons.delete, color: Colors.red),
    isDestuctive: true,
  );
}
