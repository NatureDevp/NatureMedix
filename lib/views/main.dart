import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:naturemedix_admin/utils/_system.dart';
import 'package:naturemedix_admin/widgets/header.dart';
import 'package:naturemedix_admin/widgets/sidebar.dart';

import '../controllers/sidebar.dart';

class Mainpage extends StatelessWidget {
  Mainpage({super.key});
  SidebarController controller =
      Get.find<SidebarController>(); // Retrieve the controller
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Sidebar(
              content: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
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
                Divider(
                  color: SystemColor.mediumGrey,
                  thickness: 0.3,
                ),
                const Gap(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Main menu',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: SystemColor.mediumGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    const Gap(8),
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
                  ],
                ),
                const Gap(34),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Manage',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: SystemColor.mediumGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    const Gap(8),
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
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Obx(
              () => Container(
                height: double.maxFinite,
                width: double.maxFinite,
                color: SystemColor.neutralWHite,
                child: Column(
                  children: [
                    Header(
                      title: controller.titlePage.value,
                    ),
                    controller.selectedPage.value,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
