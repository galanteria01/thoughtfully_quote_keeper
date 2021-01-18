import 'package:data_learn/Quote.dart';
import 'package:data_learn/editQuote.dart';
import 'package:flutter/material.dart';
import 'AddQuote.dart';
import 'QuoteCard.dart';

void main() {

  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Quotes(),
      '/add': (context) => AddQuote(),
      '/edit':(context) =>EditQuote(),
    },
  ));
}

class Quotes extends StatefulWidget {

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  // Dummy data entered
  List<Quote> quotes = [
    Quote(quoteLine: "Whatever i cannot do, i do not understand" ,author: "Richard feynman"),
    Quote(quoteLine: "Change with time, Or change the time" ,author: "Oscar wilde"),
    Quote(quoteLine: "Whatever i cannot do, i do not understand" ,author: "Oscar wilde")

  ];

  Widget quoteCard(quote){
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Thoughtfully'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
        delete: () {
              setState(() {
                quotes.remove(quote);
              });
        },
          edit: () {
              Navigator.pushNamed(context, '/edit',arguments: {
                'author':quote.author,
                'quote':quote.quoteLine,
              });
              setState(() {

                quotes.add(quote);
              });
          }
        )).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          dynamic result = await Navigator.pushNamed(context, '/add');
          setState(() {
            quotes.add(Quote(author: result['authorName'],quoteLine: result['quote']));
          });
        },
        backgroundColor: Colors.redAccent,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}



