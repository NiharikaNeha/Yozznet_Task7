import 'package:flutter/material.dart';
import './events.dart';
import './p2p.dart';

class Appbar extends StatefulWidget {
  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.0),
      child: SizedBox(
        height: 490.0,
        width: 380.0,
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(60.0),
              child: AppBar(
                backgroundColor: Colors.blueGrey[50],
                bottom: TabBar(
                  controller: _tabController,
                  indicatorWeight: 6.0,
                  unselectedLabelColor: Colors.black,
                  tabs: <Widget>[
                    Tab(
                        child: Column(
                          children: <Widget>[
                            Text(
                              '50',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15.0
                              ),
                            ),
                            Text(
                              'P2P',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        )
                    ),
                    Tab(
                        child: Column(
                          children: <Widget>[
                            Text(
                              '100',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              'Events',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.black
                              ),
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              ),
            ),
            body: TabBarView(
              controller: _tabController,
              children: <Widget>[
                //FlutterLogo(),
                P2P(),
                Events()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
