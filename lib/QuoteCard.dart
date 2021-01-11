import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Quote.dart';

// ignore: must_be_immutable
class QuoteCard extends StatelessWidget {
  Quote quote;
  Function delete;
  Function edit;

  QuoteCard({this.quote,this.delete,this.edit});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),

      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.quoteLine,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],

              ),
            ),
            SizedBox(height: 8.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8.0,),
            Row(
              children: <Widget>[
                FlatButton.icon(
                  onPressed: edit,
                  label: Text("Edit"),
                  icon: Icon(
                      Icons.edit
                  ),
                ),
                SizedBox(width: 140.0,),
                FlatButton.icon(
                  onPressed: delete,
                  label: Text("Delete"),
                  icon: Icon(
                      Icons.delete
                  ),
                ),

              ],
            )

          ],
        ),
      ),
    );
  }
}