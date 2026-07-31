enum Subject { math, english, physics, history }

class Person {
  String fullName;
  int age;
  bool isMarried;

  Person(this.fullName, this.age, this.isMarried);

  void introduce() {
    print(
      'Hi! My name is $fullName. I am $age years old. Married: ${isMarried ? 'Yes' : 'No'}',
    );
  }
}

class Student extends Person {
  Map<Subject, double> marks;

  Student(super.fullName, super.age, super.isMarried, this.marks);

  void showMarks() {
    print('Student: $fullName');
    for (var entry in marks.entries) {
      print('${entry.key.name}: ${entry.value}');
    }
  }

  double calculateAverage() {
    double sum = 0;
    for (var entry in marks.entries) {
      sum = sum + entry.value;
    }
    return sum / marks.length;
  }

  @override
  void introduce() {
    super.introduce();
    print('Average mark: ${calculateAverage()}');
  }
}

class Teacher extends Person {
  int experience;
  static double _baseSalary = 50000;

  Teacher(super.fullName, super.age, super.isMarried, this.experience);

  double calculateSalary() {
    double salary = _baseSalary;

    if (experience > 3) {
      for (int i = 3; i < experience; i++) {
        salary = salary + (salary * 0.05);
      }
    }

    if (isMarried) {
      salary = salary + 5000;
    }
    return salary;
  }

  @override
  void introduce() {
    super.introduce();
    print('Experience: $experience years.');
    print('Salary: ${calculateSalary()}');
  }
}
