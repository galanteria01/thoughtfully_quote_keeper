import 'package:flutter/material.dart';

class EditQuote extends StatefulWidget {
  @override
  _EditQuoteState createState() => _EditQuoteState();
}

class _EditQuoteState extends State<EditQuote> {
  String author;
  String quote;
  @override
  Widget build(BuildContext context) {
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
            maxLines: 1,
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
