import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:azlistview/azlistview.dart';
import 'package:bioprocess_lexicon/lex_eintrag.dart';

class LexiList{
  static List<String> obj = [
    'Affinity Chromatography',
    'Allosteric Regulation',
    'Bacterial Growth',
    'Batch Processing',
    'Bioreactor',
    'Chromatography',
    'Downstream Processing',
    'Enzyme',
    'Formulation',
    'Hofmeister Series',
    'Hydrophobic Interaction Chromatography',
    'Immobilization',
    'Ion Exchange Chromatography',
    'Ligand',
    'Michaelis-Menten Kinetics',
    'Osmotic Pressure',
    'PCR',
    'Reversed Phase Chromatography',
    'Scale-Up',
    'Size Exclusion Chromatography',
    'Upstream Processing'
  ];
  static List<String> favObj = ['Formulation',
    'Hofmeister Series'];
}

class _AZItem extends ISuspensionBean {
  final String title;
  final String tag;

  _AZItem({
    required this.title,
    required this.tag,
  });

  @override
  String getSuspensionTag() => tag;
}

class AlphabetScrollPage extends StatefulWidget{
  final List<String> items;
  final ValueChanged<String> onClickedItem;

  const AlphabetScrollPage({
    Key? key,
    required this.items,
    required this.onClickedItem,
    }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AlphabetScrollPageState();
}

class _AlphabetScrollPageState extends State<AlphabetScrollPage> {
  List<_AZItem> items = [];

  @override
  void initState(){
    super.initState();
    initList(widget.items);
  }

  void initList(List<String> items){
    this.items = items.map((item)=> _AZItem(title: item, tag: item[0].toUpperCase())).toList();

    SuspensionUtil.sortListBySuspensionTag(this.items);
    SuspensionUtil.setShowSuspensionStatus(this.items);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) => AzListView(
    padding: const EdgeInsets.all(16),
    data: items,
    itemCount: items.length,
    itemBuilder: (context, index){
      final item = items[index];
      return _buildListItem(item);
    },
    indexHintBuilder: (context, hint) => Container(
      alignment: Alignment.center,
      width: 60,
      height: 60,
      decoration: BoxDecoration(color: Colors.green, shape: BoxShape.circle),
      child: Text(
        hint,
        style: const TextStyle(color: Colors.white, fontSize: 30),
      ),
    ),
    indexBarOptions: const IndexBarOptions(
      needRebuild: true,
      selectTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      selectItemDecoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      indexHintAlignment: Alignment.centerRight,
      indexHintOffset: Offset(-10, 0),
    ),
  );
  Widget _buildListItem(_AZItem item){
    final tag = item.getSuspensionTag();
    final offstage = !item.isShowSuspension;
    return Column(
      children: <Widget>[
        Offstage(offstage: offstage, child: buildHeader(tag)),
        Container(
          margin: EdgeInsets.only(right: 16),
          child: ListTile(
            title: Text(item.title, style: TextStyle(fontSize: 20),),
            onTap: () => widget.onClickedItem(item.title),
          ),
        )
      ],
    );
  }
  Widget buildHeader(String tag) => Container(
    height: 30,
    margin: const EdgeInsets.only(right: 16),
    padding: const EdgeInsets.only(left: 8),
    color: Colors.green.shade200,
    alignment: Alignment.centerLeft,
    child: Text(
      '$tag',
      softWrap: false,
      style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white)
    ),
  );
}

class DataSearch extends SearchDelegate<String>{
  List<String> getResults(String query) {
    final suggestions = query.isEmpty?LexiList.favObj:LexiList.obj.where((p) => p.toUpperCase().startsWith(query)).toList();

    return suggestions;
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {
      query = "";
    })];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: (){
          close(context, '');
        }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = getResults(query.toUpperCase());

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          // assuming `DetailsPage` exists
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => LexEintrag(titel: results[index]))
          );
        },
        leading: Icon(Icons.auto_stories, size: 30),
        title: Text(results[index],
          style: TextStyle(fontSize: 20)
        ),
      ),
      itemCount: results.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?LexiList.favObj:LexiList.obj.where((p) => p.toUpperCase().startsWith(query.toUpperCase())).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: (){
          showResults(context);
        },
        leading: Icon(Icons.auto_stories),
        title: RichText(text: TextSpan(
          text: suggestionList[index].substring(0, query.length),
          style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold),
          children: [
            TextSpan(
            text: suggestionList[index].substring(query.length),
            style: TextStyle(color: Colors.grey))
            ]),
          ),
      ),
      itemCount: suggestionList.length,
    );
  }
}