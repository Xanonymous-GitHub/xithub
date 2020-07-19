import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:xithub/widgets/tab_bar_and_tab_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _tabText = ['News', 'Trends', 'Profile'];

  _renderTabItems() {
    List<Widget> widgetList = new List();
    for (int i = 0; i < _tabText.length; i++) {
      widgetList.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AutoSizeText(
            _tabText[i],
            maxLines: 1,
            style: TextStyle(
              fontFamily: 'ProductSans-Medium',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      );
    }
    return widgetList;
  }

  _renderTabViews() {
    return _tabText.map((String text) {
      return Center(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Text(
            'this is the $text tab!',
            style: const TextStyle(
              fontFamily: 'ProductSans-Regular',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarAndTabView(
      tabItems: _renderTabItems(),
      tabViews: _renderTabViews(),
      backgroundColor: Colors.deepPurple,
      indicatorColor: Colors.yellow,
      title: Text(
        'XGithub',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'PaytoneOne-Regular',
          fontSize: 35,
        ),
      ),
      indicatorWeight: 4.0,
      unselectedLabelColor: Colors.white38,
    );
  }
}
