import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:naturemedix_admin/utils/_system.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: SystemColor.secondary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  SystemTitle.title1,
                  style: const TextStyle(color: Colors.white),
                ),
                const Gap(20),
                ElevatedButton(onPressed: () {}, child: const Text('Home'))
              ],
            ),
          ),
        ),
        Expanded(
          flex: 9,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: SystemColor.neutralWHite,
          ),
        ),
      ],
    ));
  }
}
