import 'package:get/get.dart';
import 'listmyhealthcarehos_one_item_model.dart';

class HospitalProfileModel {
  RxList<ListmyhealthcarehosOneItemModel> listmyhealthcarehosOneItemList =
      RxList.generate(2, (index) => ListmyhealthcarehosOneItemModel());
}
