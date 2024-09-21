import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:naturemedix_admin/controllers/workplace.dart';
import 'package:naturemedix_admin/routes/_pages.dart';
import 'package:naturemedix_admin/utils/_system.dart';
import 'package:naturemedix_admin/views/pages/request/req_list.dart';
import 'package:naturemedix_admin/widgets/card4.dart';
import 'package:naturemedix_admin/widgets/createcard.dart';
import 'package:naturemedix_admin/widgets/header.dart';
import 'package:naturemedix_admin/widgets/navigation.dart';

class WorkplacePage extends StatelessWidget {
  const WorkplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    final WorkplaceController controller = Get.find<WorkplaceController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Header(title: 'Workplace'),
        const Gap(20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: TopNavigation(
            label: 'Workplace',
            back: () {
              Get.back();
            },
            goTo: () {
              Get.toNamed(SystemPage.getRequestListpage);
            },
          ),
        ),
        const Gap(5),
        Divider(
          color: SystemColor.mediumGrey,
          thickness: 0.1,
        ),
        const Gap(5),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: DefaultTabController(
              initialIndex: 0,
              length: 3,
              child: Scaffold(
                body: Column(
                  children: [
                    TabBar(
                      tabs: const [
                        Tab(text: 'All'),
                        Tab(text: 'In progress'),
                        Tab(text: 'Completed'),
                      ],
                      controller: controller.tabController,
                      indicatorColor: SystemColor.primary,
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      labelColor: SystemColor.primary,
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelColor: SystemColor.mediumGrey,
                      unselectedLabelStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: controller.tabController,
                        children: [
                          TabBody(
                            controller: controller,
                            statusFilter: 'All',
                          ),
                          TabBody(
                            controller: controller,
                            statusFilter: 'Ongoing',
                          ),
                          TabBody(
                            controller: controller,
                            statusFilter: 'Completed',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TabBody extends StatelessWidget {
  TabBody({super.key, required this.controller, required this.statusFilter});
  String statusFilter;
  WorkplaceController controller;
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var filteredPlants = controller.plantRequests
          .where((plant) =>
              statusFilter == 'All' || plant['status'] == statusFilter)
          .toList();

      return GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          crossAxisSpacing: 30,
          mainAxisSpacing: 30,
        ),
        itemCount: filteredPlants.length + 1,
        itemBuilder: (context, index) {
          if (index - 1 == -1) {
            return CreateNewCard(ontap: () {});
          }
          var plant = filteredPlants[index - 1];
          return Card4(
            plantname: plant['name'],
            status: plant['status'],
            date: plant['date'],
            plantimage: 'assets/plantImages/plant1.png',
            ontap: () {},
          );
        },
      );
    });
  }
}
