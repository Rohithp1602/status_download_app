import 'dart:convert';

import 'package:structureproject/constant/assets.dart';

class HomeScreenCatagoryModel {
  String catagoryName;
  String catagoryImg;

  HomeScreenCatagoryModel(
      {required this.catagoryName, required this.catagoryImg});
}

List<HomeScreenCatagoryModel> tampCatList = [
  HomeScreenCatagoryModel(catagoryImg: AppImage.imgW1, catagoryName: 'God'),
  HomeScreenCatagoryModel(catagoryImg: AppImage.imgW2, catagoryName: 'Shay-r i'),
  HomeScreenCatagoryModel(catagoryImg: AppImage.imgW3, catagoryName: 'Love'),
  HomeScreenCatagoryModel(catagoryImg: AppImage.imgW4, catagoryName: 'Sad'),
  HomeScreenCatagoryModel(
      catagoryImg: AppImage.imgW5, catagoryName: 'Romantic'),
  HomeScreenCatagoryModel(catagoryImg: AppImage.imgW6, catagoryName: 'Party'),
];

class VideoModel {
  String imgUrl;
  String videoUrl;

  VideoModel({required this.imgUrl, required this.videoUrl});
}

List<VideoModel> tempList = [
  VideoModel(imgUrl: AppImage.imgW1, videoUrl: 'videoUrl'),
  VideoModel(imgUrl: AppImage.imgW2, videoUrl: 'videoUrl'),
  VideoModel(imgUrl: AppImage.imgW3, videoUrl: 'videoUrl'),
  VideoModel(imgUrl: AppImage.imgW4, videoUrl: 'videoUrl'),
  VideoModel(imgUrl: AppImage.imgW5, videoUrl: 'videoUrl'),
  VideoModel(imgUrl: AppImage.imgW6, videoUrl: 'videoUrl'),
];

// To parse this JSON data, do
//
//     final catagoryModel = catagoryModelFromJson(jsonString);

CatagoryModel catagoryModelFromJson(String str) =>
    CatagoryModel.fromJson(json.decode(str));

String catagoryModelToJson(CatagoryModel data) => json.encode(data.toJson());

class CatagoryModel {
  CatagoryModel({
    required this.data,
  });

  Data data;

  factory CatagoryModel.fromJson(Map<String, dynamic> json) => CatagoryModel(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.categoryList,
  });

  List<CategoryList> categoryList;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        categoryList: List<CategoryList>.from(
            json["categoryList"].map((x) => CategoryList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "categoryList": List<dynamic>.from(categoryList.map((x) => x.toJson())),
      };
}

class CategoryList {
  CategoryList({
    required this.id,
    required this.coverImage,
    required this.name,
    required this.storedItemCount,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    this.parentCategoryId,
  });

  int id;
  String coverImage;
  String name;
  StoredItemCount storedItemCount;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  int? parentCategoryId;

  factory CategoryList.fromJson(Map<String, dynamic> json) => CategoryList(
        id: json["id"],
        coverImage: json["coverImage"],
        name: json["name"],
        storedItemCount: StoredItemCount.fromJson(json["storedItemCount"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        deletedAt: json["deletedAt"],
        parentCategoryId: json["parentCategoryId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "coverImage": coverImage,
        "name": name,
        "storedItemCount": storedItemCount.toJson(),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "deletedAt": deletedAt,
        "parentCategoryId": parentCategoryId,
      };
}

class StoredItemCount {
  StoredItemCount({
    required this.video,
  });

  int video;

  factory StoredItemCount.fromJson(Map<String, dynamic> json) =>
      StoredItemCount(
        video: json["video"],
      );

  Map<String, dynamic> toJson() => {
        "video": video,
      };
}
