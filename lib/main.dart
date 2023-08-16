import 'package:flutter/material.dart';
import 'package:untitled/provider/count_provider.dart';
import 'package:provider/provider.dart';

import 'list.dart';

void main() {

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<CountProvider>(create: (_) => CountProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ListWidget(),
    );
  }
}


