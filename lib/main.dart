import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/MyMenuPage.dart';
import 'package:flutter_learning/utils/constant.dart';
import 'package:flutter_learning/widgets/ButtonWidget.dart';
import 'package:flutter_learning/widgets/ExpansionTileWidget.dart';
import 'package:flutter_learning/widgets/TextWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: 'GoogleSans',
      ),
      initialRoute: '/',
      routes: buildRoutes(context),
    );
  }
}

buildRoutes(BuildContext context) {
  return {
    INDEX: (context) => MyMenuPage(),
    TEXT: (context) => TextWidget(),
    BUTTON: (context) => ButtonWidget(),
    EXPANSION_TILE: (context) => ExpansionTileWidget()
  };
}
