import 'package:ecommerce/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawerCustome extends StatelessWidget {
  const MyDrawerCustome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const ListTile(
            leading: Icon(Icons.home),
            title: Text('HOME'),
          ),
          const ListTile(
            title: Text('INFO'),
            leading: Icon(Icons.info),
          ),
          const ListTile(
            title: Text('PROFILE'),
            leading: Icon(Icons.person),
          ),
          const ListTile(
            title: Text('HELP'),
            leading: Icon(Icons.help),
          ),
          const ListTile(
            title: Text('SETTINGS'),
            leading: Icon(Icons.settings),
          ),
          const ListTile(
            title: Text('MORE'),
            leading: Icon(Icons.more),
          ),
          ListTile(
            onTap: () {
              Get.offAll(() => const LoginView());
            },
            title: const Text('EXIT'),
            leading: const Icon(Icons.logout_outlined),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
