abstract class SearchEvent {
  const SearchEvent();
}

abstract class SearchWord extends SearchEvent {
  final String serachedWord;
  const SearchWord(this.serachedWord);
}
