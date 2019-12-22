class Task {
  final String title;
  bool isDone = false;

  Task(this.title);

  void changeStatus(){
    isDone = !isDone;
  }
}