import 'package:get/get.dart';
import 'package:naturemedix_admin/controllers/request.dart';
import 'package:naturemedix_admin/controllers/sidebar.dart';
import 'package:naturemedix_admin/controllers/table.dart';
import 'package:naturemedix_admin/controllers/workplace.dart';

class InitDependencies extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SidebarController(), fenix: true);
    Get.lazyPut(() => RequestController(), fenix: true);
    Get.lazyPut(() => TableController(), fenix: true);
    Get.lazyPut(() => WorkplaceController(), fenix: true);
  }
}
