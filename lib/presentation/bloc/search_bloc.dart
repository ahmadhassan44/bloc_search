import 'package:bloc_search/presentation/bloc/search_events.dart';
import 'package:bloc_search/presentation/bloc/search_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  List<String> words;

  SearchBloc(this.words) : super(LoadedState(words)) {
    on<SearchWord>(_onSearchWord);
  }

  void _onSearchWord(SearchEvent event, Emitter<SearchState> state) {
    emit(LoadedState(words));
    List<String> searchResult = [];
    for (String word in words) {
      if (word
          .toLowerCase()
          .contains((event as SearchWord).serachedWord.toLowerCase())) {
        searchResult.add(word);
      }
    }
    emit(LoadedState(searchResult));
  }
}
