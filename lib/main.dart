import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:flutter/rendering.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(Netflix());
}

class Netflix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primaryColor: Colors.black),
      home: NetflixTabBar(),
    );
  }
}

class NetflixTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Theme(
        data: ThemeData(brightness: Brightness.dark),
        child: Scaffold(
            bottomNavigationBar: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.search),
                  text: "Search",
                ),
                Tab(icon: Icon(Icons.file_download), text: "Downloads"),
                Tab(
                  icon: Icon(Icons.list),
                  text: "More",
                )
              ],
              labelColor: Colors.white,
              unselectedLabelColor: Color(0xff999999),
              indicatorColor: Colors.transparent,
            ),
            body: TabBarView(
              children: <Widget>[
                HomePage(),
                Icon(Icons.search),
                Icon(Icons.file_download),
                Icon(Icons.list)
              ],
            )),
      ),
    );
  }
}
