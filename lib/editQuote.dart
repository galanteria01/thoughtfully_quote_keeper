import 'package:flutter/material.dart';

import 'Quote.dart';

class EditQuote extends StatefulWidget {
  @override
  _EditQuoteState createState() => _EditQuoteState();
}

class _EditQuoteState extends State<EditQuote> {
  String author;
  String quote;
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    author = data['author'];
    quote = data['quote'];
    // print(author + quote);

    return Scaffold(
      appBar: AppBar(
        title: Text("Edit quote"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          TextField(
            controller: TextEditingController()..text = author,
            maxLines: 1,
            autofocus: true,
            onChanged: (text) {
              author = text;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              hintText:"Enter the author name!",
            ),

          ),
          SizedBox(height: 20.0,),
          TextField(
            controller: TextEditingController()..text = quote,
            onChanged: (text) {
              quote = text;
            },
            maxLines: 5,
            decoration: InputDecoration(
                hoverColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                hintText: "Enter the quote!"
            ),

          ),
          SizedBox(height: 20.0,),
          FlatButton(
              onPressed: () {
                Navigator.pop(context,{
                  'author': author,
                  'quote':quote,
                });
              },
              color: Colors.redAccent,

              child: Text("Submit",
                style: TextStyle(
                  color: Colors.white,

                ),))
        ],
      ),
    );;
  }
}
