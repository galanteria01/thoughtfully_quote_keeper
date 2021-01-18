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

          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: TextField(
              autofocus: true,
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
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: TextField(
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
          ),
          SizedBox(height: 20.0,),
          FlatButton(
              onPressed: () {
                Navigator.pop(context,{
                  'authorName': authorName,
                  'quote':quote,
                });
              },
              color: Colors.redAccent,
              focusColor: Colors.white,
              child: Text("Submit",
              style: TextStyle(
                color: Colors.white,

              ),))
        ],
      ),
    );
  }
}
