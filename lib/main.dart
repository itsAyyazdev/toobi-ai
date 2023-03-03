import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toobiai/providers/anime_provider.dart';
import 'package:toobiai/providers/books_provider.dart';
import 'package:toobiai/providers/movies_provider.dart';
import 'package:toobiai/providers/shopping_provider.dart';
import 'package:toobiai/ui/view/home.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => MoviesProvider()),
    ChangeNotifierProvider(create: (_) => AnimeProvider()),
    ChangeNotifierProvider(create: (_) => BooksProvider()),
    ChangeNotifierProvider(create: (_) => ShoppingProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toobi AI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(
        key: key,
      ),
    );
  }
}
