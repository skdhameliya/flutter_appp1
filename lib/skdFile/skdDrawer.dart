import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class skdDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(25),
            color: Colors.brown,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2017/02/09/11/18/alphabet-2051667_1280.png"),
                            fit: BoxFit.fill)),
                  ),
                  Text(
                    "Smit Dhameliya",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "smitdameliya10@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Point System",
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text("My Balance"),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.settings_applications),
            title: Text("Setting"),
            onTap: null,
          )
        ],
      ),
    );
  }
}
