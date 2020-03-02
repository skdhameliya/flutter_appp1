import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mydream11/skdFile/skdDrawer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: SKDCLASS(),
      backgroundColor: Colors.amber,
    ),
    //home:FirstDartFile(),
  ));
}

class SKDCLASS extends StatefulWidget {
  @override
  _SKDCLASSState createState() => _SKDCLASSState();
}

class _SKDCLASSState extends State<SKDCLASS> {
  int c_index = 0;

//  final tabs = [
//    Center(
//      child: Text(
//          "All Contests"
//      ),
//    ),
//    Center(
//      child: Text(
//          "My Contests"
//      ),
//    ),
//    Center(
//      child: Text(
//          "My Profile"
//      ),
//    )
//  ];
  final List<Widget> tabs = [
    Center(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text("IND vs NZ (TEST)"),
            subtitle: Text("4:00 PM"),
            trailing: Icon(Icons.wb_sunny),
          ),
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text("WI vs SL (ODI)"),
            subtitle: Text("3:30 PM"),
            trailing: Icon(Icons.wb_sunny),
          ),
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text("SA vs AUS (T20)"),
            subtitle: Text("9:30 PM"),
            trailing: Icon(Icons.wb_sunny),
          ),
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text("IND vs NZ (TEST)"),
            subtitle: Text("4:00 PM"),
            trailing: Icon(Icons.wb_sunny),
          ),
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text("SA vs AUS (T20)"),
            subtitle: Text("9:30 PM"),
            trailing: Icon(Icons.wb_sunny),
          ),
//          Container(
//            height: 100,
//            color: Colors.red,
//          ),
//          Container(
//            height: 100,
//            color: Colors.blue,
//          ),
        ],
      ),
    ),
    Center(
      child: Text("My Contest"),
    ),
    Center(
      child: Text("My Profile"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    //return Container();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          "myDream11",
          textAlign: TextAlign.center,
        ),
      ),
      drawer: skdDrawer(),
//      body: Container(),

      body: tabs[c_index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: c_index,
        type: BottomNavigationBarType.fixed,
//        iconSize: ,
//      selectedFontSize: ,
//      unselectedFontSize: ,
        backgroundColor: Colors.amber,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            title: Text("All Contests"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            title: Text("My Contests"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("My Profile"),
          ),
        ],
        onTap: (index) {
          setState(() {
            c_index = index;
          });
        },
      ),
    );
  }
}
