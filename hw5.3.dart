import 'hw5.dart';
import 'hw5.1.dart';
import 'hw5.2.dart';
void main() {
  University myUni = University();
  Student st1 = Student(1, "Алексей", 20, 85.5);
  Student st2 = Student.excellent(2, "Мария", 19);
  Student st3 = Student(3, "Иван", 18, 100.0);
  st1.name = "Алексей";
  st1.age = 20;
  st2.name = "Мария";
  st2.age = 19;
  st3.name = "Иван";
  st3.age = 18; 

  Course c1 = Course(101, "Dart & Flutter", "Профессор Смит", 25);
  Course c2 = Course.defaultCourse();
  Course c3 = Course (103, "архитектура компьютера", "Профессор Джонсон", 40);

  myUni.addStudent(st1);
  myUni.addStudent(st2);
  myUni.addStudent(st3);
  myUni.addCourse(c1);
  myUni.addCourse(c2);
  myUni.addCourse(c3);

  st1.enrollToCourse(c1.title);
  st2.enrollToCourse(c2.title);
  st3.enrollToCourse(c3.title);

  st1.updateGrade(105);

  myUni.showAllStudents();
  myUni.showAllCourses();

  University.showGlobalStats();
}