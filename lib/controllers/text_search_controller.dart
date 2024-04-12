import 'dart:developer';

import 'package:app/services/text_search_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TextSearchController extends GetxController {
  final TextSearchService textSearchService = Get.put(TextSearchService());
  final TextEditingController descriptionController = TextEditingController();

  final RxList<String> urls = <String>[].obs;
  final RxBool urlsAvailable = false.obs;

  @override
  void onClose() {
    descriptionController.dispose();
    super.onClose();
  }

  Future<void>? requestSimilarImages() async {
    log("Requesting similar images");
    try {
      urls.value = await textSearchService
          .requestSimilarImages(descriptionController.text);
      urlsAvailable.value = true;
      log("Similar images requested");
    } catch (e) {
      log("Error requesting similar images: $e");
    }
  }
}
