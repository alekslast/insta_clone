import 'package:flutter/material.dart';
import 'package:insta_clone/data/notifiers.dart';
import 'package:insta_clone/pages/direct_page.dart';
import 'package:insta_clone/pages/feed_page.dart';
import 'package:insta_clone/pages/profile_page.dart';
import 'package:insta_clone/pages/search_page.dart';
import 'package:insta_clone/pages/suggested_page.dart';
import 'package:insta_clone/widgets/custom_appbar.dart';
import 'package:insta_clone/widgets/navbar.dart';

List<Widget> _pages = [
  FeedPage(),
  SuggestedPage(),
  DirectPage(),
  SearchPage(),
  ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Instaclone'),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (_, selectedPageIndex, _) =>
            _pages.elementAt(selectedPageIndex),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
