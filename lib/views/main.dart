import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:naturemedix_admin/utils/_system.dart';
import 'package:naturemedix_admin/widgets/button.dart';
import 'package:naturemedix_admin/widgets/sidebar.dart';

import '../controllers/sidebar.dart';

class Mainpage extends StatelessWidget {
  Mainpage({super.key});
  SidebarController controller =
      Get.find<SidebarController>(); // Retrieve the controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Sidebar(
              content: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Nature ',
                        style: TextStyle(
                          color: SystemColor.neutralWHite,
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Medix',
                        style: TextStyle(
                          color: SystemColor.primary,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                  ),
                ),
                const Gap(20),
                const Divider(),
                const Gap(20),
                Obx(() => SidebarButton.buttonStyle1(
                      onPressed: () => controller.selectButton(0),
                      isSelected: controller.selectedButtonIndex.value == 0,
                      label: 'Home',
                      icon: Icons.dashboard,
                    )),
                Obx(() => SidebarButton.buttonStyle1(
                      onPressed: () => controller.selectButton(1),
                      isSelected: controller.selectedButtonIndex.value == 1,
                      label: 'Request',
                      icon: Icons.add,
                    )),
                Obx(() => SidebarButton.buttonStyle1(
                      onPressed: () => controller.selectButton(2),
                      isSelected: controller.selectedButtonIndex.value == 2,
                      label: 'Plant',
                      icon: Icons.energy_savings_leaf_sharp,
                    )),
                Obx(() => SidebarButton.buttonStyle1(
                      onPressed: () => controller.selectButton(3),
                      isSelected: controller.selectedButtonIndex.value == 3,
                      label: 'Users',
                      icon: Icons.people,
                    )),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Obx(() => Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: SystemColor.neutralWHite,
                  child: controller
                      .selectedPage.value, // Use the reactive value here
                )),
          ),
        ],
      ),
    );
  }
}
