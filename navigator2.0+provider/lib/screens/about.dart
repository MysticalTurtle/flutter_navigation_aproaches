import 'package:flutter/material.dart';
import 'package:navigator/components/bottomnav.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Acerca de"),),
      bottomNavigationBar: const BottomNav(2),
    );
  }
}