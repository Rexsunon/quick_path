import 'package:flutter/material.dart';
import 'package:quick_path/src/feature/home/home.dart';

class QuickPath extends StatefulWidget {
  const QuickPath({super.key});

  @override
  State<QuickPath> createState() => _QuickPathState();
}

class _QuickPathState extends State<QuickPath> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuickPath',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
