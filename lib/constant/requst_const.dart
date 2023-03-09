class AppUrls {
  static const String LIVE_BASE_URL = "http://35.154.109.119:8080/api/category";

  static const String imageUrl =
      "https://thehivepoll.com/hive/app_images/category_images/";
}

class MethodNames {
  // For get home screen all category list
  static const getAllCategory = "itemType=all";
}

class RequestParam {
  static const service = "Service"; // -> pass method name
  static const showError = "show_error"; // -> bool in String
}

class RequestHeaderKey {
  static const contentType = "Content-Type";
  static const UserAgent = "User-Agent";
  static const appSecret = "App-Secret";
  static const appTrackVersion = "App-Track-Version";
  static const appDeviceType = "App-Device-Type";
  static const appStoreVersion = "App-Store-Version";
  static const appDeviceModel = "App-Device-Model";
  static const appOsVersion = "App-Os-Version";
  static const appStoreBuildNumber = "App-Store-Build-Number";
  static const authToken = "Auth-Token";
}

Map<String, String> requestHeader(bool passAuthToken) {
  return {
    RequestHeaderKey.contentType: "",
    RequestHeaderKey.appSecret: "",
    RequestHeaderKey.UserAgent: "",
    RequestHeaderKey.appTrackVersion: "",
    RequestHeaderKey.appDeviceType: "",
  };
}
