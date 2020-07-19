import 'package:flutter/material.dart';

class TabBarAndTabView extends StatefulWidget {
  final List<Widget> tabItems, tabViews;
  final Color backgroundColor, indicatorColor, unselectedLabelColor;
  final Text title;
  final double indicatorWeight;
  const TabBarAndTabView(
      {Key key,
      @required this.tabItems,
      @required this.tabViews,
      @required this.title,
      this.backgroundColor,
      this.indicatorColor,
      this.indicatorWeight,
      this.unselectedLabelColor})
      : super(key: key);

  @override
  _TabBarAndTabViewState createState() => _TabBarAndTabViewState();
}

class _TabBarAndTabViewState extends State<TabBarAndTabView>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(length: widget.tabItems.length, vsync: this);
    _pageController = new PageController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _handleTabChange(index) {
    _pageController.jumpTo(MediaQuery.of(context).size.width * index);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.backgroundColor ?? Colors.deepPurple,
        title: widget.title,
        centerTitle: true,
        bottom: TabBar(
          onTap: _handleTabChange,
          controller: _tabController,
          tabs: widget.tabItems,
          indicatorColor: widget.indicatorColor ?? Colors.yellow,
          indicatorWeight: widget.indicatorWeight ?? 4.0,
          unselectedLabelColor: widget.unselectedLabelColor ?? Colors.white38,
          isScrollable: true,
        ),
      ),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          children: widget.tabViews,
          onPageChanged: (index) {
            _tabController.animateTo(index);
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
