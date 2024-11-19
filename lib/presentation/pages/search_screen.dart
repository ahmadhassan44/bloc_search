import 'package:bloc_search/presentation/bloc/search_bloc.dart';
import 'package:bloc_search/presentation/bloc/search_events.dart';
import 'package:bloc_search/presentation/bloc/search_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Search Screen'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
            child: TextField(
              onChanged: (value) {
                context.read<SearchBloc>().add(SearchWord(value));
              },
            ),
          ),
          BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
            if (state is LoadedState) {
              return Expanded(
                child: ListView.builder(
                  itemCount: state.searchResults.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.searchResults[index]),
                    );
                  },
                ),
              );
            } else {
              return const Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          }),
        ],
      ),
    );
  }
}
