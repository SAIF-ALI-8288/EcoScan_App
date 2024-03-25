import 'dart:core';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart%20';

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
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
    'assets/images/flameicon.png',
    'assets/images/icon.png'
  ];
  List<String> tralingText = ['220 V', '10 A', '1000 ppm', '100 ppm'];
  String Te = '0';
  String He = '0';
  String Vt = '0';
  String Cr = '0';
  String C2 = '0';
  String Tha = '0';
  @override
  Widget build(BuildContext context) {
    DatabaseReference Temperature =
        FirebaseDatabase.instance.ref().child('Temperature');
    DatabaseReference Humidity = FirebaseDatabase.instance.ref().child('He');
    DatabaseReference Current =
        FirebaseDatabase.instance.ref().child('Current');
    DatabaseReference Co2 = FirebaseDatabase.instance.ref().child('Co2');
    DatabaseReference Methane =
        FirebaseDatabase.instance.ref().child('Methane');
    DatabaseReference Voltage =
        FirebaseDatabase.instance.ref().child('Voltage');
    Temperature.onValue.listen((event) {
      setState(() {
        Te = event.snapshot.value.toString();
      });
    });
    Humidity.onValue.listen((event) {
      setState(() {
        He = event.snapshot.value.toString();
      });
    });
    Current.onValue.listen((event) {
      setState(() {
        Cr = event.snapshot.value.toString();
      });
    });
    Co2.onValue.listen((event) {
      setState(() {
        C2 = event.snapshot.value.toString();
      });
    });
    Methane.onValue.listen((event) {
      setState(() {
        Tha = event.snapshot.value.toString();
      });
    });
    Voltage.onValue.listen((event) {
      setState(() {
        Vt = event.snapshot.value.toString();
      });
    });
    List<String> tralingText1 = [
      '${Vt} V',
      '${Cr} A',
      '${C2} ppm',
      '${Tha} ppm'
    ];

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
                          tralingText1[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.deepOrange[400]),
                        ) // Text for first four items
                      : int.parse(Te) < 50
                          ? Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                            )
                          : Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ))),
            ),
          );
        },
      ),
    );
  }
}
