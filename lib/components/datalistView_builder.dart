import 'package:flutter/material.dart';

class DataListView extends StatelessWidget {
  final String title;
  final String subtitle;
  final String leading;
  final String trailing;
  DataListView({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leading,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 5),
      child: Card(
        child: ListTile(
          leading: Container(
            height: 50,
            width: 50,
            color: Colors.transparent,
            child: Image.asset(leading),
          ),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
                fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w400),
          ),
          trailing: Text(
            trailing,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Colors.orange.shade900),
          ),
        ),
      ),
    );
  }
}
