import 'package:flutter/material.dart';

import '../shared/menu_bottom.dart';
import '../shared/menu_drawer.dart';

class FastingScreen extends StatefulWidget {
  const FastingScreen({Key? key}) : super(key: key);

  @override
  _FastingScreenState createState() => _FastingScreenState();
}

class _FastingScreenState extends State<FastingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fasting')),
      bottomNavigationBar: MenuBottom(),
      drawer: MenuDrawer(),
    );
  }
}
