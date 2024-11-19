import 'package:bloc_search/presentation/bloc/search_bloc.dart';
import 'package:bloc_search/presentation/pages/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocSearch extends StatelessWidget {
  BlocSearch({super.key});
  final List<String> words = [
    'Flutter',
    'Dart',
    'Bloc',
    'Cubit',
    'Riverpod',
    'Provider',
    'StateNotifier',
    'GetX',
    'MobX',
    'RxDart',
    'RxVMS',
    'RxNotifier',
    'RxCommand',
    'RxStore',
    'RxRedux',
    'RxBloc',
    'RxGet',
    'RxProvider',
    'RxRiverpod',
    'RxStateNotifier',
    'RxMobX',
    'RxVMS',
    'RxNotifier',
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => SearchBloc(words),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Bloc Search",
        home: SearchScreen(),
      ),
    );
  }
}

void main() {
  runApp(BlocSearch());
}
