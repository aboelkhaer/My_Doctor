import 'package:get/get.dart';

import '../../controller/posts_controller.dart';




class PostsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostsController>(() => PostsController());
  }
}