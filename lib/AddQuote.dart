import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AddQuote extends StatefulWidget {
  @override
  _AddQuoteState createState() => _AddQuoteState();
}

class _AddQuoteState extends State<AddQuote> {
  String authorName;
  String quote;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add quote"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          TextField(
            maxLines: 1,
            onChanged: (text) {
              authorName = text;
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
            onChanged: (text) {
              quote = text;
            },
            autofocus: true,
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
              onPressed: () {},
              color: Colors.redAccent,

              child: Text("Submit",
              style: TextStyle(
                color: Colors.white,

              ),))
        ],
      ),
    );
  }
}
