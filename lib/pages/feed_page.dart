import 'package:flutter/material.dart';
import 'package:insta_clone/consts/posts_mock.dart';
import 'package:insta_clone/widgets/post/post_feed/post_widget.dart';
import 'package:insta_clone/widgets/post/stories_scrollbar.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: posts.length + 1,
      separatorBuilder: (context, index) => const SizedBox(height: 5),
      itemBuilder: (context, index) {
        if (index == 0) {
          return StoriesScrollbar();
        }

        final post = posts[index - 1];
        return PostWidget(post: post);
      },
    );
  }
}
