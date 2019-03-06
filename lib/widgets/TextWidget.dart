import 'package:flutter/material.dart';
import 'package:flutter_learning/utils/theme.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello World',
              style: titleTextStyle1,
            ),
            SizedBox(height: 8.0),
            Text(
              'Hello World',
              style: titleTextStyle2,
            ),
            SizedBox(height: 8.0),
            Text(
              'Hello World',
              style: titleTextStyle3,
            ),
            SizedBox(height: 8.0),
            Text(
              'Hello World',
              style: titleTextStyle4,
            ),
            SizedBox(height: 8.0),
            Text(
              'Hello World',
              style: titleTextStyle5,
            ),
          ],
        ),
      ),
    );
  }
}
