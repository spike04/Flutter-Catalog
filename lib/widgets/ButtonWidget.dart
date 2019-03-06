import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Flat Button'),
              onPressed: () {},
            ),
            SizedBox(height: 8.0),
            RaisedButton(
              child: Text(
                'Raised Button',
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
            SizedBox(height: 8.0),
            IconButton(
              icon: Icon(FontAwesomeIcons.podcast),
              onPressed: () {},
            ),
            SizedBox(height: 8.0),
            DropdownButton(
              value: 'One',
              onChanged: (value) {
                debugPrint(value);
              },
              items: <String>['One', 'Two', 'Three']
                  .map<DropdownMenuItem<String>>((value) {
                return DropdownMenuItem(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
