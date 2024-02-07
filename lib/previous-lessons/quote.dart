class Quote {
  late String author;
  late String text;

  Quote({required String text, required String author}) {
    this.author = author;
    this.text = text;
  }
}

Quote myquote = Quote(author: 'Lebang', text: 'Stay hungry, Stay foolish');
