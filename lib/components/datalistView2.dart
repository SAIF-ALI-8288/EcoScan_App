import 'package:flutter/material.dart';

class DataListView2 extends StatelessWidget {
  final String title;
  final String subtitle;
  final String leading;

  DataListView2({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leading,
    required trailing,
    //required this.trailing,
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
          trailing: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
