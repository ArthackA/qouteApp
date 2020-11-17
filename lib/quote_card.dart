import 'package:flutter/material.dart';

import 'qoutes_1.dart';

class QuoteCard extends StatelessWidget {
  final QuoteValue quote;
  final Function delete;
  QuoteCard({
    this.quote,
    this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(24.0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 20.0, 0.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quote.author,
              style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              quote.text,
              style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
            ),
            SizedBox(
              height: 8.0,
            ),
            FlatButton.icon(
                onPressed: delete,
                label: Text('delete'),
                icon: Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
