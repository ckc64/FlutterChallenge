import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/listitem.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Challenge',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  //BOTTOM NAVIGATION ITEM
  List<Widget> widgetOptions = <Widget>[
    Text(
      'Home',
    ),
    ListItem(),
    Text(
      'Chat',
    ),
    Text(
      'Search',
    ),
    Text(
      'My App',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/img/logo-small.png',
                  fit: BoxFit.contain, height: 32),
            ],
          ),
          bottom: TabBar(
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.red,
                ),
                insets: EdgeInsets.only(left: 10, right: 10, bottom: 5)),
            isScrollable: true,
            labelPadding: EdgeInsets.only(left: 15, right: 15),
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.directions_bike),
                text: "Trails",
              ),
              Tab(
                icon: Icon(Icons.info_outline),
                text: "Notices",
              ),
            ],
          ),
        ),
        //TAB BAR ITEMS
        body: TabBarView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Center(
                child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  color: Colors.white),
              margin: EdgeInsets.all(10),
              child: widgetOptions.elementAt(selectedIndex),
            )),
            Center(
                child: Text("Notices", style: TextStyle(color: Colors.white))),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text("Explore"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text("Chat"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("My App"),
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.red,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
