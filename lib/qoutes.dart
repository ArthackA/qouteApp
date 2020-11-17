import 'package:flutter/material.dart';
import 'package:qoutes/quote_card.dart';

import 'qoutes_1.dart';

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<QuoteValue> qoutes = [
    QuoteValue(
        author: 'Oscar wilde',
        text: 'Be yourself; everyone else is already taken'),
    QuoteValue(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    QuoteValue(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple')
  ];

  
// Funx to display a card
  // Widget quoteTemplate(qoute) {
  //   return QuoteCard(quotez: qoute);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Qoutes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: qoutes.map((qoute) => QuoteCard(
          quote: qoute,
          delete: (){
            setState(() {
              qoutes.remove(qoute);
            });
          }
        )).toList(),
      ),
    );
  }
}

