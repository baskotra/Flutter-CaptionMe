import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(accountName: Text("Prakhar Baskotra"), accountEmail: null, currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
          )),
          ListTile(
            title: Text("Order Medicine"),
            trailing: Icon(Icons.fiber_manual_record),
            dense: true,
          ),
          ListTile(
            title: Text("Report Someone"),
            trailing: Icon(Icons.person_add),
            dense: true,
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
        ],
      )
    );
  }
}