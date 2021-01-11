import 'package:flutter/material.dart';

class AddNote extends StatefulWidget {
  @override
  _AddNoteState createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add quote"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: <Widget>[
          Text("Enter the author name"),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText:"Enter the author name",
            ),
          ),
        ],
      ),
    );
  }
}
