import 'package:get/get.dart';

class UpdatedPage extends GetxController {
  var iscompleted = false.obs;
  void changeststue() {
    iscompleted.value = !iscompleted.value;
  }
}
