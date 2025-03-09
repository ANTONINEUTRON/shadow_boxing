
enum Duration {
  short(15, 'Short'),
  medium(30, 'Medium'),
  long(45, 'Long'),
  extended(60, 'Extended');

  final int seconds;
  final String title;

  const Duration(this.seconds, this.title);
}