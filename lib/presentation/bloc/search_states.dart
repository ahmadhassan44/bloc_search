abstract class SearchState {
  const SearchState();
}

class InitialState extends SearchState {
  const InitialState();
}

class LoadedState extends SearchState {
  final List<String> searchResults;
  const LoadedState(this.searchResults);
}
