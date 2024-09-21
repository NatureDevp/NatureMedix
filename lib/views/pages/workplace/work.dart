import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naturemedix_admin/controllers/workplace.dart';

class WorkplacePage extends StatelessWidget {
  const WorkplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    final WorkplaceController controller = Get.find<WorkplaceController>();
  return DefaultTabController(
    initialIndex: 0,
  length: 3,
  child: Scaffold(
    body: Column(
      children: [
         TabBar( 
          tabs: [
              Tab(text: 'All'),
              Tab(text: 'In progress'),
              Tab(text: 'Completed'),
          ],
          controller: controller.tabController,
          indicatorColor: Colors.green,
        ),
        Expanded(
          child: TabBarView(
        controller: controller.tabController,
        children: [
          buildPlantGrid(controller, 'All'),
          buildPlantGrid(controller, 'In progress'),
          buildPlantGrid(controller, 'Completed'),
        ],
      ),
        ),
      ],
    ),
  ),
);

  }

  Widget buildPlantGrid(WorkplaceController controller, String statusFilter) {
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
        itemCount: filteredPlants.length,
        itemBuilder: (context, index) {
          var plant = filteredPlants[index];
          return Card(
            elevation: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  plant['name'],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(plant['date']),
                const SizedBox(height: 8),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: getStatusColor(plant['status']),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    plant['status'],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }

  Color getStatusColor(String status) {
    switch (status) {
      case 'New':
        return Colors.green;
      case 'Ongoing':
        return Colors.orange;
      case 'Completed':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }
}

  
