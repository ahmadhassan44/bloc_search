abstract class SearchState {
  const SearchState();
}

class InitialState extends SearchState {
  const InitialState();
}

class LoadingState extends SearchState {
  const LoadingState();
}

class LoadedState extends SearchState {
  final List<String> searchResults;
  const LoadedState(this.searchResults);
}
