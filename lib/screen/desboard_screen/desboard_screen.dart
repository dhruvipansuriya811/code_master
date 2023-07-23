import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class DesBoardScreen extends StatelessWidget {

  const DesBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(child: Icon(EvaIcons.camera)),
          ],
        ),
      ),
    );
  }
}
