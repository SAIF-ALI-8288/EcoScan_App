import 'package:eco_scan/components/data_monitoring.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DataMonitoring(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.orange[700],
          elevation: 15, // Shadow elevation
          shadowColor: Colors.black, // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0), // Border radius
            side: BorderSide(color: Colors.white), // Border color
          ),
        ),
        child: Text(
          'LOGIN',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
