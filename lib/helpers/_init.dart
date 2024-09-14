import 'package:get/get.dart';
import 'package:naturemedix_admin/controllers/sidebar.dart';

class InitDependencies extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SidebarController());
  }
}
