class tasks {
  final String name;
  bool isDone;

  tasks({required this.name, this.isDone = false});
  void doneChange() {
    isDone = !isDone;
  }
}
