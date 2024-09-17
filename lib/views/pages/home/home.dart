import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:naturemedix_admin/utils/_system.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: size.height,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const DataChart(),
                const Gap(30),
                Divider(
                  thickness: 0.1,
                  color: SystemColor.mediumGrey,
                ),
                const Gap(30),
                const MyDataTable(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DataChart extends StatelessWidget {
  const DataChart({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SystemCard.cardStyle1(
              cardTitle: 'Plants',
              cardSubtitle: 'Accepted Request',
              titleBackground: SystemColor.primaryLighter,
              imagePath: 'assets/images/image1.png',
              barSize: 300,
              barColor: SystemColor.primary,
              currentBarCount: 23,
              totalBarCount: 42,
              overallDataCount: 2400,
              cardBackgroud: SystemColor.neutralWHite,
              borderColor: SystemColor.primary,
              onTap: () {},
            ),
            const Gap(12),
            SystemCard.cardStyle1(
              cardTitle: 'Users',
              cardSubtitle: 'Active Users',
              titleBackground: SystemColor.secondaryLighter,
              imagePath: 'assets/images/image2.png',
              barSize: 300,
              barColor: SystemColor.secondary,
              currentBarCount: 1297,
              totalBarCount: 1300,
              overallDataCount: 1300,
              cardBackgroud: SystemColor.neutralWHite,
              borderColor: SystemColor.secondary,
              displayTotalBarCount: false,
              onTap: () {},
            )
          ],
        ),
        SystemCard.cardStyle2(
          cardTitle: 'New Request',
          titleBackground: SystemColor.lightGrey,
          cardBackgroud: SystemColor.neutralWHite,
          borderColor: SystemColor.mediumGrey,
          onSeeAll: () {},
        ),
      ],
    );
  }
}

class MyDataTable extends StatelessWidget {
  const MyDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 300,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'ID',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            DataColumn(
              label: Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            DataColumn(
              label: Text(
                'Age',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('1')),
                DataCell(Text('Alice')),
                DataCell(Text('22')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('2')),
                DataCell(Text('Bob')),
                DataCell(Text('25')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3')),
                DataCell(Text('Charlie')),
                DataCell(Text('30')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
