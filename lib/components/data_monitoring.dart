import 'package:eco_scan/components/datalistView.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class DataMonitoring extends StatefulWidget {
  const DataMonitoring({Key? key}) : super(key: key);

  @override
  State<DataMonitoring> createState() => _DataMonitoringState();
}

class _DataMonitoringState extends State<DataMonitoring> {
  String Te = '24';
  String He = '1';
  @override
  Widget build(BuildContext context) {
    DatabaseReference ref =
        FirebaseDatabase.instance.ref().child('Temperature');
    DatabaseReference red = FirebaseDatabase.instance.ref().child('He');
    ref.onValue.listen((event) {
      setState(() {
        Te = event.snapshot.value.toString();
      });
    });
    red.onValue.listen((event) {
      setState(() {
        He = event.snapshot.value.toString();
      });
    });
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        leading: Icon(
          Icons.arrow_back_ios_sharp,
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          "DATA MONITORING",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.orange[700],
      ),
      body: Column(
        children: [
          Container(
            height: 120,
            width: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Colors.orange[700],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Icon(
                          Icons.thermostat,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${Te}°C',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "TEMP",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.opacity, // Icon you want to display
                          size: 40, // Size of the icon
                          color: Colors.white, // Color of the icon
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          He + "%",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "HUMIDITY",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          MyListView(),
        ],
      ),
    );
  }
}
