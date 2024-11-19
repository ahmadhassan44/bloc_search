import 'package:bloc_search/presentation/pages/search_screen.dart';
import 'package:flutter/material.dart';

class BlocSearch extends StatelessWidget {
  const BlocSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Bloc Search",
      home: SearchScreen(),
    );
  }
}

void main() {
  runApp(const BlocSearch());
}
