import 'package:flutter/material.dart';
import 'package:flutter_learning/utils/menuOptions.dart';

class MyMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Topics'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: buildMenuOptions(context),
      ),
    );
  }
}

List buildMenuOptions(BuildContext context) {
  return menuOptions.map((menu) {
    return ListTile(
      leading: Icon(menu['icon']),
      title: Text(
        menu['title'],
        style: Theme.of(context).textTheme.subhead,
      ),
      onTap: () {
        Navigator.of(context).pushNamed(menu['route']);
      },
    );
  }).toList();
}
