import 'package:get/get.dart';

class BookmarkController extends GetxController {
  RxList _bookmark = [].obs;
  RxList get bookmark => _bookmark;

  setBookmark(value) {
    if (_bookmark.contains(value)) {
      _bookmark.remove(value);
    } else {
      _bookmark.add(value);
    }
    update();
  }
}