import 'package:flutter/material.dart';
import 'package:spotify/navigations/tabbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToTabbar();
  }

  Future<void> _navigateToTabbar() async {
    await Future.delayed(Duration(seconds: 2)); // Adjust the delay as needed
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Tabbar()), // Navigate to Tabbar
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('assets/black.png'), // Replace with your image
      ),
    );
  }
}
