abstract class SearchEvent {
  const SearchEvent();
}

class SearchWord extends SearchEvent {
  final String serachedWord;
  const SearchWord(this.serachedWord);
}
