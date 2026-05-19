import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(title, style: GoogleFonts.bilbo()),
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      floating: true,
      snap: true,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
