import 'package:structureproject/constant/assets.dart';

class HomeScreenCatagoryModel {
  String catagoryName;
  String catagoryImg;

  HomeScreenCatagoryModel(
      {required this.catagoryName, required this.catagoryImg});
}

List<HomeScreenCatagoryModel> tampCatList = [
  HomeScreenCatagoryModel(catagoryImg: AppImage.imgW1, catagoryName: 'God'),
  HomeScreenCatagoryModel(catagoryImg: AppImage.imgW2, catagoryName: 'Shay-ri'),
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
