import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExpansionTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 240.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://goo.gl/Akts4s'),
                  ),
                ),
              ),
              ExpansionTile(
                title: Text(
                  'Expansion Tile Title',
                  style: Theme.of(context).textTheme.title,
                ),
                trailing: Icon(FontAwesomeIcons.coffee),
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text(
                        'This is the remaining Expansion Tile Widget Contents that is being hidden and will be shown after the expansion of the Expansion tile.'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
