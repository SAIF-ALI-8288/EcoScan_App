import 'dart:core';

import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  List<String> titleArry = [
    'VOLTAGE',
    'CURRENT',
    'CO2',
    'METHANE',
    'FLAME',
    'SMOKE'
  ];

  List<String> subtitleArry = [
    'Energy',
    'Energy',
    'Air Quality',
    'Air Quality',
    'Air Quality',
    "Air Quality"
  ];
  List ImagePath = [
    'assets/images/voltage.png',
    'assets/images/current.png',
    'assets/images/co2.png',
    'assets/images/methane.png',
    'assets/images/flame.png',
    'assets/images/smoke icon.png'
  ];
  List tralingText = ['220 v', '10 A', '1000 ppm', '100 ppm'];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, bottom: 5),
            child: Card(
              child: ListTile(
                leading: Image.asset(
                  ImagePath[index], // Different images for leading
                  width: 50,
                  height: 50,
                ),
                title: Text(
                  titleArry[index],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                subtitle: Text(
                  subtitleArry[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                ),
                trailing: index < 4
                    ? Text(
                        tralingText[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.deepOrange[400]),
                      ) // Text for first four items
                    : Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}
