import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'data.dart';

class ListViewExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListViewExampleState();
  }
}

class ListViewExampleState extends State<ListViewExample> {
  List<Container> _list() {
    int index = 0;
    return models.map((model) {
      var container = Container(
        decoration: index % 2 == 0
            ? new BoxDecoration(color: const Color(0xFFb0e0e6))
            : new BoxDecoration(color: const Color(0xFF7ec0ee)),
        child: new Row(
          children: [
            new Container(
              margin: new EdgeInsets.all(10.0),
              child: new CachedNetworkImage(
                imageUrl: model.imageUrl,
                width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text(
                    model.name,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.black
                    ),
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text(
                    model.description,
                    style: new TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 10.0,
                      color: Colors.black
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
      index++;
      return container;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: _list(),
    );
  }
}
