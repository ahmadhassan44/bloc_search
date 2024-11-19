import 'package:bloc_search/presentation/bloc/search_events.dart';
import 'package:bloc_search/presentation/bloc/search_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  List<String> words = [
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
  SearchBloc() : super(const InitialState()) {
    on<SearchWord>(_onSearchWord);
  }
  void _onSearchWord(SearchEvent event, Emitter<SearchState> state) {
    emit(LoadedState(words));
    List<String> searchResult = [];
    for (String word in words) {
      if (word.contains((event as SearchWord).serachedWord)) {
        searchResult.add(word);
      }
    }
    emit(LoadedState(searchResult));
  }
}
