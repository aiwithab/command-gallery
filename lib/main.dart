import 'package:aiwithab/views/dashboard-view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CommandGallery());
}

class CommandGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}


