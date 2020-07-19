//import 'package:flutter/material.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';
//
//class PullLoadWidget extends StatefulWidget {
//  @override
//  _PullLoadWidgetState createState() => _PullLoadWidgetState();
//}
//
//class _PullLoadWidgetState extends State<PullLoadWidget> {
//  final ScrollController _scrollController = new ScrollController();
//
//  @override
//  void initState() {
//    super.initState();
//    _scrollController.addListener(() {
//      if (_scrollController.position.pixels ==
//          _scrollController.position.maxScrollExtent) {
//        if (this.onLoadMore != null && this.control.needLoadMore) {
//          this.onLoadMore();
//        }
//      }
//    });
//  }
//
//  _getListCount() {
//    if (control.needHeader) {
//      return (control.dataList.length > 0)
//          ? control.dataList.length + 2
//          : control.dataList.length + 1;
//    } else {
//      if (control.dataList.length == 0) {
//        return 1;
//      }
//    }
//    return (control.dataList.length > 0)
//        ? control.dataList.length + 1
//        : control.dataList.length;
//  }
//
//  _getItem(int index) {
//    if (!control.needHead &&
//        index == control.dataList.length &&
//        control.dataList.length != 0) {
//      return _buildProgressIndicator();
//    } else if (control.needHead &&
//        index == _getListCount() - 1 &&
//        control.dataList.length != 0) {
//      return _buildProgressIndicator();
//    } else if (!control.needHead && control.dataList == 0) {
//      return _buildEmpty();
//    } else {
//      return _itemBuilder(context, index);
//    }
//  }
//
//  Widget _buildEmpty() {}
//
//  Widget _buildProgressIndicator() {
//    Widget bottomWidget = (control.needLoadMore)
//        ? Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//            SpinKitRotatingCircle(color: Color(0xFF24292E)),
//            SizedBox(
//              width: 5.0,
//            ),
//            Text(
//              "Loading···",
//              style: TextStyle(
//                color: Color(0xFF121917),
//                fontSize: 14.0,
//                fontWeight: FontWeight.bold,
//              ),
//            )
//          ])
//        : Container();
//    return Padding(
//      padding: const EdgeInsets.all(20.0),
//      child: Center(
//        child: bottomWidget,
//      ),
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return RefreshIndicator(
//      key: refreshKey,
//      onRefresh: onRefresh,
//      child: ListView.builder(
//        physics: const AlwaysScrollableScrollPhysics(),
//        itemBuilder: (context, index) => _getItem(index),
//        itemCount: _getListCount(),
//        controller: _scrollController,
//      ),
//    );
//  }
//}
