import 'package:flutter/material.dart';

class MyDrawerCustome extends StatelessWidget {
  const MyDrawerCustome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('HOME'),
          ),
          ListTile(
            title: Text('INFO'),
            leading: Icon(Icons.info),
          ),
          ListTile(
            title: Text('PROFILE'),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text('HELP'),
            leading: Icon(Icons.help),
          ),
          ListTile(
            title: Text('SETTINGS'),
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text('MORE'),
            leading: Icon(Icons.more),
          ),
          ListTile(
            title: Text('EXIT'),
            leading: Icon(Icons.home),
          ),
          Divider(),
        ],
      ),
    );
  }
}
