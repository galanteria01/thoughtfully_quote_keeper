import 'package:data_learn/Quote.dart';
import 'package:data_learn/editQuote.dart';
import 'package:flutter/material.dart';
import 'AddQuote.dart';
import 'Loading.dart';
import 'QuoteCard.dart';

void main() {

  runApp(MaterialApp(
    initialRoute: '/loading',
    routes: {
      '/': (context) => Quotes(),
      '/loading': (context) => Loading(),
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
    // This function handles the click on drop down menu
    void handleClick(String value) {
      switch (value) {
        case 'About':

          break;
        case 'Support':
          break;
      }
    }
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Thoughtfully'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        automaticallyImplyLeading: false,
        actions: [
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context){
              return {'About', 'Support'}.map((String choice){
                return PopupMenuItem(
                    child: Text(choice),
                  value: choice,
                );
              }).toList();
            },



          )
        ],
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
        delete: () {
              setState(() {
                quotes.remove(quote);
              });
        },
          edit: () async{
              dynamic data = await Navigator.pushNamed(context, '/edit',arguments: {
                'author':quote.author,
                'quote':quote.quoteLine,
              });
              setState(() {
                quotes.remove(quote);
                Quote quoteNew = Quote(author: data['author'], quoteLine: data['quote']);

                quotes.add(quoteNew);
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



