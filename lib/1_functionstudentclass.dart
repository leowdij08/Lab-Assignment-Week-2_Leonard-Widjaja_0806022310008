class Student {
  String name;
  int studentID;
  double grade;

  Student(this.name, this.studentID, this.grade);

  void displayInfo() {
    print('Nama: $name, ID: $studentID, Nilai: $grade');
  }

  bool passes() {
    return grade >= 70;
  }
}
