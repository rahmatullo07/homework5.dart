class Student {
  int id;
  String name;
  int _age;
  double _grade;
  List<String> courses = [];

  static int totalStudents = 0;

  Student(this.id, this.name, int age, double grade)
      : _age = age >= 0 ? age : 0,
        _grade = (grade >= 0 && grade <= 100) ? grade : 0 {
    totalStudents++;
  }

  Student.empty()
      : id = 0,
        name = "Unknown",
        _age = 18,
        _grade = 0.0 {
    totalStudents++;
  }

  Student.excellent(this.id, this.name, int age)
      : _age = age,
        _grade = 100.0 {
    totalStudents++;
  }

  int get age => _age;
  set age(int value) {
    if (value >= 0) {
      _age = value;
    } else {
      print(18);
    }
  }

  double get grade => _grade;
  set grade(double value) {
    if (value >= 0 && value <= 100) {
      _grade = value;
    } else {
      print("3 $value)");
    }
  }

  void showInfo() {
    print("Студент [ID: $id]: $name, Возраст: $_age, Оценка: $_grade");
    print("Курсы: ${courses.isEmpty ? 'Нет записей' : courses.join(', ')}");
  }

  void enrollToCourse(String courseName) {
    courses.add(courseName);
  }

  bool isAdult() => _age >= 18;

  void updateGrade(double newGrade) {
    this.grade = newGrade;
  }
}