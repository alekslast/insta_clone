import 'package:flutter/material.dart';
import 'package:flutter_tanstack_query/flutter_tanstack_query.dart';
import 'package:insta_clone/services/post_provider.dart';
import 'package:insta_clone/widgets/widget_tree.dart';
import 'package:provider/provider.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
  iconTheme: const IconThemeData(color: Colors.black),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xfffef7ff),
    foregroundColor: Colors.black,
    centerTitle: true,
    titleTextStyle: TextStyle(fontSize: 33, color: Colors.black),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
  iconTheme: const IconThemeData(color: Colors.white),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 20, 18, 24),
    foregroundColor: Colors.white,
    centerTitle: true,
    titleTextStyle: TextStyle(fontSize: 33, color: Colors.white),
  ),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await QueryCache.instance.initialize();
  await NetworkPolicy.instance.initialize();
  AppLifecycleManager.instance.initialize();

  runApp(const InnstaCloneApp());
}

class InnstaCloneApp extends StatelessWidget {
  const InnstaCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    final queryClient = QueryClient(
      cache: QueryCache.instance,
      networkPolicy: NetworkPolicy.instance,

      onSuccess: () => debugPrint('Query executed successfully!'),
      onError: (error) => debugPrint('Query error: $error'),
      onRefreshError: (error) => debugPrint('Refresh error: $error'),
    );

    return QueryClientProvider(
      client: queryClient,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => PostProvider()),
        ],
        child: MaterialApp(
          title: 'Instaclone',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          home: WidgetTree(),
        ),
      ),
    );
  }
}
