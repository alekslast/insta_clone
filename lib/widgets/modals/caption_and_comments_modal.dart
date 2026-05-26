import 'package:flutter/material.dart';
import 'package:flutter_tanstack_query/flutter_tanstack_query.dart';
import 'package:insta_clone/consts/general_consts.dart';
import 'package:insta_clone/models/comment_model.dart';
import 'package:insta_clone/services/api_service.dart';
import 'package:insta_clone/services/post_provider.dart';
import 'package:insta_clone/widgets/add_comment_bar.dart';
import 'package:insta_clone/widgets/drag_handle.dart';
import 'package:insta_clone/widgets/other_comment/other_comment.dart';
import 'package:insta_clone/widgets/post/post_caption_in_caption_and_comments.dart';
import 'package:provider/provider.dart';

class CaptionAndCommentsModal extends StatelessWidget {
  const CaptionAndCommentsModal({super.key});

  @override
  Widget build(BuildContext context) {
    final post = context.watch<PostProvider>().globalPost;
    final postId = post?.id ?? 0;

    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return UseQuery<List<CommentModel>>(
      options: QueryOptions<List<CommentModel>>(
        queryKey: ['comments-for-$postId'],
        queryFn: () => ApiService.fetchComments(postId),
        staleTime: Duration(minutes: 5),
        cacheTime: Duration(minutes: 30),
        refetchOnWindowFocus: true,
        refetchOnReconnect: true,
      ),
      builder: (context, result) {
        // Loading state
        if (result.isLoading && !result.hasData) {
          return Center(child: CircularProgressIndicator());
        }

        // Error state
        if (result.isError && !result.hasData) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Error ${result.error}'),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () => result.refetch(),
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }

        // Success state with pull-to-refresh
        return RefreshIndicator(
          onRefresh: result.refetch,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 60),
                  child: ListView.separated(
                    itemCount: (result.data?.length ?? 0) + 1,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 20),
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return PostCaptionInCaptionAndComments(
                          nickname: post?.authorName ?? '',
                          caption: post?.caption ?? '',
                        );
                      }

                      final comment = result.data![index - 1];
                      return OtherComment(
                        authorNickname: comment.authorNickname,
                        commentTxt: comment.text,
                        likes: comment.likes,
                      );
                    },
                  ),
                ),

                Positioned(top: 0, child: DragHandle()),

                Positioned(
                  bottom: keyboardHeight,
                  child: AddCommentBar(
                    commentTxt: GeneralConsts.commentPlaceholder,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
