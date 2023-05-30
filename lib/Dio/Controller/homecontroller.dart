import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../Modal/postmodal.dart';
import 'package:assignment3/Dio/Service/dioservice.dart';
import 'package:dio/dio.dart';


class HomeController extends GetxController {
  RxList<PostModal> posts = RxList();
  RxBool isLoading = true.obs;
  RxBool isInternetConnected = true.obs;
  RxBool isListScrollToDown = false.obs;

  var url = "https://jsonplaceholder.typicode.com/posts";
  var itemController = ItemScrollController();

  isInternetConnect() async {
    isInternetConnected.value = await InternetConnectionChecker().hasConnection;
  }

  getPosts() async {
    isInternetConnect();
    isLoading.value = true;

    var response = await Dioservice().getData(url);
    if (response.statusCode == 200) {
      response.data.forEach((element) {
        posts.add(PostModal.fromJson(element));
      });
      isLoading.value = false;
    }
  }
  scrollListDownWard() {
    itemController.scrollTo(
      index: posts.length - 5,
      duration: const Duration(seconds: 2),
      curve: Curves.bounceOut,
    );
    isListScrollToDown.value = true;
  }

  scrollListUpWard() {
    itemController.scrollTo(
        index: 0,
        duration: const Duration(seconds: 2),
        curve: Curves.easeInCirc);
    isListScrollToDown.value = false;
  }
  @override
  void onInit() {
    getPosts();
    isInternetConnect();
    super.onInit();
  }
}