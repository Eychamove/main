import 'package:bioprocess_lexicon/quiz_page.dart';
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
        theme: ThemeData(primarySwatch: Colors.green),
        home: const BioprocessApp());
  }
}

class BioprocessApp extends StatefulWidget {
  const BioprocessApp({Key? key}) : super(key: key);

  @override
  _BioprocessLex createState() => _BioprocessLex();
}

class _BioprocessLex extends State<BioprocessApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = [
      AlphabetScrollPage(
        onClickedItem: (item) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => LexEintragPage(lexikonEintrag: item)));
        },
        items: LexikonEintrag.lexikonEintraege,
      ),
      const CooleQuizPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BIOPROCESSING',
            style: TextStyle(fontWeight: FontWeight.bold)),
        titleTextStyle: const TextStyle(fontSize: 25),
        actions: <Widget>[
          if (_selectedIndex == 0)
            IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                }),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: 'Business',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
