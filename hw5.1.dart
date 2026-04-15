class Course {
  int id;
  String title;
  String teacherName;
  int maxStudents;

  static int totalCourses = 0;

  Course(this.id, this.title, this.teacherName, this.maxStudents) {
    totalCourses++;
  }

  Course.defaultCourse()
      : id = 1,
        title = "Основы программирования",
        teacherName = "Иван Романов",
        maxStudents = 30 {
    totalCourses++;
  }

  void showCourseInfo() {
    print("Курс: $title (Преподаватель: $teacherName, мест: $maxStudents)");
  }
}