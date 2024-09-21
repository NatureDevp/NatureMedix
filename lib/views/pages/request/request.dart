import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naturemedix_admin/routes/_pages.dart';
import 'package:naturemedix_admin/utils/_system.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SystemCard.cardStyle3(
            imagePaht: 'assets/images/image3.png',
            title: 'List of Request',
            subtitle:
                'We can Search and Accept a new request based in your perspective.',
            isNew: true,
            ontap: () {
              Get.toNamed(SystemPage.getRequestListpage);
            },
          ),
          SystemCard.cardStyle3(
            imagePaht: 'assets/images/image4.png',
            title: 'My Workplace',
            subtitle:
                'We can easily Track, Find and Create new and finish request.',
            isNew: true,
            ontap: () {
              Get.toNamed(SystemPage.getWorkplacepage);
            },
          ),
        ],
      ),
    );
  }
}
