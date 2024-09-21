import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/_system.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key, required this.content});

  final List<Widget> content;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      height: double.infinity,
      width: double.infinity,
      color: SystemColor.dimBlue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: content,
      ),
    );
  }
}
