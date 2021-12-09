import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bioprocess_lexicon/alphabet_scroll_page.dart';
import 'package:bioprocess_lexicon/lex_eintrag.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bioprocess Lexicon',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: BioprocessApp(),
    );
  }
}

class BioprocessApp extends StatefulWidget{
  @override
  _BioprocessLex createState() => _BioprocessLex();
}

class _BioprocessLex extends State<BioprocessApp>{

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BIOPROCESSING', style: TextStyle(fontWeight: FontWeight.bold)),
        titleTextStyle: const TextStyle(fontSize: 25),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {
            showSearch(context: context, delegate: DataSearch());
          })
        ],
      ),
      body: AlphabetScrollPage(
        onClickedItem: (item) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LexEintrag(titel: item))
          );
        },
        items: LexiList.obj,
      ),
  );
}





