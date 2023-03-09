import 'package:get/get.dart';
import 'package:structureproject/api/repo/home_screen_repo.dart';
import 'package:structureproject/models/home_screen_status_model.dart';

import '../../../constant/app_strings.dart';
import '../../../models/response_model.dart';
import '../../../utils/extentions.dart';

class HomeScreenController extends GetxController {
  RxBool isLoading = false.obs;

  List<CategoryList> getAllCategory = [];

  getGroupList() async {
    isLoading.value = true;
    getAllCategory = [];
    ResponseItem result =
        ResponseItem(data: null, message: errorText, status: false);
    result = await HomeScreenRepo().getCategoryList();
    isLoading.value = false;
    try {
      if (result.status) {
        if (result.data != null) {
          print("==${result.data}");
          var mainData = CatagoryModel.fromJson(result.toJson());
          var data = Data.fromJson(mainData.data.toJson());
          getAllCategory.addAll(data.categoryList);
          print("==${getAllCategory}");
        } else {
          showAppSnackBar(result.message);
        }
      } else {
        showAppSnackBar(result.message);
      }
    } catch (e) {
      showAppSnackBar(errorText);
    }
    isLoading.value = false;
  }
}
