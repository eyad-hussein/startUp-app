import 'package:app/services/text_search_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class TextSearchController extends GetxController{
  final TextSearchService textSearchService = Get.put(TextSearchService());

  final TextEditingController descriptionController = TextEditingController();

  @override
  void onClose(){
    descriptionController.dispose();
    super.onClose();
  }

  Future<void>? RequestSimilarImages(){
      textSearchService.requestSimilarImages(descriptionController.text);
  }

}