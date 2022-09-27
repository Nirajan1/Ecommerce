import 'package:flutter/material.dart';

class CustomeListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  const CustomeListTile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  Text(title),
      subtitle:  Text(subtitle),
      trailing: TextButton(onPressed: () {}, child: const Text("view more")),
    );
  }
}
