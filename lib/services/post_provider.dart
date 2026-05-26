import 'package:flutter/material.dart';
import 'package:insta_clone/consts/general_consts.dart';
import 'package:insta_clone/models/post_model.dart';

class PostProvider extends ChangeNotifier {
  PostModel? globalPost;

  PostProvider({this.globalPost});

  void changeGlobalPost({required PostModel newPost}) async {
    globalPost = newPost;
    notifyListeners();
  }

  void toggleLike() {
    if (globalPost == null || globalPost!.likes == null) return;

    final likes = globalPost!.likes!;

    if (likes.contains(GeneralConsts.placeholderNickname)) {
      likes.remove(GeneralConsts.placeholderNickname);
    } else {
      likes.add(GeneralConsts.placeholderNickname);
    }

    notifyListeners();
  }
}
