import 'hw_006.dart';

void main() {
  Person info = Person('Alice Johnson', 30, true);
  info.introduce();

  Map<Subject, double> marks = {
    Subject.math: 90,
    Subject.physics: 85,
    Subject.english: 92,
  };

  Student student = Student('Adam White', 20, true, marks);

  student.showMarks();
  student.introduce();

  Teacher teacher = Teacher('John Brown', 40, true, 10);

  teacher.introduce();

  Teacher teacher1 = Teacher('Matt DuPont', 35, true, 15);
  teacher1.introduce();

  print('--------------------');

  Map<Subject, double> marks1 = {
    Subject.english: 70,
    Subject.history: 85,
    Subject.physics: 90,
  };

  Student student1 = Student('Josh Miles', 22, false, marks1);
  student1.introduce();
  student1.showMarks();

  print('--------------------');

  Map<Subject, double> marks2 = {
    Subject.english: 90,
    Subject.history: 97,
    Subject.physics: 89,
  };
  Student student2 = Student('Josh Miles', 22, false, marks2);
  student1.introduce();
  student1.showMarks();
}
