import 'package:flutter/material.dart';
import 'package:navigator/components/bottomnav.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Configuración"),),
      bottomNavigationBar: const BottomNav(1),
    );
  }
}