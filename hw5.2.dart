import 'hw5.dart';
import 'hw5.1.dart';
class University {
  List<Student> students = [];
  List<Course> courses = [];

  void addStudent(Student student) => students.add(student);
  void addCourse(Course course) => courses.add(course);

  Student? findStudentById(int id) {
    try {
      return students.firstWhere((s) => s.id == id);
    } catch (e) {
      return null;
    }
  }

  void showAllStudents() {
    print("--- список студентов ---");
    for (var s in students) {
      s.showInfo();
    }
  }

  void showAllCourses() {
    print("--- Доступные курсы ---");
    for (var c in courses) {
      c.showCourseInfo();
    }
  }

  static void showGlobalStats() {
    print("==============================");
    print("ОБЩАЯ СТАТИСТИКА");
    print("Всего студентов создано: ${Student.totalStudents}");
    print("Всего курсов создано: ${Course.totalCourses}");
    print("==============================");
  }
}