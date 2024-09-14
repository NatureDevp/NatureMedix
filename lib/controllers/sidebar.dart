import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naturemedix_admin/views/pages/home.dart';
import 'package:naturemedix_admin/views/pages/plant.dart';
import 'package:naturemedix_admin/views/pages/request.dart';
import 'package:naturemedix_admin/views/pages/user.dart';

class SidebarController extends GetxController {
  RxInt selectedButtonIndex = 0.obs;
  Rx<Widget> selectedPage = Rx<Widget>(const HomePage());
  void selectButton(int index) {
    selectedButtonIndex.value = index;
    selectPage(index);
  }

  void selectPage(int index) {
    switch (index) {
      case 0:
        selectedPage.value = const HomePage();
        break;
      case 1:
        selectedPage.value = const RequestPage();
        break;
      case 2:
        selectedPage.value = const PlantPage();
        break;
      case 3:
        selectedPage.value = const UserPage();
        break;
      default:
        selectedPage.value = const HomePage();
    }
  }
}
