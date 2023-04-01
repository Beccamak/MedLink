import 'package:get/get.dart';
import 'hospitals_item_model.dart';

class HospitalsModel {
  RxList<HospitalsItemModel> hospitalsItemList =
      RxList.generate(5, (index) => HospitalsItemModel());
}
