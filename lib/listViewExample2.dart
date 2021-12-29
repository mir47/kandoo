import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'data.dart';

class AnotherListViewExample extends StatefulWidget {
  @override
  createState() => AnotherListViewExampleState();
}

class AnotherListViewExampleState extends State<AnotherListViewExample> {
  final _listItems = models;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example List'),
      ),
      body: _buildExampleList(),
    );
  }

  Widget _buildExampleList() {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                      child: Text(
                        _listItems[position].name,
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                      child: Text(
                        _listItems[position].description,
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "5m",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.star_border,
                          size: 35.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              height: 2.0,
              color: Colors.grey,
            )
          ],
        );
      },
      itemCount: _listItems.length,
    );
  }
}
