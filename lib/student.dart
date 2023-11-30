class Student {
  String? name;
  int? age;
  String? grade;

  Student(this.name, this.age, this.grade);

  String printStudentDetails() {
    return "Student Details: $name, Age: $age, Grade: $grade";
  }
}