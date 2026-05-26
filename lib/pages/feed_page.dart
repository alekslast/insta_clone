import 'package:flutter/material.dart';
import 'package:flutter_tanstack_query/flutter_tanstack_query.dart';
import 'package:insta_clone/consts/posts_mock.dart';
import 'package:insta_clone/models/post_model.dart';
import 'package:insta_clone/services/api_service.dart';
import 'package:insta_clone/widgets/post/post_feed/post_widget.dart';
import 'package:insta_clone/widgets/post/stories_scrollbar.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UseQuery<List<PostModel>>(
        options: QueryOptions<List<PostModel>>(
          queryKey: ['posts'],
          queryFn: () => ApiService.fetchPosts(),
          staleTime: Duration(minutes: 5), // Data stays fresh for 5 minutes
          cacheTime: Duration(minutes: 30), // Cache persists for 30 minutes
          refetchOnWindowFocus: true, // Refetch when app becomes active
          refetchOnReconnect: true, // Refetch when internet reconnects
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
            child: ListView.separated(
              itemCount: (result.data?.length ?? 0) + 1,
              separatorBuilder: (context, index) => const SizedBox(height: 5),
              itemBuilder: (context, index) {
                if (index == 0) {
                  return StoriesScrollbar();
                }

                final post = result.data![index - 1];
                return PostWidget(post: post);
              },
            ),
          );
        },
      ),
    );
  }
}
