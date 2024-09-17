import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naturemedix_admin/views/pages/home/home.dart';
import 'package:naturemedix_admin/views/pages/plant/plant.dart';
import 'package:naturemedix_admin/views/pages/request/request.dart';
import 'package:naturemedix_admin/views/pages/user/user.dart';

class SidebarController extends GetxController {
  RxInt selectedButtonIndex = 0.obs;
  Rx<Widget> selectedPage = Rx<Widget>(const HomePage());
  RxString titlePage = 'Dashboard'.obs;
  void selectButton(int index) {
    selectedButtonIndex.value = index;
    selectPage(index);
    selectTitle(index);
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

  void selectTitle(int index) {
    switch (index) {
      case 0:
        titlePage.value = 'Dashboard';
        break;
      case 1:
        titlePage.value = 'Manage Request';
        break;
      case 2:
        titlePage.value = 'Manage Plant';
        break;
      case 3:
        titlePage.value = 'Manage User';
        break;
      default:
        titlePage.value = 'Dashboard';
    }
  }
}
