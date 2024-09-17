import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:naturemedix_admin/controllers/request.dart';
import 'package:naturemedix_admin/utils/_system.dart';

import 'package:naturemedix_admin/widgets/header.dart';

class RequestListPage extends StatelessWidget {
  const RequestListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Header(title: 'Request List'),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const TopNavigation(),
                const Gap(5),
                Divider(
                  color: SystemColor.mediumGrey,
                  thickness: 0.1,
                ),
                const Gap(10),
                const CustomFilter(),
                const Gap(20),
                const CustomDatatable(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDatatable extends StatelessWidget {
  const CustomDatatable({super.key});

  @override
  Widget build(BuildContext context) {
    final RequestController reqController = Get.find<RequestController>();

    //
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: SystemColor.lightGrey,
        width: 0.2,
      )),
      height: 510,
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: size.height,
            minWidth: size.width,
          ),
          child: Obx(
            () => Container(
              decoration: BoxDecoration(
                  color: SystemColor.neutralWHite,
                  border: Border.all(color: SystemColor.lightGrey)),
              child: DataTable(
                columns: reqController.tableColumn,
                rows: reqController.getFilteredRows(reqController.tableRow),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomFilter extends StatelessWidget {
  const CustomFilter({super.key});

  //
  @override
  Widget build(BuildContext context) {
    RequestController reqController = Get.find<RequestController>();

    //
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Search Bar with Icon
        SizedBox(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onChanged: (value) {
              reqController.searchQuery.value = value;
            },
          ),
        ),

        const Gap(10),

        // Filter Dropdown (Left side)
        SizedBox(
          width: 230,
          child: Obx(() {
            return DropdownButtonFormField<String>(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: const Icon(Icons.filter_alt),
              ),
              hint: const Text("Filter"),
              value: reqController.selectedFilter.value,
              items: reqController.columns.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                reqController.selectedFilter.value = newValue!;
              },
            );
          }),
        ),

        const Spacer(),

        // SizedBox(
        //   width: 140,
        //   child: Expanded(
        //     child: Obx(
        //       () => DropdownButtonFormField<String>(
        //         decoration: InputDecoration(
        //           contentPadding: const EdgeInsets.all(10),
        //           border: OutlineInputBorder(
        //             borderRadius: BorderRadius.circular(10),
        //           ),
        //         ),
        //         hint: const Text("Status"),
        //         value: tableController.selectedStatus.value,
        //         items: <String>['Status', 'Active', 'Inactive', 'Pending']
        //             .map((String value) {
        //           return DropdownMenuItem<String>(
        //             value: value,
        //             child: Text(value),
        //           );
        //         }).toList(),
        //         onChanged: (String? newValue) {
        //           tableController.selectedStatus.value = newValue!;
        //         },
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

class TopNavigation extends StatelessWidget {
  const TopNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton.icon(
          style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(SystemColor.mediumGrey),
          ),
          onPressed: () {
            Get.back();
          },
          label: const Text('Back'),
          icon: const Icon(Icons.arrow_back_ios_sharp),
        ),
        TextButton.icon(
          style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(SystemColor.primary),
          ),
          onPressed: () {},
          label: Text(
            'My Workplace',
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: SystemColor.primary,
            ),
          ),
        ),
      ],
    );
  }
}
