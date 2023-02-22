import 'package:get/get.dart';

class updatedPage extends  GetxController{
  var iscompleted=false.obs;
  void changeststue(){
    iscompleted.value=!iscompleted.value;
  }
}