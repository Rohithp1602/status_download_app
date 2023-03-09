import 'package:structureproject/models/response_model.dart';

import '../../constant/requst_const.dart';
import '../api_helpers.dart';

class HomeScreenRepo {
  Future<ResponseItem> getCategoryList() async {
    ResponseItem result;
    bool status = true;
    dynamic data;
    String message = "";

    var params = {
      "itemType": "all",
    };
    var queryParameters = {RequestParam.service: MethodNames.getAllCategory};
    String queryString = Uri(queryParameters: queryParameters).query;
    String requestUrl = AppUrls.LIVE_BASE_URL + "?itemType=all";

    result = await BaseApiHelper.getRequest(requestUrl);
    status = result.status;
    data = result.data;
    message = result.message;

    return ResponseItem(data: data, message: message, status: status);
  }
}
