import 'package:eco_scan/components/datalistView2.dart';
import 'package:eco_scan/components/datalistView_builder.dart';
import 'package:flutter/material.dart';

class DataMonitoring extends StatelessWidget {
  const DataMonitoring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                          "50ºC",
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
                          "50%",
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
          // Container(
          //   height: 100,
          //   width: MediaQuery.of(context).size.width * 0.75,
          //   decoration: BoxDecoration(
          //       color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          //   child: Center(
          //     child: Row(
          //       //crossAxisAlignment: CrossAxisAlignment.start,
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         Container(
          //           height: 55,
          //           width: 55,
          //           child: Image.asset('assets/blue backgrnd 3.jpg'),
          //         ),
          //         Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(
          //               'MOISTURE',
          //               style: TextStyle(
          //                   color: Colors.white,
          //                   fontSize: 20,
          //                   fontWeight: FontWeight.bold),
          //             ),
          //             Text(
          //               'DETECTION',
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 16,
          //               ),
          //             ),
          //           ],
          //         ),
          //         Container(
          //           height: 50,
          //           width: 50,
          //           decoration: BoxDecoration(
          //               color: Colors.red,
          //               borderRadius: BorderRadius.circular(50)),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Container(
          //   height: 100,
          //   width: MediaQuery.of(context).size.width * 0.75,
          //   decoration: BoxDecoration(
          //       color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          //   child: Center(
          //     child: Row(
          //       //crossAxisAlignment: CrossAxisAlignment.start,
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         Container(
          //           height: 55,
          //           width: 55,
          //           child: Image.asset('assets/blue backgrnd 2.jpg'),
          //         ),
          //         Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(
          //               'VIBRATION',
          //               style: TextStyle(
          //                   color: Colors.white,
          //                   fontSize: 20,
          //                   fontWeight: FontWeight.bold),
          //             ),
          //             Text(
          //               'DETECTION',
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 16,
          //               ),
          //             ),
          //           ],
          //         ),
          //         Container(
          //           height: 50,
          //           width: 50,
          //           decoration: BoxDecoration(
          //               color: Colors.red,
          //               borderRadius: BorderRadius.circular(50)),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Container(
          //   height: 100,
          //   width: MediaQuery.of(context).size.width * 0.75,
          //   decoration: BoxDecoration(
          //       color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          //   child: Center(
          //     child: Row(
          //       //crossAxisAlignment: CrossAxisAlignment.start,
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         Container(
          //           height: 55,
          //           width: 55,
          //           child: Image.asset('assets/Blue backgrnd mount.jpg'),
          //         ),
          //         Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Text(
          //               'LANDSLIDE',
          //               style: TextStyle(
          //                   color: Colors.white,
          //                   fontSize: 20,
          //                   fontWeight: FontWeight.bold),
          //             ),
          //             Text(
          //               'DETECTION',
          //               style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 16,
          //               ),
          //             ),
          //           ],
          //         ),
          //         Container(
          //           height: 50,
          //           width: 50,
          //           decoration: BoxDecoration(
          //               color: Colors.red,
          //               borderRadius: BorderRadius.circular(50)),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          DataListView(
            title: 'VOLTAGE',
            subtitle: 'Energy',
            leading: "assets/images/voltage.jpg",
            trailing: '220 v',
          ),
          DataListView(
              title: 'CURRENT',
              subtitle: 'Energy',
              leading: 'assets/images/current icon.png',
              trailing: '10 A'),
          DataListView(
              title: 'CO2',
              subtitle: 'Air Quality',
              leading: "assets/images/CO2 icon.png",
              trailing: '1000 ppm'),
          DataListView(
              title: 'METHANE',
              subtitle: 'Air Quality',
              leading: "assets/images/ch4 icon.png",
              trailing: '100 ppm'),
          DataListView2(
            title: 'FLAME',
            subtitle: 'Air Quality',
            leading: 'assets/images/flame icon.png',
            trailing: null,
          ),
          DataListView2(
              title: 'SMOKE',
              subtitle: 'Air Quality',
              leading: "assets/images/smoke icon.png",
              trailing: null),
        ],
      ),
    );
  }
}
